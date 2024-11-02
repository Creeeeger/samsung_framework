.class public final Lcom/android/wm/shell/shortcut/ShortcutLeftKeyLaunchPolicy;
.super Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final handleShortCutKeys(Landroid/view/KeyEvent;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;->mShortcutController:Lcom/android/wm/shell/shortcut/ShortcutController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_7

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne p1, v1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mSplitScreenController:Ljava/util/Optional;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->toggleSplitScreen(I)V

    .line 27
    .line 28
    .line 29
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_KEYBOARD_SHORTCUT_SA_LOGGING:Z

    .line 30
    .line 31
    if-eqz p1, :cond_7

    .line 32
    .line 33
    iget-boolean p0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mIsNewDexMode:Z

    .line 34
    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    :cond_0
    const-string p0, "1000"

    .line 39
    .line 40
    const-string p1, "From Keyboard shortcut"

    .line 41
    .line 42
    invoke-static {p0, p1, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 v0, 0x5

    .line 51
    if-ne p1, v0, :cond_7

    .line 52
    .line 53
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 54
    .line 55
    const/16 v0, 0x8

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/shortcut/ShortcutController;->moveFreeformToSplit(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iget-object v2, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 79
    .line 80
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/4 v2, 0x0

    .line 85
    if-nez p1, :cond_4

    .line 86
    .line 87
    const-string p1, "ShortcutController"

    .line 88
    .line 89
    const-string v1, "Failed to get new DisplayLayout."

    .line 90
    .line 91
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 96
    .line 97
    iget p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 98
    .line 99
    if-le v3, p1, :cond_5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    move v1, v2

    .line 103
    :goto_1
    move v2, v1

    .line 104
    :goto_2
    if-eqz v2, :cond_6

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/shortcut/ShortcutController;->moveFreeformToSplit(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    const/16 p1, 0x10

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/shortcut/ShortcutController;->moveFreeformToSplit(I)V

    .line 113
    .line 114
    .line 115
    :cond_7
    :goto_3
    return-void
.end method
