.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final contextProvider:Ljavax/inject/Provider;

.field public final displayControllerProvider:Ljavax/inject/Provider;

.field public final displayLayoutProvider:Ljavax/inject/Provider;

.field public final jankMonitorProvider:Ljavax/inject/Provider;

.field public final mainExecutorProvider:Ljavax/inject/Provider;

.field public final mainHandlerProvider:Ljavax/inject/Provider;

.field public final shellCommandHandlerProvider:Ljavax/inject/Provider;

.field public final shellControllerProvider:Ljavax/inject/Provider;

.field public final shellInitProvider:Ljavax/inject/Provider;

.field public final taskStackListenerProvider:Ljavax/inject/Provider;

.field public final uiEventLoggerProvider:Ljavax/inject/Provider;

.field public final windowManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
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
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->shellInitProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->shellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->shellControllerProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->windowManagerProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->displayControllerProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->displayLayoutProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->taskStackListenerProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->jankMonitorProvider:Ljavax/inject/Provider;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 27
    .line 28
    return-void
.end method

.method public static provideOneHandedController(Landroid/content/Context;Landroid/os/Handler;Landroid/view/WindowManager;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellInit;)Lcom/android/wm/shell/onehanded/OneHandedController;
    .locals 25

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v13, p7

    .line 4
    .line 5
    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    .line 6
    .line 7
    move-object/from16 v17, v3

    .line 8
    .line 9
    invoke-direct {v3}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

    .line 13
    .line 14
    move-object/from16 v18, v0

    .line 15
    .line 16
    invoke-direct {v0, v9}, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    .line 20
    .line 21
    move-object/from16 v19, v0

    .line 22
    .line 23
    invoke-direct {v0, v13}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedState;

    .line 27
    .line 28
    move-object/from16 v20, v1

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/android/wm/shell/onehanded/OneHandedState;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

    .line 34
    .line 35
    invoke-direct {v1, v9}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    new-instance v5, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    .line 39
    .line 40
    move-object/from16 v16, v5

    .line 41
    .line 42
    move-object/from16 v2, p2

    .line 43
    .line 44
    invoke-direct {v5, v9, v3, v2, v1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Landroid/view/WindowManager;Lcom/android/wm/shell/onehanded/BackgroundWindowManager;)V

    .line 45
    .line 46
    .line 47
    new-instance v4, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    .line 48
    .line 49
    invoke-direct {v4, v9}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    .line 53
    .line 54
    move-object v15, v1

    .line 55
    invoke-direct {v1, v0, v13}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;-><init>(Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 59
    .line 60
    move-object v14, v0

    .line 61
    move-object/from16 v1, p0

    .line 62
    .line 63
    move-object/from16 v2, p6

    .line 64
    .line 65
    move-object/from16 v6, p3

    .line 66
    .line 67
    move-object/from16 v7, p7

    .line 68
    .line 69
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Lcom/android/wm/shell/onehanded/OneHandedAnimationController;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    .line 73
    .line 74
    move-object/from16 v21, v0

    .line 75
    .line 76
    move-object/from16 v1, p4

    .line 77
    .line 78
    invoke-direct {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 82
    .line 83
    move-object v8, v0

    .line 84
    move-object/from16 v9, p0

    .line 85
    .line 86
    move-object/from16 v10, p11

    .line 87
    .line 88
    move-object/from16 v11, p9

    .line 89
    .line 90
    move-object/from16 v12, p10

    .line 91
    .line 92
    move-object/from16 v13, p5

    .line 93
    .line 94
    move-object/from16 v22, p8

    .line 95
    .line 96
    move-object/from16 v23, p7

    .line 97
    .line 98
    move-object/from16 v24, p1

    .line 99
    .line 100
    invoke-direct/range {v8 .. v24}, Lcom/android/wm/shell/onehanded/OneHandedController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;Lcom/android/wm/shell/onehanded/OneHandedState;Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V

    .line 101
    .line 102
    .line 103
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroid/content/Context;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->shellInitProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v12, v0

    .line 17
    check-cast v12, Lcom/android/wm/shell/sysui/ShellInit;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->shellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 20
    .line 21
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v10, v0

    .line 26
    check-cast v10, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->shellControllerProvider:Ljavax/inject/Provider;

    .line 29
    .line 30
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v11, v0

    .line 35
    check-cast v11, Lcom/android/wm/shell/sysui/ShellController;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->windowManagerProvider:Ljavax/inject/Provider;

    .line 38
    .line 39
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v3, v0

    .line 44
    check-cast v3, Landroid/view/WindowManager;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->displayControllerProvider:Ljavax/inject/Provider;

    .line 47
    .line 48
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v6, v0

    .line 53
    check-cast v6, Lcom/android/wm/shell/common/DisplayController;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->displayLayoutProvider:Ljavax/inject/Provider;

    .line 56
    .line 57
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v7, v0

    .line 62
    check-cast v7, Lcom/android/wm/shell/common/DisplayLayout;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->taskStackListenerProvider:Ljavax/inject/Provider;

    .line 65
    .line 66
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object v9, v0

    .line 71
    check-cast v9, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    .line 74
    .line 75
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    move-object v5, v0

    .line 80
    check-cast v5, Lcom/android/internal/logging/UiEventLogger;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->jankMonitorProvider:Ljavax/inject/Provider;

    .line 83
    .line 84
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    move-object v4, v0

    .line 89
    check-cast v4, Lcom/android/internal/jank/InteractionJankMonitor;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 92
    .line 93
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object v8, v0

    .line 98
    check-cast v8, Lcom/android/wm/shell/common/ShellExecutor;

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 101
    .line 102
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    move-object v2, p0

    .line 107
    check-cast v2, Landroid/os/Handler;

    .line 108
    .line 109
    invoke-static/range {v1 .. v12}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->provideOneHandedController(Landroid/content/Context;Landroid/os/Handler;Landroid/view/WindowManager;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellInit;)Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0
.end method
