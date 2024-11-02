.class public final Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final contentInsetsProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final desktopManagerProvider:Ljavax/inject/Provider;

.field public final fragmentServiceProvider:Ljavax/inject/Provider;

.field public final iWindowManagerProvider:Ljavax/inject/Provider;

.field public final indicatorCutoutUtilProvider:Ljavax/inject/Provider;

.field public final mAODAmbientWallpaperHelperProvider:Ljavax/inject/Provider;

.field public final mainExecutorProvider:Ljavax/inject/Provider;

.field public final resourcesProvider:Ljavax/inject/Provider;

.field public final statusBarWindowViewProvider:Ljavax/inject/Provider;

.field public final unfoldTransitionProgressProvider:Ljavax/inject/Provider;

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
    iput-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->statusBarWindowViewProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->iWindowManagerProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->contentInsetsProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->fragmentServiceProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->desktopManagerProvider:Ljavax/inject/Provider;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->indicatorCutoutUtilProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->mAODAmbientWallpaperHelperProvider:Ljavax/inject/Provider;

    .line 27
    .line 28
    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/window/StatusBarWindowView;Landroid/view/WindowManager;Landroid/view/IWindowManager;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Lcom/android/systemui/fragments/FragmentService;Landroid/content/res/Resources;Ljava/util/Optional;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;)Lcom/android/systemui/statusbar/window/StatusBarWindowController;
    .locals 13

    .line 1
    new-instance v12, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 2
    .line 3
    move-object v0, v12

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v6, p5

    .line 12
    .line 13
    move-object/from16 v7, p6

    .line 14
    .line 15
    move-object/from16 v8, p7

    .line 16
    .line 17
    move-object/from16 v9, p8

    .line 18
    .line 19
    move-object/from16 v10, p9

    .line 20
    .line 21
    move-object/from16 v11, p10

    .line 22
    .line 23
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/window/StatusBarWindowView;Landroid/view/WindowManager;Landroid/view/IWindowManager;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Lcom/android/systemui/fragments/FragmentService;Landroid/content/res/Resources;Ljava/util/Optional;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;)V

    .line 24
    .line 25
    .line 26
    return-object v12
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->contextProvider:Ljavax/inject/Provider;

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
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->statusBarWindowViewProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v2, v0

    .line 17
    check-cast v2, Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    .line 20
    .line 21
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v3, v0

    .line 26
    check-cast v3, Landroid/view/WindowManager;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->iWindowManagerProvider:Ljavax/inject/Provider;

    .line 29
    .line 30
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v4, v0

    .line 35
    check-cast v4, Landroid/view/IWindowManager;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->contentInsetsProvider:Ljavax/inject/Provider;

    .line 38
    .line 39
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v5, v0

    .line 44
    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->fragmentServiceProvider:Ljavax/inject/Provider;

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
    check-cast v6, Lcom/android/systemui/fragments/FragmentService;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->resourcesProvider:Ljavax/inject/Provider;

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
    check-cast v7, Landroid/content/res/Resources;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    .line 65
    .line 66
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object v8, v0

    .line 71
    check-cast v8, Ljava/util/Optional;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 74
    .line 75
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    move-object v9, v0

    .line 80
    check-cast v9, Ljava/util/concurrent/Executor;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->desktopManagerProvider:Ljavax/inject/Provider;

    .line 83
    .line 84
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    move-object v10, v0

    .line 89
    check-cast v10, Lcom/android/systemui/util/DesktopManager;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->indicatorCutoutUtilProvider:Ljavax/inject/Provider;

    .line 92
    .line 93
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object v11, v0

    .line 98
    check-cast v11, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 99
    .line 100
    invoke-static/range {v1 .. v11}, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/window/StatusBarWindowView;Landroid/view/WindowManager;Landroid/view/IWindowManager;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Lcom/android/systemui/fragments/FragmentService;Landroid/content/res/Resources;Ljava/util/Optional;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;)Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->mAODAmbientWallpaperHelperProvider:Ljavax/inject/Provider;

    .line 105
    .line 106
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    check-cast p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 111
    .line 112
    return-object v0
.end method
