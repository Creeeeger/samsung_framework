.class public final Lcom/android/wm/shell/common/split/DividerPanel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public mAddToAppPairDialog:Landroid/app/AlertDialog;

.field public mAppPairShortcutController:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

.field public mCallbacks:Lcom/android/wm/shell/common/split/DividerPanel$DividerPanelCallbacks;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;

.field public final mDismissReceiver:Lcom/android/wm/shell/common/split/DividerPanel$1;

.field public final mH:Lcom/android/wm/shell/common/split/DividerPanel$H;

.field public mIsLongPressOrHover:Z

.field public final mIsSystemUser:Z

.field public final mRemoveRunnable:Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda0;

.field public mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

.field public mView:Lcom/android/wm/shell/common/split/DividerPanelView;

.field public final mWindowManager:Lcom/android/wm/shell/common/split/DividerPanelWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsLongPressOrHover:Z

    .line 6
    .line 7
    new-instance v1, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerPanel;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mRemoveRunnable:Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 15
    .line 16
    const v2, 0x10302e3

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 29
    .line 30
    new-instance v1, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mWindowManager:Lcom/android/wm/shell/common/split/DividerPanelWindowManager;

    .line 36
    .line 37
    new-instance v6, Lcom/android/wm/shell/common/split/DividerPanel$H;

    .line 38
    .line 39
    invoke-direct {v6, p0, v0}, Lcom/android/wm/shell/common/split/DividerPanel$H;-><init>(Lcom/android/wm/shell/common/split/DividerPanel;I)V

    .line 40
    .line 41
    .line 42
    iput-object v6, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mH:Lcom/android/wm/shell/common/split/DividerPanel$H;

    .line 43
    .line 44
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsSystemUser:Z

    .line 52
    .line 53
    new-instance v3, Lcom/android/wm/shell/common/split/DividerPanel$1;

    .line 54
    .line 55
    invoke-direct {v3, p0}, Lcom/android/wm/shell/common/split/DividerPanel$1;-><init>(Lcom/android/wm/shell/common/split/DividerPanel;)V

    .line 56
    .line 57
    .line 58
    iput-object v3, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mDismissReceiver:Lcom/android/wm/shell/common/split/DividerPanel$1;

    .line 59
    .line 60
    new-instance v4, Landroid/content/IntentFilter;

    .line 61
    .line 62
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string p0, "android.intent.action.USER_SWITCHED"

    .line 66
    .line 67
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string p0, "android.intent.action.SCREEN_OFF"

    .line 71
    .line 72
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string p0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 76
    .line 77
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    const/4 v7, 0x2

    .line 82
    move-object v2, p1

    .line 83
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final isAddToEdgeEnable()Z
    .locals 9

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->ONE_UI_5_1_1:Z

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const-string v4, "edge_enable"

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, v4, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, v2, :cond_0

    .line 21
    .line 22
    :goto_0
    move v0, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move v0, v3

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ne v0, v2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_1
    const-string v4, "DividerPanel"

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    const-string p0, "Edge disable"

    .line 44
    .line 45
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return v3

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v5, "cocktail_bar_enabled_cocktails"

    .line 56
    .line 57
    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getEdgePanelProviderName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    const-string v6, ";"

    .line 68
    .line 69
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    array-length v6, v0

    .line 74
    move v7, v3

    .line 75
    :goto_2
    if-ge v7, v6, :cond_4

    .line 76
    .line 77
    aget-object v8, v0, v7

    .line 78
    .line 79
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_3

    .line 84
    .line 85
    move v0, v2

    .line 86
    goto :goto_3

    .line 87
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    move v0, v3

    .line 91
    :goto_3
    if-nez v0, :cond_5

    .line 92
    .line 93
    const-string p0, "AppsEdge disable"

    .line 94
    .line 95
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    return v3

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v5, "easy_mode_switch"

    .line 106
    .line 107
    invoke-static {v0, v5, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_6

    .line 112
    .line 113
    move v0, v2

    .line 114
    goto :goto_4

    .line 115
    :cond_6
    move v0, v3

    .line 116
    :goto_4
    if-eqz v0, :cond_7

    .line 117
    .line 118
    const-string p0, "EasyMode on"

    .line 119
    .line 120
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    return v3

    .line 124
    :cond_7
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsSystemUser:Z

    .line 125
    .line 126
    if-nez v0, :cond_8

    .line 127
    .line 128
    const-string p0, "Not system user"

    .line 129
    .line 130
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    return v3

    .line 134
    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 145
    .line 146
    const/4 v5, 0x2

    .line 147
    if-ne v0, v5, :cond_b

    .line 148
    .line 149
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_a

    .line 154
    .line 155
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 156
    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    if-nez p0, :cond_9

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_9
    const-string p0, "Is not tablet, or is foldable device, but is in sub-display."

    .line 169
    .line 170
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    return v3

    .line 174
    :cond_a
    :goto_5
    return v2

    .line 175
    :cond_b
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR_FOLDING_POLICY:Z

    .line 176
    .line 177
    if-eqz v0, :cond_f

    .line 178
    .line 179
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const-string v6, "edge_show_screen"

    .line 186
    .line 187
    invoke-static {v0, v6, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 192
    .line 193
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    if-eqz v0, :cond_d

    .line 198
    .line 199
    if-eq v0, v2, :cond_c

    .line 200
    .line 201
    if-eq v0, v5, :cond_e

    .line 202
    .line 203
    move p0, v3

    .line 204
    goto :goto_6

    .line 205
    :cond_c
    xor-int/lit8 p0, p0, 0x1

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_d
    move p0, v2

    .line 209
    :cond_e
    :goto_6
    if-nez p0, :cond_f

    .line 210
    .line 211
    const-string p0, "Invalid edge show screen"

    .line 212
    .line 213
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    return v3

    .line 217
    :cond_f
    return v2
.end method

.method public final isAddToTaskBarEnable()Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_TASKBAR"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 12
    .line 13
    const-string/jumbo v2, "sem_task_bar_available"

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    move v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v3

    .line 27
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const-string/jumbo v4, "supportTaskBar: "

    .line 34
    .line 35
    .line 36
    const-string v5, "hasTaskBar: "

    .line 37
    .line 38
    const-string v6, " inSubDisplay: "

    .line 39
    .line 40
    invoke-static {v4, v0, v5, v1, v6}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "DividerPanel"

    .line 52
    .line 53
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    if-nez p0, :cond_1

    .line 61
    .line 62
    move v3, v2

    .line 63
    :cond_1
    return v3
.end method

.method public final isSupportPanelOpenPolicy()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 4
    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 25
    .line 26
    :cond_1
    const-string p0, "com.samsung.android.app.taskedge"

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    :cond_2
    if-eqz v1, :cond_4

    .line 47
    .line 48
    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_4

    .line 63
    .line 64
    :cond_3
    const/4 p0, 0x0

    .line 65
    return p0

    .line 66
    :cond_4
    const/4 p0, 0x1

    .line 67
    return p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0x7f0a08ea

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->rotateMultiSplitWithTransition()Z

    .line 18
    .line 19
    .line 20
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_DIVIDER_SA_LOGGING:Z

    .line 21
    .line 22
    if-eqz p1, :cond_6

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const-string p1, "Horizontal split -> Vertical split"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p1, "Vertical split -> Horizontal split"

    .line 36
    .line 37
    :goto_0
    const-string v0, "1032"

    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const v2, 0x7f0a0b91

    .line 49
    .line 50
    .line 51
    if-ne v1, v2, :cond_2

    .line 52
    .line 53
    if-eqz v0, :cond_6

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->swapTasksInSplitScreenMode$1()V

    .line 56
    .line 57
    .line 58
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_DIVIDER_SA_LOGGING:Z

    .line 59
    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    const-string p1, "1033"

    .line 63
    .line 64
    invoke-static {p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const v0, 0x7f0a00a4

    .line 74
    .line 75
    .line 76
    if-ne p1, v0, :cond_6

    .line 77
    .line 78
    new-instance p1, Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerPanel;->isAddToTaskBarEnable()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const v2, 0x7f131127

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isDefaultLauncher(Landroid/content/Context;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    const/4 v0, 0x1

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const v2, 0x7f1306f4

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerPanel;->isAddToEdgeEnable()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    const/4 v0, 0x2

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const v2, 0x7f13019e

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 168
    .line 169
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    const v1, 0x7f13016e

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    new-array v2, v2, [Ljava/lang/String;

    .line 187
    .line 188
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, [Ljava/lang/CharSequence;

    .line 193
    .line 194
    new-instance v2, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda2;

    .line 195
    .line 196
    invoke-direct {v2, p0, p1}, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/common/split/DividerPanel;Landroid/util/ArrayMap;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mAddToAppPairDialog:Landroid/app/AlertDialog;

    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const/16 v0, 0x7d8

    .line 213
    .line 214
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mAddToAppPairDialog:Landroid/app/AlertDialog;

    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    const/16 v0, 0x50

    .line 224
    .line 225
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 226
    .line 227
    .line 228
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mAddToAppPairDialog:Landroid/app/AlertDialog;

    .line 229
    .line 230
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 231
    .line 232
    .line 233
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_APP_PAIR_SA_LOGGING:Z

    .line 234
    .line 235
    if-eqz p1, :cond_6

    .line 236
    .line 237
    const-string p1, "1036"

    .line 238
    .line 239
    invoke-static {p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_6
    :goto_1
    iput-boolean v3, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsLongPressOrHover:Z

    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerPanel;->removeDividerPanel()V

    .line 245
    .line 246
    .line 247
    return-void
.end method

.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 p2, 0x9

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eq p1, p2, :cond_1

    .line 9
    .line 10
    const/16 p2, 0xa

    .line 11
    .line 12
    if-eq p1, p2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsLongPressOrHover:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerPanel;->scheduleRemoveDividerPanel()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsLongPressOrHover:Z

    .line 23
    .line 24
    :goto_0
    return v0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsLongPressOrHover:Z

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    const/4 v0, 0x0

    .line 7
    if-eq p1, p2, :cond_0

    .line 8
    .line 9
    const/4 p2, 0x3

    .line 10
    if-eq p1, p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsLongPressOrHover:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerPanel;->scheduleRemoveDividerPanel()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return v0
.end method

.method public final removeDividerPanel()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsLongPressOrHover:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mWindowManager:Lcom/android/wm/shell/common/split/DividerPanelWindowManager;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mView:Landroid/view/View;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v3, "remove, mView="

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, v0, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mView:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v3, "DividerPanelWindowManager"

    .line 31
    .line 32
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mWm:Landroid/view/WindowManager;

    .line 36
    .line 37
    iget-object v3, v0, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mView:Landroid/view/View;

    .line 38
    .line 39
    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    iput-object v2, v0, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mView:Landroid/view/View;

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mCallbacks:Lcom/android/wm/shell/common/split/DividerPanel$DividerPanelCallbacks;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    check-cast v0, Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 49
    .line 50
    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mShowingFirstAutoOpenDividerPanel:Z

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    iput-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsFirstAutoOpenDividerPanel:Z

    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mPref:Landroid/content/SharedPreferences;

    .line 58
    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v3, "divider_panel_first_auto_open"

    .line 64
    .line 65
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    .line 70
    .line 71
    const-string v0, "SplitWindowManager"

    .line 72
    .line 73
    const-string v1, "Exit DividerPanel first auto open"

    .line 74
    .line 75
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_2
    iput-object v2, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mCallbacks:Lcom/android/wm/shell/common/split/DividerPanel$DividerPanelCallbacks;

    .line 79
    .line 80
    return-void
.end method

.method public final scheduleRemoveDividerPanel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mH:Lcom/android/wm/shell/common/split/DividerPanel$H;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mRemoveRunnable:Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mH:Lcom/android/wm/shell/common/split/DividerPanel$H;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mRemoveRunnable:Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const-wide/16 v1, 0xbb8

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final updateDividerPanel()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/split/DividerPanel;->removeDividerPanel()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const v2, 0x7f0d00d2

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/wm/shell/common/split/DividerPanelView;

    .line 21
    .line 22
    iput-object v1, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mView:Lcom/android/wm/shell/common/split/DividerPanelView;

    .line 23
    .line 24
    new-instance v2, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda1;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/split/DividerPanel;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mView:Lcom/android/wm/shell/common/split/DividerPanelView;

    .line 33
    .line 34
    const v2, 0x7f0a08ea

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 42
    .line 43
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mView:Lcom/android/wm/shell/common/split/DividerPanelView;

    .line 44
    .line 45
    const v4, 0x7f0a0b91

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    .line 53
    .line 54
    iget-object v4, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mView:Lcom/android/wm/shell/common/split/DividerPanelView;

    .line 55
    .line 56
    const v5, 0x7f0a00a4

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 99
    .line 100
    .line 101
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 102
    .line 103
    const/4 v2, 0x1

    .line 104
    const/4 v4, 0x0

    .line 105
    if-eqz v1, :cond_0

    .line 106
    .line 107
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 127
    .line 128
    if-ne v1, v2, :cond_1

    .line 129
    .line 130
    :goto_0
    move v1, v2

    .line 131
    goto :goto_1

    .line 132
    :cond_1
    move v1, v4

    .line 133
    :goto_1
    iget-object v5, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 134
    .line 135
    iget-object v5, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 136
    .line 137
    const-string v6, "DividerPanel"

    .line 138
    .line 139
    if-nez v5, :cond_2

    .line 140
    .line 141
    const-string v0, "addDividerPanel, failed. StageCoordinator is null"

    .line 142
    .line 143
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1d

    .line 147
    .line 148
    :cond_2
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitCreateMode()I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    iget-object v8, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mView:Lcom/android/wm/shell/common/split/DividerPanelView;

    .line 153
    .line 154
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 159
    .line 160
    const/4 v10, 0x4

    .line 161
    const/4 v11, 0x5

    .line 162
    const/4 v12, 0x3

    .line 163
    const/4 v13, 0x2

    .line 164
    if-nez v9, :cond_3

    .line 165
    .line 166
    move v9, v4

    .line 167
    goto :goto_6

    .line 168
    :cond_3
    if-eq v7, v13, :cond_6

    .line 169
    .line 170
    if-eq v7, v12, :cond_9

    .line 171
    .line 172
    if-eq v7, v10, :cond_5

    .line 173
    .line 174
    if-eq v7, v11, :cond_4

    .line 175
    .line 176
    const/4 v10, -0x1

    .line 177
    goto :goto_3

    .line 178
    :cond_4
    move v10, v13

    .line 179
    goto :goto_3

    .line 180
    :cond_5
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 181
    .line 182
    if-eqz v9, :cond_7

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_6
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 186
    .line 187
    if-eqz v9, :cond_8

    .line 188
    .line 189
    :cond_7
    move v10, v12

    .line 190
    goto :goto_3

    .line 191
    :cond_8
    :goto_2
    move v10, v11

    .line 192
    :cond_9
    :goto_3
    if-eq v10, v12, :cond_b

    .line 193
    .line 194
    if-ne v10, v11, :cond_a

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_a
    move v9, v4

    .line 198
    goto :goto_5

    .line 199
    :cond_b
    :goto_4
    move v9, v2

    .line 200
    :goto_5
    iget-object v10, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 201
    .line 202
    invoke-virtual {v10, v9}, Lcom/android/wm/shell/common/split/SplitLayout;->isSplitScreenFeasible(Z)Z

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    :goto_6
    iget-object v10, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 207
    .line 208
    iget-object v10, v10, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 209
    .line 210
    if-eqz v10, :cond_c

    .line 211
    .line 212
    iget-boolean v10, v10, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerVisible:Z

    .line 213
    .line 214
    if-nez v10, :cond_c

    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_c
    move v2, v4

    .line 218
    :goto_7
    iget-object v10, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mAppPairShortcutController:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

    .line 219
    .line 220
    iget-object v11, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 221
    .line 222
    iget-object v10, v10, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 223
    .line 224
    iget-object v12, v10, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    .line 225
    .line 226
    const-string v13, "AppPairShortcutController"

    .line 227
    .line 228
    if-eqz v12, :cond_20

    .line 229
    .line 230
    iget-object v14, v10, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    .line 231
    .line 232
    if-nez v14, :cond_d

    .line 233
    .line 234
    goto/16 :goto_10

    .line 235
    .line 236
    :cond_d
    iget-object v14, v10, Lcom/android/wm/shell/common/split/SplitLayout;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 237
    .line 238
    invoke-virtual {v14, v12, v3}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v12

    .line 242
    iget-object v15, v10, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    .line 243
    .line 244
    invoke-virtual {v14, v15, v3}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v15

    .line 248
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    .line 249
    .line 250
    if-eqz v16, :cond_e

    .line 251
    .line 252
    iget-object v10, v10, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken3:Landroid/window/WindowContainerToken;

    .line 253
    .line 254
    if-eqz v10, :cond_e

    .line 255
    .line 256
    invoke-virtual {v14, v10, v3}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    :cond_e
    if-eqz v12, :cond_1f

    .line 261
    .line 262
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result v10

    .line 266
    if-nez v10, :cond_1f

    .line 267
    .line 268
    if-eqz v15, :cond_1f

    .line 269
    .line 270
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 271
    .line 272
    .line 273
    move-result v10

    .line 274
    if-eqz v10, :cond_f

    .line 275
    .line 276
    goto/16 :goto_f

    .line 277
    .line 278
    :cond_f
    new-instance v10, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v12

    .line 287
    check-cast v12, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 288
    .line 289
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v12

    .line 296
    check-cast v12, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 297
    .line 298
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    .line 302
    .line 303
    if-eqz v12, :cond_10

    .line 304
    .line 305
    if-eqz v3, :cond_10

    .line 306
    .line 307
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v12

    .line 311
    if-nez v12, :cond_10

    .line 312
    .line 313
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 318
    .line 319
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    :cond_10
    new-instance v3, Ljava/util/HashMap;

    .line 323
    .line 324
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 332
    .line 333
    .line 334
    move-result v12

    .line 335
    const-string v14, "componentName is null"

    .line 336
    .line 337
    if-eqz v12, :cond_17

    .line 338
    .line 339
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v12

    .line 343
    check-cast v12, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 344
    .line 345
    iget-object v15, v12, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 346
    .line 347
    if-nez v15, :cond_11

    .line 348
    .line 349
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    goto :goto_a

    .line 353
    :cond_11
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v15

    .line 357
    move-object/from16 v16, v4

    .line 358
    .line 359
    iget v4, v12, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 360
    .line 361
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    check-cast v4, Ljava/util/HashSet;

    .line 370
    .line 371
    if-nez v4, :cond_12

    .line 372
    .line 373
    new-instance v4, Ljava/util/HashSet;

    .line 374
    .line 375
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 376
    .line 377
    .line 378
    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 379
    .line 380
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object v12

    .line 384
    invoke-virtual {v3, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    :cond_12
    invoke-virtual {v4, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v12

    .line 391
    if-eqz v12, :cond_16

    .line 392
    .line 393
    invoke-static {v11, v15}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isSingleInstancePerTask(Landroid/content/Context;Ljava/lang/String;)Z

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    if-eqz v3, :cond_13

    .line 398
    .line 399
    goto :goto_b

    .line 400
    :cond_13
    :try_start_0
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    const/16 v4, 0x80

    .line 405
    .line 406
    invoke-virtual {v3, v15, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 407
    .line 408
    .line 409
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    if-eqz v3, :cond_15

    .line 411
    .line 412
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 413
    .line 414
    if-nez v3, :cond_14

    .line 415
    .line 416
    goto :goto_9

    .line 417
    :cond_14
    const-string v4, "com.samsung.android.multiwindow.support.pair.shortcut"

    .line 418
    .line 419
    const/4 v11, 0x0

    .line 420
    invoke-virtual {v3, v4, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    goto :goto_c

    .line 425
    :cond_15
    :goto_9
    const-string v3, "[Divider AppPair] appInfo or appInfo.metaData is null="

    .line 426
    .line 427
    invoke-static {v3, v15, v13}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    goto :goto_a

    .line 431
    :catch_0
    const-string v3, "[Divider AppPair] No such package="

    .line 432
    .line 433
    invoke-static {v3, v15, v13}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    :goto_a
    const/4 v3, 0x0

    .line 437
    goto :goto_c

    .line 438
    :cond_16
    invoke-virtual {v4, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-object/from16 v4, v16

    .line 442
    .line 443
    goto :goto_8

    .line 444
    :cond_17
    :goto_b
    const/4 v3, 0x1

    .line 445
    :goto_c
    if-nez v3, :cond_18

    .line 446
    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    const-string v4, "[isSupportAppPairPolicy] isSupportAppPairForMultiInstance returns false. "

    .line 450
    .line 451
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .line 463
    .line 464
    goto/16 :goto_11

    .line 465
    .line 466
    :cond_18
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    if-eqz v4, :cond_1d

    .line 475
    .line 476
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 481
    .line 482
    iget-object v11, v4, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 483
    .line 484
    if-nez v11, :cond_1a

    .line 485
    .line 486
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .line 488
    .line 489
    goto :goto_d

    .line 490
    :cond_1a
    iget-object v12, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 491
    .line 492
    if-eqz v12, :cond_1b

    .line 493
    .line 494
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 495
    .line 496
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 497
    .line 498
    const/16 v15, 0x3e9

    .line 499
    .line 500
    if-ne v12, v15, :cond_1b

    .line 501
    .line 502
    goto :goto_d

    .line 503
    :cond_1b
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v11

    .line 507
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 508
    .line 509
    invoke-static {v11, v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getLaunchIntentForPackageAsUser(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    .line 511
    .line 512
    move-result-object v12

    .line 513
    if-eqz v12, :cond_1c

    .line 514
    .line 515
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 516
    .line 517
    .line 518
    move-result-object v12

    .line 519
    if-nez v12, :cond_19

    .line 520
    .line 521
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    const-string v12, "getLaunchIntentForPackageAsUser is null or empty component ("

    .line 524
    .line 525
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    const-string v11, ","

    .line 532
    .line 533
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    const-string v4, ")"

    .line 540
    .line 541
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    invoke-static {v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .line 550
    .line 551
    :goto_d
    const/4 v3, 0x0

    .line 552
    goto :goto_e

    .line 553
    :cond_1d
    const/4 v3, 0x1

    .line 554
    :goto_e
    if-nez v3, :cond_1e

    .line 555
    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    const-string v4, "[isSupportAppPairPolicy] isSupportAppPairType returns false. "

    .line 559
    .line 560
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    goto :goto_11

    .line 574
    :cond_1e
    const/4 v3, 0x1

    .line 575
    goto :goto_12

    .line 576
    :cond_1f
    :goto_f
    const-string v3, "[isSupportAppPairPolicy] getChildTasks() is null or empty"

    .line 577
    .line 578
    invoke-static {v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    goto :goto_11

    .line 582
    :cond_20
    :goto_10
    const-string v3, "isSupportAppPairPolicy: Can\'t find topActivity there is null"

    .line 583
    .line 584
    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    .line 586
    .line 587
    :goto_11
    const/4 v3, 0x0

    .line 588
    :goto_12
    if-eqz v3, :cond_22

    .line 589
    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/split/DividerPanel;->isAddToTaskBarEnable()Z

    .line 591
    .line 592
    .line 593
    move-result v3

    .line 594
    if-nez v3, :cond_21

    .line 595
    .line 596
    iget-object v3, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 597
    .line 598
    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isDefaultLauncher(Landroid/content/Context;)Z

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    if-nez v3, :cond_21

    .line 603
    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/split/DividerPanel;->isAddToEdgeEnable()Z

    .line 605
    .line 606
    .line 607
    move-result v3

    .line 608
    if-eqz v3, :cond_22

    .line 609
    .line 610
    :cond_21
    const/4 v3, 0x1

    .line 611
    goto :goto_13

    .line 612
    :cond_22
    const/4 v3, 0x0

    .line 613
    :goto_13
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER:Z

    .line 617
    .line 618
    const/16 v10, 0x32

    .line 619
    .line 620
    if-eqz v4, :cond_29

    .line 621
    .line 622
    if-eqz v9, :cond_29

    .line 623
    .line 624
    iget-object v4, v8, Lcom/android/wm/shell/common/split/DividerPanelView;->mRotatingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 625
    .line 626
    const/4 v11, 0x0

    .line 627
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 628
    .line 629
    .line 630
    if-eqz v5, :cond_26

    .line 631
    .line 632
    const/4 v4, 0x4

    .line 633
    if-ne v7, v4, :cond_23

    .line 634
    .line 635
    const/16 v4, 0x64

    .line 636
    .line 637
    goto :goto_14

    .line 638
    :cond_23
    const/4 v4, 0x5

    .line 639
    if-ne v7, v4, :cond_24

    .line 640
    .line 641
    const/16 v4, 0x96

    .line 642
    .line 643
    goto :goto_14

    .line 644
    :cond_24
    const/4 v4, 0x2

    .line 645
    if-ne v7, v4, :cond_25

    .line 646
    .line 647
    const/16 v4, 0xc8

    .line 648
    .line 649
    goto :goto_14

    .line 650
    :cond_25
    const/4 v4, 0x3

    .line 651
    if-ne v7, v4, :cond_27

    .line 652
    .line 653
    const/16 v4, 0xfa

    .line 654
    .line 655
    goto :goto_14

    .line 656
    :cond_26
    if-eqz v1, :cond_27

    .line 657
    .line 658
    move v4, v10

    .line 659
    goto :goto_14

    .line 660
    :cond_27
    const/4 v4, 0x0

    .line 661
    :goto_14
    add-int/lit8 v5, v4, 0x1e

    .line 662
    .line 663
    iget-object v7, v8, Lcom/android/wm/shell/common/split/DividerPanelView;->mRotatingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 664
    .line 665
    iget-object v7, v7, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 666
    .line 667
    iget-object v11, v7, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 668
    .line 669
    if-nez v11, :cond_28

    .line 670
    .line 671
    iget-object v11, v7, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 672
    .line 673
    new-instance v12, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda6;

    .line 674
    .line 675
    const/4 v13, 0x1

    .line 676
    invoke-direct {v12, v7, v4, v13}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda6;-><init>(Lcom/airbnb/lottie/LottieDrawable;II)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    goto :goto_15

    .line 683
    :cond_28
    iget-object v7, v7, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 684
    .line 685
    int-to-float v4, v4

    .line 686
    iget v11, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 687
    .line 688
    float-to-int v11, v11

    .line 689
    int-to-float v11, v11

    .line 690
    invoke-virtual {v7, v4, v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 691
    .line 692
    .line 693
    :goto_15
    iget-object v4, v8, Lcom/android/wm/shell/common/split/DividerPanelView;->mRotatingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 694
    .line 695
    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 696
    .line 697
    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    .line 698
    .line 699
    .line 700
    :cond_29
    const/16 v4, 0x8

    .line 701
    .line 702
    if-eqz v2, :cond_2c

    .line 703
    .line 704
    if-eqz v1, :cond_2a

    .line 705
    .line 706
    goto :goto_16

    .line 707
    :cond_2a
    const/4 v10, 0x0

    .line 708
    :goto_16
    add-int/lit8 v5, v10, 0x21

    .line 709
    .line 710
    iget-object v7, v8, Lcom/android/wm/shell/common/split/DividerPanelView;->mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 711
    .line 712
    iget-object v7, v7, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 713
    .line 714
    iget-object v11, v7, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 715
    .line 716
    if-nez v11, :cond_2b

    .line 717
    .line 718
    iget-object v11, v7, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 719
    .line 720
    new-instance v12, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda6;

    .line 721
    .line 722
    const/4 v13, 0x1

    .line 723
    invoke-direct {v12, v7, v10, v13}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda6;-><init>(Lcom/airbnb/lottie/LottieDrawable;II)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    .line 728
    .line 729
    goto :goto_17

    .line 730
    :cond_2b
    iget-object v7, v7, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 731
    .line 732
    int-to-float v10, v10

    .line 733
    iget v11, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 734
    .line 735
    float-to-int v11, v11

    .line 736
    int-to-float v11, v11

    .line 737
    invoke-virtual {v7, v10, v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 738
    .line 739
    .line 740
    :goto_17
    iget-object v7, v8, Lcom/android/wm/shell/common/split/DividerPanelView;->mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 741
    .line 742
    iget-object v7, v7, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 743
    .line 744
    invoke-virtual {v7, v5}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    .line 745
    .line 746
    .line 747
    goto :goto_18

    .line 748
    :cond_2c
    iget-object v5, v8, Lcom/android/wm/shell/common/split/DividerPanelView;->mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 749
    .line 750
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 751
    .line 752
    .line 753
    :goto_18
    if-nez v3, :cond_2d

    .line 754
    .line 755
    iget-object v5, v8, Lcom/android/wm/shell/common/split/DividerPanelView;->mAddAppPairIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 756
    .line 757
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 758
    .line 759
    .line 760
    :cond_2d
    if-eqz v9, :cond_2e

    .line 761
    .line 762
    iget-object v4, v8, Lcom/android/wm/shell/common/split/DividerPanelView;->mRotatingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 763
    .line 764
    goto :goto_19

    .line 765
    :cond_2e
    if-eqz v2, :cond_2f

    .line 766
    .line 767
    iget-object v4, v8, Lcom/android/wm/shell/common/split/DividerPanelView;->mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 768
    .line 769
    goto :goto_19

    .line 770
    :cond_2f
    if-eqz v3, :cond_30

    .line 771
    .line 772
    iget-object v4, v8, Lcom/android/wm/shell/common/split/DividerPanelView;->mAddAppPairIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 773
    .line 774
    goto :goto_19

    .line 775
    :cond_30
    const/4 v4, 0x0

    .line 776
    :goto_19
    iget-object v5, v8, Lcom/android/wm/shell/common/split/DividerPanelView;->mHandler:Landroid/os/Handler;

    .line 777
    .line 778
    new-instance v7, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda3;

    .line 779
    .line 780
    invoke-direct {v7, v4}, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda3;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 781
    .line 782
    .line 783
    const-wide/16 v9, 0x96

    .line 784
    .line 785
    invoke-virtual {v5, v7, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 786
    .line 787
    .line 788
    iget-object v4, v8, Lcom/android/wm/shell/common/split/DividerPanelView;->mRotatingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 789
    .line 790
    new-instance v5, Lcom/android/wm/shell/common/split/DividerPanelView$1;

    .line 791
    .line 792
    invoke-direct {v5, v8, v2, v3}, Lcom/android/wm/shell/common/split/DividerPanelView$1;-><init>(Lcom/android/wm/shell/common/split/DividerPanelView;ZZ)V

    .line 793
    .line 794
    .line 795
    iget-object v2, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 796
    .line 797
    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 798
    .line 799
    invoke-virtual {v2, v5}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 800
    .line 801
    .line 802
    iget-object v2, v8, Lcom/android/wm/shell/common/split/DividerPanelView;->mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 803
    .line 804
    new-instance v4, Lcom/android/wm/shell/common/split/DividerPanelView$2;

    .line 805
    .line 806
    invoke-direct {v4, v8, v3}, Lcom/android/wm/shell/common/split/DividerPanelView$2;-><init>(Lcom/android/wm/shell/common/split/DividerPanelView;Z)V

    .line 807
    .line 808
    .line 809
    iget-object v2, v2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 810
    .line 811
    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 812
    .line 813
    invoke-virtual {v2, v4}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 814
    .line 815
    .line 816
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mView:Lcom/android/wm/shell/common/split/DividerPanelView;

    .line 817
    .line 818
    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerPanelView;->mContainer:Landroid/widget/LinearLayout;

    .line 819
    .line 820
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 821
    .line 822
    .line 823
    move-result v3

    .line 824
    const/4 v4, 0x0

    .line 825
    const/4 v5, 0x0

    .line 826
    :goto_1a
    if-ge v5, v3, :cond_32

    .line 827
    .line 828
    iget-object v7, v2, Lcom/android/wm/shell/common/split/DividerPanelView;->mContainer:Landroid/widget/LinearLayout;

    .line 829
    .line 830
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 831
    .line 832
    .line 833
    move-result-object v7

    .line 834
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 835
    .line 836
    .line 837
    move-result v7

    .line 838
    if-nez v7, :cond_31

    .line 839
    .line 840
    add-int/lit8 v4, v4, 0x1

    .line 841
    .line 842
    :cond_31
    add-int/lit8 v5, v5, 0x1

    .line 843
    .line 844
    goto :goto_1a

    .line 845
    :cond_32
    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    .line 846
    .line 847
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 848
    .line 849
    .line 850
    move-result-object v3

    .line 851
    const v5, 0x7f070952

    .line 852
    .line 853
    .line 854
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 855
    .line 856
    .line 857
    move-result v3

    .line 858
    iget-object v2, v2, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    .line 859
    .line 860
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 861
    .line 862
    .line 863
    move-result-object v2

    .line 864
    const v5, 0x7f070956

    .line 865
    .line 866
    .line 867
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 868
    .line 869
    .line 870
    move-result v2

    .line 871
    mul-int/lit8 v2, v2, 0x2

    .line 872
    .line 873
    mul-int/2addr v3, v4

    .line 874
    add-int/2addr v3, v2

    .line 875
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 876
    .line 877
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 878
    .line 879
    .line 880
    move-result-object v2

    .line 881
    const v4, 0x7f070955

    .line 882
    .line 883
    .line 884
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 885
    .line 886
    .line 887
    move-result v2

    .line 888
    iget-object v4, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mView:Lcom/android/wm/shell/common/split/DividerPanelView;

    .line 889
    .line 890
    new-instance v5, Lcom/android/wm/shell/common/split/DividerPanel$2;

    .line 891
    .line 892
    invoke-direct {v5, v0, v3, v2}, Lcom/android/wm/shell/common/split/DividerPanel$2;-><init>(Lcom/android/wm/shell/common/split/DividerPanel;II)V

    .line 893
    .line 894
    .line 895
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 896
    .line 897
    .line 898
    new-instance v4, Landroid/graphics/Rect;

    .line 899
    .line 900
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 901
    .line 902
    .line 903
    iget-object v5, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 904
    .line 905
    iget-object v7, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 906
    .line 907
    invoke-virtual {v5, v7}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    .line 908
    .line 909
    .line 910
    move-result-object v5

    .line 911
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 912
    .line 913
    .line 914
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 915
    .line 916
    if-eqz v7, :cond_33

    .line 917
    .line 918
    const/4 v7, 0x1

    .line 919
    invoke-virtual {v5, v4, v7}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 920
    .line 921
    .line 922
    goto :goto_1b

    .line 923
    :cond_33
    iget v7, v5, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 924
    .line 925
    iget v5, v5, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 926
    .line 927
    const/4 v8, 0x0

    .line 928
    invoke-virtual {v4, v8, v8, v7, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 929
    .line 930
    .line 931
    :goto_1b
    iget-object v5, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mWindowManager:Lcom/android/wm/shell/common/split/DividerPanelWindowManager;

    .line 932
    .line 933
    iget-object v13, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mView:Lcom/android/wm/shell/common/split/DividerPanelView;

    .line 934
    .line 935
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 936
    .line 937
    .line 938
    new-instance v14, Landroid/view/WindowManager$LayoutParams;

    .line 939
    .line 940
    const/16 v10, 0xa2b

    .line 941
    .line 942
    const v11, 0x40020

    .line 943
    .line 944
    .line 945
    const/4 v12, -0x3

    .line 946
    move-object v7, v14

    .line 947
    move v8, v3

    .line 948
    move v9, v2

    .line 949
    invoke-direct/range {v7 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 950
    .line 951
    .line 952
    iput-object v14, v5, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 953
    .line 954
    invoke-virtual {v14, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 955
    .line 956
    .line 957
    iget-object v6, v5, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 958
    .line 959
    const/4 v7, 0x1

    .line 960
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 961
    .line 962
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 963
    .line 964
    or-int/lit8 v7, v7, 0x50

    .line 965
    .line 966
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 967
    .line 968
    const v7, 0x7f1402d7

    .line 969
    .line 970
    .line 971
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 972
    .line 973
    const/16 v6, 0x700

    .line 974
    .line 975
    invoke-virtual {v13, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 976
    .line 977
    .line 978
    iget-object v6, v5, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 979
    .line 980
    invoke-virtual {v6}, Lcom/android/wm/shell/common/split/DividerView;->getCurrentPosition()I

    .line 981
    .line 982
    .line 983
    move-result v6

    .line 984
    iget-object v7, v5, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 985
    .line 986
    iget-object v8, v7, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 987
    .line 988
    iget v8, v8, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 989
    .line 990
    iget-object v9, v5, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 991
    .line 992
    const/16 v10, 0x33

    .line 993
    .line 994
    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 995
    .line 996
    if-eqz v1, :cond_34

    .line 997
    .line 998
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    .line 999
    .line 1000
    .line 1001
    move-result v1

    .line 1002
    iget-object v7, v5, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 1003
    .line 1004
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    .line 1005
    .line 1006
    .line 1007
    move-result v7

    .line 1008
    div-int/lit8 v7, v7, 0x2

    .line 1009
    .line 1010
    add-int/2addr v7, v1

    .line 1011
    iget-object v1, v5, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 1012
    .line 1013
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 1014
    .line 1015
    add-int/2addr v4, v7

    .line 1016
    div-int/lit8 v3, v3, 0x2

    .line 1017
    .line 1018
    sub-int/2addr v4, v3

    .line 1019
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1020
    .line 1021
    div-int/lit8 v2, v2, 0x2

    .line 1022
    .line 1023
    sub-int/2addr v6, v2

    .line 1024
    div-int/lit8 v8, v8, 0x2

    .line 1025
    .line 1026
    add-int/2addr v8, v6

    .line 1027
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1028
    .line 1029
    goto :goto_1c

    .line 1030
    :cond_34
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    .line 1031
    .line 1032
    .line 1033
    move-result v1

    .line 1034
    iget-object v7, v5, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 1035
    .line 1036
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    .line 1037
    .line 1038
    .line 1039
    move-result v7

    .line 1040
    div-int/lit8 v7, v7, 0x2

    .line 1041
    .line 1042
    add-int/2addr v7, v1

    .line 1043
    iget-object v1, v5, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 1044
    .line 1045
    div-int/lit8 v3, v3, 0x2

    .line 1046
    .line 1047
    sub-int/2addr v6, v3

    .line 1048
    div-int/lit8 v8, v8, 0x2

    .line 1049
    .line 1050
    add-int/2addr v8, v6

    .line 1051
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1052
    .line 1053
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 1054
    .line 1055
    add-int/2addr v3, v7

    .line 1056
    div-int/lit8 v2, v2, 0x2

    .line 1057
    .line 1058
    sub-int/2addr v3, v2

    .line 1059
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1060
    .line 1061
    :goto_1c
    iget-object v1, v5, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 1062
    .line 1063
    iget-object v2, v5, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mWm:Landroid/view/WindowManager;

    .line 1064
    .line 1065
    invoke-interface {v2, v13, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    .line 1067
    .line 1068
    iput-object v13, v5, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mView:Landroid/view/View;

    .line 1069
    .line 1070
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/split/DividerPanel;->scheduleRemoveDividerPanel()V

    .line 1071
    .line 1072
    .line 1073
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_DIVIDER_SA_LOGGING:Z

    .line 1074
    .line 1075
    if-eqz v0, :cond_35

    .line 1076
    .line 1077
    const-string v0, "1031"

    .line 1078
    .line 1079
    invoke-static {v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 1080
    .line 1081
    .line 1082
    :cond_35
    :goto_1d
    return-void
.end method
