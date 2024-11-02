.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final contextProvider:Ljavax/inject/Provider;

.field public final displayControllerProvider:Ljavax/inject/Provider;

.field public final mainExecutorProvider:Ljavax/inject/Provider;

.field public final mainHandlerProvider:Ljavax/inject/Provider;

.field public final shellInitProvider:Ljavax/inject/Provider;

.field public final splitScreenControllerProvider:Ljavax/inject/Provider;

.field public final wmServiceProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;->shellInitProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;->displayControllerProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;->wmServiceProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;->splitScreenControllerProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    return-void
.end method

.method public static provideEnterSplitGestureHandler(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Landroid/os/Handler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/view/IWindowManager;Ljava/util/Optional;)Ljava/util/Optional;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    move-object v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Landroid/os/Handler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/view/IWindowManager;Ljava/util/Optional;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v8}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;->contextProvider:Ljavax/inject/Provider;

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
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;->shellInitProvider:Ljavax/inject/Provider;

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
    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

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
    check-cast v3, Landroid/os/Handler;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;->displayControllerProvider:Ljavax/inject/Provider;

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
    check-cast v4, Lcom/android/wm/shell/common/DisplayController;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

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
    check-cast v5, Lcom/android/wm/shell/common/ShellExecutor;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;->wmServiceProvider:Ljavax/inject/Provider;

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
    check-cast v6, Landroid/view/IWindowManager;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;->splitScreenControllerProvider:Ljavax/inject/Provider;

    .line 56
    .line 57
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    move-object v7, p0

    .line 62
    check-cast v7, Ljava/util/Optional;

    .line 63
    .line 64
    invoke-static/range {v1 .. v7}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideEnterSplitGestureHandlerFactory;->provideEnterSplitGestureHandler(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Landroid/os/Handler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/view/IWindowManager;Ljava/util/Optional;)Ljava/util/Optional;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method
