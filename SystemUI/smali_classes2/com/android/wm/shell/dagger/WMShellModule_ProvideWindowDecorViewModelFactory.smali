.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final animExecutorProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final desktopModeControllerProvider:Ljavax/inject/Provider;

.field public final desktopTasksControllerProvider:Ljavax/inject/Provider;

.field public final dexCompatRestartDialogUtilsProvider:Ljavax/inject/Provider;

.field public final displayControllerProvider:Ljavax/inject/Provider;

.field public final displayInsetsControllerProvider:Ljavax/inject/Provider;

.field public final mainChoreographerProvider:Ljavax/inject/Provider;

.field public final mainHandlerProvider:Ljavax/inject/Provider;

.field public final nsControllerProvider:Ljavax/inject/Provider;

.field public final pipOptionalProvider:Ljavax/inject/Provider;

.field public final shellControllerProvider:Ljavax/inject/Provider;

.field public final splitScreenControllerProvider:Ljavax/inject/Provider;

.field public final syncQueueProvider:Ljavax/inject/Provider;

.field public final taskOrganizerProvider:Ljavax/inject/Provider;

.field public final transitionsProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->mainChoreographerProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->taskOrganizerProvider:Ljavax/inject/Provider;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->displayControllerProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->syncQueueProvider:Ljavax/inject/Provider;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->transitionsProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->desktopModeControllerProvider:Ljavax/inject/Provider;

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->desktopTasksControllerProvider:Ljavax/inject/Provider;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->splitScreenControllerProvider:Ljavax/inject/Provider;

    .line 34
    .line 35
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->animExecutorProvider:Ljavax/inject/Provider;

    .line 37
    .line 38
    move-object v1, p12

    .line 39
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->displayInsetsControllerProvider:Ljavax/inject/Provider;

    .line 40
    .line 41
    move-object v1, p13

    .line 42
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->pipOptionalProvider:Ljavax/inject/Provider;

    .line 43
    .line 44
    move-object/from16 v1, p14

    .line 45
    .line 46
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->nsControllerProvider:Ljavax/inject/Provider;

    .line 47
    .line 48
    move-object/from16 v1, p15

    .line 49
    .line 50
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->dexCompatRestartDialogUtilsProvider:Ljavax/inject/Provider;

    .line 51
    .line 52
    move-object/from16 v1, p16

    .line 53
    .line 54
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->shellControllerProvider:Ljavax/inject/Provider;

    .line 55
    .line 56
    return-void
.end method

.method public static provideWindowDecorViewModel(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;
    .locals 17

    .line 1
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isAnyEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_USE_DESKTOP_MODE_WINDOW_DECOR_VIEW_MODEL:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    move-object/from16 v2, p0

    .line 15
    .line 16
    move-object/from16 v3, p1

    .line 17
    .line 18
    move-object/from16 v4, p2

    .line 19
    .line 20
    move-object/from16 v5, p3

    .line 21
    .line 22
    move-object/from16 v6, p4

    .line 23
    .line 24
    move-object/from16 v7, p5

    .line 25
    .line 26
    move-object/from16 v8, p6

    .line 27
    .line 28
    move-object/from16 v9, p7

    .line 29
    .line 30
    move-object/from16 v10, p8

    .line 31
    .line 32
    move-object/from16 v11, p9

    .line 33
    .line 34
    invoke-direct/range {v1 .. v11}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    new-instance v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 43
    .line 44
    move-object v1, v0

    .line 45
    move-object/from16 v2, p0

    .line 46
    .line 47
    move-object/from16 v3, p1

    .line 48
    .line 49
    move-object/from16 v4, p2

    .line 50
    .line 51
    move-object/from16 v5, p3

    .line 52
    .line 53
    move-object/from16 v6, p4

    .line 54
    .line 55
    move-object/from16 v7, p5

    .line 56
    .line 57
    move-object/from16 v8, p10

    .line 58
    .line 59
    move-object/from16 v9, p9

    .line 60
    .line 61
    move-object/from16 v10, p11

    .line 62
    .line 63
    move-object/from16 v11, p12

    .line 64
    .line 65
    move-object/from16 v12, p13

    .line 66
    .line 67
    move-object/from16 v13, p7

    .line 68
    .line 69
    move-object/from16 v14, p14

    .line 70
    .line 71
    move-object/from16 v15, p6

    .line 72
    .line 73
    move-object/from16 v16, p15

    .line 74
    .line 75
    invoke-direct/range {v1 .. v16}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;Ljava/util/Optional;Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/sysui/ShellController;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    .line 80
    .line 81
    move-object/from16 p6, v0

    .line 82
    .line 83
    move-object/from16 p7, p0

    .line 84
    .line 85
    move-object/from16 p8, p1

    .line 86
    .line 87
    move-object/from16 p9, p2

    .line 88
    .line 89
    move-object/from16 p10, p3

    .line 90
    .line 91
    move-object/from16 p11, p4

    .line 92
    .line 93
    move-object/from16 p12, p5

    .line 94
    .line 95
    invoke-direct/range {p6 .. p12}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 4
    .line 5
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Landroid/content/Context;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v3, v1

    .line 19
    check-cast v3, Landroid/os/Handler;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->mainChoreographerProvider:Ljavax/inject/Provider;

    .line 22
    .line 23
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v4, v1

    .line 28
    check-cast v4, Landroid/view/Choreographer;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->taskOrganizerProvider:Ljavax/inject/Provider;

    .line 31
    .line 32
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v5, v1

    .line 37
    check-cast v5, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->displayControllerProvider:Ljavax/inject/Provider;

    .line 40
    .line 41
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    move-object v6, v1

    .line 46
    check-cast v6, Lcom/android/wm/shell/common/DisplayController;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->syncQueueProvider:Ljavax/inject/Provider;

    .line 49
    .line 50
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    move-object v7, v1

    .line 55
    check-cast v7, Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->transitionsProvider:Ljavax/inject/Provider;

    .line 58
    .line 59
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    move-object v8, v1

    .line 64
    check-cast v8, Lcom/android/wm/shell/transition/Transitions;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->desktopModeControllerProvider:Ljavax/inject/Provider;

    .line 67
    .line 68
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    move-object v9, v1

    .line 73
    check-cast v9, Ljava/util/Optional;

    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->desktopTasksControllerProvider:Ljavax/inject/Provider;

    .line 76
    .line 77
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object v10, v1

    .line 82
    check-cast v10, Ljava/util/Optional;

    .line 83
    .line 84
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->splitScreenControllerProvider:Ljavax/inject/Provider;

    .line 85
    .line 86
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    move-object v11, v1

    .line 91
    check-cast v11, Ljava/util/Optional;

    .line 92
    .line 93
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->animExecutorProvider:Ljavax/inject/Provider;

    .line 94
    .line 95
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    move-object v12, v1

    .line 100
    check-cast v12, Lcom/android/wm/shell/common/ShellExecutor;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->displayInsetsControllerProvider:Ljavax/inject/Provider;

    .line 103
    .line 104
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    move-object v13, v1

    .line 109
    check-cast v13, Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 110
    .line 111
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->pipOptionalProvider:Ljavax/inject/Provider;

    .line 112
    .line 113
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    move-object v14, v1

    .line 118
    check-cast v14, Ljava/util/Optional;

    .line 119
    .line 120
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->nsControllerProvider:Ljavax/inject/Provider;

    .line 121
    .line 122
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    move-object v15, v1

    .line 127
    check-cast v15, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

    .line 128
    .line 129
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->dexCompatRestartDialogUtilsProvider:Ljavax/inject/Provider;

    .line 130
    .line 131
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    move-object/from16 v16, v1

    .line 136
    .line 137
    check-cast v16, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 138
    .line 139
    iget-object v0, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->shellControllerProvider:Ljavax/inject/Provider;

    .line 140
    .line 141
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    move-object/from16 v17, v0

    .line 146
    .line 147
    check-cast v17, Lcom/android/wm/shell/sysui/ShellController;

    .line 148
    .line 149
    invoke-static/range {v2 .. v17}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->provideWindowDecorViewModel(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    return-object v0
.end method
