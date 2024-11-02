.class public final Lcom/android/wm/shell/shortcut/ShortcutRightKeyLaunchPolicy;
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
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne p1, v2, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mSplitScreenController:Ljava/util/Optional;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->toggleSplitScreen(I)V

    .line 28
    .line 29
    .line 30
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_KEYBOARD_SHORTCUT_SA_LOGGING:Z

    .line 31
    .line 32
    if-eqz p1, :cond_7

    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mIsNewDexMode:Z

    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    :cond_0
    const-string p0, "1000"

    .line 40
    .line 41
    const-string p1, "From Keyboard shortcut"

    .line 42
    .line 43
    invoke-static {p0, p1, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/4 v0, 0x5

    .line 52
    if-ne p1, v0, :cond_7

    .line 53
    .line 54
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 55
    .line 56
    const/16 v0, 0x20

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/shortcut/ShortcutController;->moveFreeformToSplit(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iget-object v3, p0, Lcom/android/wm/shell/shortcut/ShortcutController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 80
    .line 81
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-nez p1, :cond_4

    .line 86
    .line 87
    const-string p1, "ShortcutController"

    .line 88
    .line 89
    const-string v2, "Failed to get new DisplayLayout."

    .line 90
    .line 91
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    goto :goto_1

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
    move v1, v2

    .line 102
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/shortcut/ShortcutController;->moveFreeformToSplit(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    const/16 p1, 0x40

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/shortcut/ShortcutController;->moveFreeformToSplit(I)V

    .line 111
    .line 112
    .line 113
    :cond_7
    :goto_2
    return-void
.end method
