.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final contextProvider:Ljavax/inject/Provider;

.field public final displayControllerProvider:Ljavax/inject/Provider;

.field public final displayInsetsControllerProvider:Ljavax/inject/Provider;

.field public final mainExecutorProvider:Ljavax/inject/Provider;

.field public final oneHandedControllerProvider:Ljavax/inject/Provider;

.field public final phonePipMenuControllerProvider:Ljavax/inject/Provider;

.field public final pipAnimationControllerProvider:Ljavax/inject/Provider;

.field public final pipAppOpsListenerProvider:Ljavax/inject/Provider;

.field public final pipBoundsAlgorithmProvider:Ljavax/inject/Provider;

.field public final pipBoundsStateProvider:Ljavax/inject/Provider;

.field public final pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

.field public final pipKeepClearAlgorithmProvider:Ljavax/inject/Provider;

.field public final pipMediaControllerProvider:Ljavax/inject/Provider;

.field public final pipMotionHelperProvider:Ljavax/inject/Provider;

.field public final pipParamsChangedForwarderProvider:Ljavax/inject/Provider;

.field public final pipSizeSpecHandlerProvider:Ljavax/inject/Provider;

.field public final pipTabletopControllerProvider:Ljavax/inject/Provider;

.field public final pipTaskOrganizerProvider:Ljavax/inject/Provider;

.field public final pipTouchHandlerProvider:Ljavax/inject/Provider;

.field public final pipTransitionControllerProvider:Ljavax/inject/Provider;

.field public final pipTransitionStateProvider:Ljavax/inject/Provider;

.field public final shellCommandHandlerProvider:Ljavax/inject/Provider;

.field public final shellControllerProvider:Ljavax/inject/Provider;

.field public final shellInitProvider:Ljavax/inject/Provider;

.field public final taskStackListenerProvider:Ljavax/inject/Provider;

.field public final windowManagerShellWrapperProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->contextProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->shellInitProvider:Ljavax/inject/Provider;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->shellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->shellControllerProvider:Ljavax/inject/Provider;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->displayControllerProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipAnimationControllerProvider:Ljavax/inject/Provider;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipAppOpsListenerProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipKeepClearAlgorithmProvider:Ljavax/inject/Provider;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipBoundsStateProvider:Ljavax/inject/Provider;

    .line 34
    .line 35
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipSizeSpecHandlerProvider:Ljavax/inject/Provider;

    .line 37
    .line 38
    move-object v1, p12

    .line 39
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

    .line 40
    .line 41
    move-object v1, p13

    .line 42
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipMotionHelperProvider:Ljavax/inject/Provider;

    .line 43
    .line 44
    move-object/from16 v1, p14

    .line 45
    .line 46
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipMediaControllerProvider:Ljavax/inject/Provider;

    .line 47
    .line 48
    move-object/from16 v1, p15

    .line 49
    .line 50
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->phonePipMenuControllerProvider:Ljavax/inject/Provider;

    .line 51
    .line 52
    move-object/from16 v1, p16

    .line 53
    .line 54
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 55
    .line 56
    move-object/from16 v1, p17

    .line 57
    .line 58
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTransitionStateProvider:Ljavax/inject/Provider;

    .line 59
    .line 60
    move-object/from16 v1, p18

    .line 61
    .line 62
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTouchHandlerProvider:Ljavax/inject/Provider;

    .line 63
    .line 64
    move-object/from16 v1, p19

    .line 65
    .line 66
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTransitionControllerProvider:Ljavax/inject/Provider;

    .line 67
    .line 68
    move-object/from16 v1, p20

    .line 69
    .line 70
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->windowManagerShellWrapperProvider:Ljavax/inject/Provider;

    .line 71
    .line 72
    move-object/from16 v1, p21

    .line 73
    .line 74
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->taskStackListenerProvider:Ljavax/inject/Provider;

    .line 75
    .line 76
    move-object/from16 v1, p22

    .line 77
    .line 78
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    .line 79
    .line 80
    move-object/from16 v1, p23

    .line 81
    .line 82
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->displayInsetsControllerProvider:Ljavax/inject/Provider;

    .line 83
    .line 84
    move-object/from16 v1, p24

    .line 85
    .line 86
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTabletopControllerProvider:Ljavax/inject/Provider;

    .line 87
    .line 88
    move-object/from16 v1, p25

    .line 89
    .line 90
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->oneHandedControllerProvider:Ljavax/inject/Provider;

    .line 91
    .line 92
    move-object/from16 v1, p26

    .line 93
    .line 94
    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 95
    .line 96
    return-void
.end method

.method public static providePip(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TabletopModeController;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;
    .locals 28

    .line 1
    sget v0, Lcom/android/wm/shell/pip/phone/PipController;->$r8$clinit:I

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.software.picture_in_picture"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 20
    .line 21
    const-string v1, "PipController"

    .line 22
    .line 23
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "%s: Device doesn\'t support Pip feature"

    .line 28
    .line 29
    const v3, 0x16859aef

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static {v0, v3, v4, v2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController;

    .line 39
    .line 40
    move-object v1, v0

    .line 41
    move-object/from16 v2, p0

    .line 42
    .line 43
    move-object/from16 v3, p1

    .line 44
    .line 45
    move-object/from16 v4, p2

    .line 46
    .line 47
    move-object/from16 v5, p3

    .line 48
    .line 49
    move-object/from16 v6, p4

    .line 50
    .line 51
    move-object/from16 v7, p5

    .line 52
    .line 53
    move-object/from16 v8, p6

    .line 54
    .line 55
    move-object/from16 v9, p7

    .line 56
    .line 57
    move-object/from16 v10, p8

    .line 58
    .line 59
    move-object/from16 v11, p9

    .line 60
    .line 61
    move-object/from16 v12, p10

    .line 62
    .line 63
    move-object/from16 v13, p11

    .line 64
    .line 65
    move-object/from16 v14, p12

    .line 66
    .line 67
    move-object/from16 v15, p13

    .line 68
    .line 69
    move-object/from16 v16, p14

    .line 70
    .line 71
    move-object/from16 v17, p15

    .line 72
    .line 73
    move-object/from16 v18, p16

    .line 74
    .line 75
    move-object/from16 v19, p17

    .line 76
    .line 77
    move-object/from16 v20, p18

    .line 78
    .line 79
    move-object/from16 v21, p19

    .line 80
    .line 81
    move-object/from16 v22, p20

    .line 82
    .line 83
    move-object/from16 v23, p21

    .line 84
    .line 85
    move-object/from16 v24, p22

    .line 86
    .line 87
    move-object/from16 v25, p23

    .line 88
    .line 89
    move-object/from16 v26, p24

    .line 90
    .line 91
    move-object/from16 v27, p25

    .line 92
    .line 93
    invoke-direct/range {v1 .. v27}, Lcom/android/wm/shell/pip/phone/PipController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TabletopModeController;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mImpl:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    .line 97
    .line 98
    :goto_0
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->contextProvider:Ljavax/inject/Provider;

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
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->shellInitProvider:Ljavax/inject/Provider;

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
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->shellCommandHandlerProvider:Ljavax/inject/Provider;

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
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->shellControllerProvider:Ljavax/inject/Provider;

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
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->displayControllerProvider:Ljavax/inject/Provider;

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
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipAnimationControllerProvider:Ljavax/inject/Provider;

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
    check-cast v7, Lcom/android/wm/shell/pip/PipAnimationController;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipAppOpsListenerProvider:Ljavax/inject/Provider;

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
    check-cast v8, Lcom/android/wm/shell/pip/PipAppOpsListener;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipBoundsAlgorithmProvider:Ljavax/inject/Provider;

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
    check-cast v9, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipKeepClearAlgorithmProvider:Ljavax/inject/Provider;

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
    check-cast v10, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;

    .line 83
    .line 84
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipBoundsStateProvider:Ljavax/inject/Provider;

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
    check-cast v11, Lcom/android/wm/shell/pip/PipBoundsState;

    .line 92
    .line 93
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipSizeSpecHandlerProvider:Ljavax/inject/Provider;

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
    check-cast v12, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

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
    check-cast v13, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 110
    .line 111
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipMotionHelperProvider:Ljavax/inject/Provider;

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
    check-cast v14, Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 119
    .line 120
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipMediaControllerProvider:Ljavax/inject/Provider;

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
    check-cast v15, Lcom/android/wm/shell/pip/PipMediaController;

    .line 128
    .line 129
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->phonePipMenuControllerProvider:Ljavax/inject/Provider;

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
    check-cast v16, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 138
    .line 139
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTaskOrganizerProvider:Ljavax/inject/Provider;

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
    check-cast v17, Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 148
    .line 149
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTransitionStateProvider:Ljavax/inject/Provider;

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
    check-cast v18, Lcom/android/wm/shell/pip/PipTransitionState;

    .line 158
    .line 159
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTouchHandlerProvider:Ljavax/inject/Provider;

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
    check-cast v19, Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 168
    .line 169
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTransitionControllerProvider:Ljavax/inject/Provider;

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
    check-cast v20, Lcom/android/wm/shell/pip/PipTransitionController;

    .line 178
    .line 179
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->windowManagerShellWrapperProvider:Ljavax/inject/Provider;

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
    check-cast v21, Lcom/android/wm/shell/WindowManagerShellWrapper;

    .line 188
    .line 189
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->taskStackListenerProvider:Ljavax/inject/Provider;

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
    check-cast v22, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 198
    .line 199
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipParamsChangedForwarderProvider:Ljavax/inject/Provider;

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
    check-cast v23, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 208
    .line 209
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->displayInsetsControllerProvider:Ljavax/inject/Provider;

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
    check-cast v24, Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 218
    .line 219
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTabletopControllerProvider:Ljavax/inject/Provider;

    .line 220
    .line 221
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    move-object/from16 v25, v1

    .line 226
    .line 227
    check-cast v25, Lcom/android/wm/shell/common/TabletopModeController;

    .line 228
    .line 229
    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->oneHandedControllerProvider:Ljavax/inject/Provider;

    .line 230
    .line 231
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    move-object/from16 v26, v1

    .line 236
    .line 237
    check-cast v26, Ljava/util/Optional;

    .line 238
    .line 239
    iget-object v0, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 240
    .line 241
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    move-object/from16 v27, v0

    .line 246
    .line 247
    check-cast v27, Lcom/android/wm/shell/common/ShellExecutor;

    .line 248
    .line 249
    invoke-static/range {v2 .. v27}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->providePip(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TabletopModeController;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    return-object v0
.end method
