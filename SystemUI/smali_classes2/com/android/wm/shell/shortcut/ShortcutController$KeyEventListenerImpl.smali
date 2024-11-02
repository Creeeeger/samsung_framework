.class public final Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;
.super Lcom/samsung/android/multiwindow/IKeyEventListener$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/shortcut/ShortcutController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;->this$0:Lcom/android/wm/shell/shortcut/ShortcutController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IKeyEventListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final sendShortcutKeyWithFocusedTask(ILandroid/view/KeyEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;->this$0:Lcom/android/wm/shell/shortcut/ShortcutController;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/shortcut/ShortcutController;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 4
    .line 5
    const-string v2, "ShortcutController"

    .line 6
    .line 7
    if-eqz v1, :cond_b

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/wm/shell/shortcut/ShortcutController;->mSplitScreenController:Ljava/util/Optional;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;->this$0:Lcom/android/wm/shell/shortcut/ShortcutController;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/wm/shell/shortcut/ShortcutController;->mSplitScreenController:Ljava/util/Optional;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object v1, v3

    .line 46
    :goto_0
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 53
    .line 54
    :cond_2
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    :cond_3
    if-eqz v3, :cond_5

    .line 63
    .line 64
    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    :cond_4
    const/4 v0, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_5
    const/4 v0, 0x0

    .line 73
    :goto_1
    if-eqz v0, :cond_6

    .line 74
    .line 75
    const-string/jumbo p0, "sendShortcutKeyWithFocusedTask: AppsEdge is running on top"

    .line 76
    .line 77
    .line 78
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;->this$0:Lcom/android/wm/shell/shortcut/ShortcutController;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/wm/shell/shortcut/ShortcutController;->mShortCutPolicyMap:Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;

    .line 95
    .line 96
    if-nez v0, :cond_7

    .line 97
    .line 98
    new-instance p0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string/jumbo p1, "sendShortcutKeyWithFocusedTask: Not found the policy : "

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_7
    iget-boolean v1, v0, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;->mSupportMultiSplitStatus:Z

    .line 118
    .line 119
    if-nez v1, :cond_8

    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;->this$0:Lcom/android/wm/shell/shortcut/ShortcutController;

    .line 122
    .line 123
    iget-object v1, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mSplitScreenController:Ljava/util/Optional;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMultiSplitScreenVisible()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_8

    .line 136
    .line 137
    const-string/jumbo p0, "sendShortcutKeyWithFocusedTask: The 3 split-mode is running"

    .line 138
    .line 139
    .line 140
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_8
    iget-object v1, p0, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;->this$0:Lcom/android/wm/shell/shortcut/ShortcutController;

    .line 145
    .line 146
    iget-object v1, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 147
    .line 148
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-nez p1, :cond_9

    .line 153
    .line 154
    const-string/jumbo p0, "sendShortcutKeyWithFocusedTask: There is no running task."

    .line 155
    .line 156
    .line 157
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_9
    iget-object p0, p0, Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;->this$0:Lcom/android/wm/shell/shortcut/ShortcutController;

    .line 162
    .line 163
    iput-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 164
    .line 165
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_KEYBOARD_SHORTCUT_SA_LOGGING:Z

    .line 166
    .line 167
    if-eqz v1, :cond_a

    .line 168
    .line 169
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX:Z

    .line 170
    .line 171
    if-eqz v1, :cond_a

    .line 172
    .line 173
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    iput-boolean p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mIsNewDexMode:Z

    .line 180
    .line 181
    :cond_a
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;->handleShortCutKeys(Landroid/view/KeyEvent;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_b
    :goto_2
    const-string/jumbo p0, "sendShortcutKeyWithFocusedTask: Not set up normally"

    .line 186
    .line 187
    .line 188
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    return-void
.end method
