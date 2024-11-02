.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationBarComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NavigationBarComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field public final navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

.field public navigationBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field public navigationBarTransitionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field public provideLayoutInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field public provideNavigationBarFrameProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field public provideNavigationBarviewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field public provideWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field public final savedState:Landroid/os/Bundle;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->context:Landroid/content/Context;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->savedState:Landroid/os/Bundle;

    .line 8
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->initialize(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final autoHideControllerFactory()Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 6
    .line 7
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/os/Handler;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 16
    .line 17
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/view/IWindowManager;

    .line 22
    .line 23
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;-><init>(Landroid/os/Handler;Landroid/view/IWindowManager;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final deadZone()Lcom/android/systemui/navigationbar/buttons/DeadZone;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarviewProvider:Ljavax/inject/Provider;

    .line 4
    .line 5
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/buttons/DeadZone;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final getNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarProvider:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 8
    .line 9
    return-object p0
.end method

.method public final initialize(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 18
    .line 19
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarFrameProvider:Ljavax/inject/Provider;

    .line 36
    .line 37
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarviewProvider:Ljavax/inject/Provider;

    .line 54
    .line 55
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 62
    .line 63
    const/4 v2, 0x4

    .line 64
    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;I)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->provideWindowManagerProvider:Ljavax/inject/Provider;

    .line 72
    .line 73
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    .line 74
    .line 75
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 80
    .line 81
    const/4 v2, 0x5

    .line 82
    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;I)V

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarTransitionsProvider:Ljavax/inject/Provider;

    .line 90
    .line 91
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    .line 92
    .line 93
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 94
    .line 95
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;I)V

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->navigationBarProvider:Ljavax/inject/Provider;

    .line 108
    .line 109
    return-void
.end method

.method public final lightBarControllerFactory()Lcom/android/systemui/statusbar/phone/LightBarController$Factory;
    .locals 11

    .line 1
    new-instance v10, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    .line 6
    .line 7
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v2, v0

    .line 23
    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 28
    .line 29
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    move-object v3, v0

    .line 34
    check-cast v3, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    .line 39
    .line 40
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    move-object v4, v0

    .line 45
    check-cast v4, Lcom/android/systemui/flags/FeatureFlags;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 50
    .line 51
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object v5, v0

    .line 56
    check-cast v5, Lcom/android/systemui/dump/DumpManager;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDisplayTrackerProvider:Ljavax/inject/Provider;

    .line 61
    .line 62
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    move-object v6, v0

    .line 67
    check-cast v6, Lcom/android/systemui/settings/DisplayTracker;

    .line 68
    .line 69
    new-instance v7, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    .line 70
    .line 71
    invoke-direct {v7}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->samsungStatusBarGrayIconHelperProvider:Ljavax/inject/Provider;

    .line 77
    .line 78
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    move-object v8, v0

    .line 83
    check-cast v8, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$NavigationBarComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardSecUpdateMonitorImplProvider:Ljavax/inject/Provider;

    .line 88
    .line 89
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    move-object v9, p0

    .line 94
    check-cast v9, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 95
    .line 96
    move-object v0, v10

    .line 97
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;-><init>(Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 98
    .line 99
    .line 100
    return-object v10
.end method
