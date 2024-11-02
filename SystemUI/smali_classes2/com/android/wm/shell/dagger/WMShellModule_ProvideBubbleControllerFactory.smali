.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final bgExecutorProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final dataProvider:Ljavax/inject/Provider;

.field public final displayControllerProvider:Ljavax/inject/Provider;

.field public final dragAndDropControllerProvider:Ljavax/inject/Provider;

.field public final floatingContentCoordinatorProvider:Ljavax/inject/Provider;

.field public final launcherAppsProvider:Ljavax/inject/Provider;

.field public final loggerProvider:Ljavax/inject/Provider;

.field public final mainExecutorProvider:Ljavax/inject/Provider;

.field public final mainHandlerProvider:Ljavax/inject/Provider;

.field public final oneHandedOptionalProvider:Ljavax/inject/Provider;

.field public final organizerProvider:Ljavax/inject/Provider;

.field public final positionerProvider:Ljavax/inject/Provider;

.field public final shellCommandHandlerProvider:Ljavax/inject/Provider;

.field public final shellControllerProvider:Ljavax/inject/Provider;

.field public final shellInitProvider:Ljavax/inject/Provider;

.field public final statusBarServiceProvider:Ljavax/inject/Provider;

.field public final syncQueueProvider:Ljavax/inject/Provider;

.field public final taskStackListenerProvider:Ljavax/inject/Provider;

.field public final taskViewTransitionsProvider:Ljavax/inject/Provider;

.field public final userManagerProvider:Ljavax/inject/Provider;

.field public final windowManagerProvider:Ljavax/inject/Provider;

.field public final windowManagerShellWrapperProvider:Ljavax/inject/Provider;

.field public final wmServiceProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->shellInitProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->shellCommandHandlerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->shellControllerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->dataProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->floatingContentCoordinatorProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->statusBarServiceProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->windowManagerProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->windowManagerShellWrapperProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->userManagerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->launcherAppsProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->taskStackListenerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->loggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->organizerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->positionerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->displayControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->oneHandedOptionalProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->dragAndDropControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->bgExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->taskViewTransitionsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->syncQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->wmServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideBubbleController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/UserManager;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/common/DisplayController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/IWindowManager;)Lcom/android/wm/shell/bubbles/BubbleController;
    .locals 28

    .line 1
    new-instance v27, Lcom/android/wm/shell/bubbles/BubbleController;

    move-object/from16 v0, v27

    const/4 v6, 0x0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    move-object v8, v1

    move-object/from16 v2, p0

    move-object/from16 v13, p10

    move-object/from16 v15, p18

    invoke-direct {v1, v2, v13, v15}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/common/ShellExecutor;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v14, p12

    move-object/from16 v15, p11

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    move-object/from16 v25, p22

    move-object/from16 v26, p23

    invoke-direct/range {v0 .. v26}, Lcom/android/wm/shell/bubbles/BubbleController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/bubbles/BubbleDataRepository;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/UserManager;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/common/DisplayController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/IWindowManager;)V

    return-object v27
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->contextProvider:Ljavax/inject/Provider;

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
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->shellInitProvider:Ljavax/inject/Provider;

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
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->shellCommandHandlerProvider:Ljavax/inject/Provider;

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
    check-cast v4, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->shellControllerProvider:Ljavax/inject/Provider;

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
    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->dataProvider:Ljavax/inject/Provider;

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
    check-cast v6, Lcom/android/wm/shell/bubbles/BubbleData;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->floatingContentCoordinatorProvider:Ljavax/inject/Provider;

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
    check-cast v7, Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->statusBarServiceProvider:Ljavax/inject/Provider;

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
    check-cast v8, Lcom/android/internal/statusbar/IStatusBarService;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->windowManagerProvider:Ljavax/inject/Provider;

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
    check-cast v9, Landroid/view/WindowManager;

    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->windowManagerShellWrapperProvider:Ljavax/inject/Provider;

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
    check-cast v10, Lcom/android/wm/shell/WindowManagerShellWrapper;

    .line 83
    .line 84
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->userManagerProvider:Ljavax/inject/Provider;

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
    check-cast v11, Landroid/os/UserManager;

    .line 92
    .line 93
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->launcherAppsProvider:Ljavax/inject/Provider;

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
    check-cast v12, Landroid/content/pm/LauncherApps;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->taskStackListenerProvider:Ljavax/inject/Provider;

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
    check-cast v13, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 110
    .line 111
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->loggerProvider:Ljavax/inject/Provider;

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
    check-cast v14, Lcom/android/wm/shell/bubbles/BubbleLogger;

    .line 119
    .line 120
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->organizerProvider:Ljavax/inject/Provider;

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
    check-cast v15, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 128
    .line 129
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->positionerProvider:Ljavax/inject/Provider;

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
    check-cast v16, Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 138
    .line 139
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->displayControllerProvider:Ljavax/inject/Provider;

    .line 140
    .line 141
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    move-object/from16 v17, v1

    .line 146
    .line 147
    check-cast v17, Lcom/android/wm/shell/common/DisplayController;

    .line 148
    .line 149
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->oneHandedOptionalProvider:Ljavax/inject/Provider;

    .line 150
    .line 151
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    move-object/from16 v18, v1

    .line 156
    .line 157
    check-cast v18, Ljava/util/Optional;

    .line 158
    .line 159
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->dragAndDropControllerProvider:Ljavax/inject/Provider;

    .line 160
    .line 161
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    move-object/from16 v19, v1

    .line 166
    .line 167
    check-cast v19, Ljava/util/Optional;

    .line 168
    .line 169
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 170
    .line 171
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    move-object/from16 v20, v1

    .line 176
    .line 177
    check-cast v20, Lcom/android/wm/shell/common/ShellExecutor;

    .line 178
    .line 179
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 180
    .line 181
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    move-object/from16 v21, v1

    .line 186
    .line 187
    check-cast v21, Landroid/os/Handler;

    .line 188
    .line 189
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->bgExecutorProvider:Ljavax/inject/Provider;

    .line 190
    .line 191
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    move-object/from16 v22, v1

    .line 196
    .line 197
    check-cast v22, Lcom/android/wm/shell/common/ShellExecutor;

    .line 198
    .line 199
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->taskViewTransitionsProvider:Ljavax/inject/Provider;

    .line 200
    .line 201
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    move-object/from16 v23, v1

    .line 206
    .line 207
    check-cast v23, Lcom/android/wm/shell/taskview/TaskViewTransitions;

    .line 208
    .line 209
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->syncQueueProvider:Ljavax/inject/Provider;

    .line 210
    .line 211
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    move-object/from16 v24, v1

    .line 216
    .line 217
    check-cast v24, Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 218
    .line 219
    iget-object v0, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->wmServiceProvider:Ljavax/inject/Provider;

    .line 220
    .line 221
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    move-object/from16 v25, v0

    .line 226
    .line 227
    check-cast v25, Landroid/view/IWindowManager;

    .line 228
    .line 229
    invoke-static/range {v2 .. v25}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->provideBubbleController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/UserManager;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/common/DisplayController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/IWindowManager;)Lcom/android/wm/shell/bubbles/BubbleController;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    return-object v0
.end method
