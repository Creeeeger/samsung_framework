.class public final Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final contextProvider:Ljavax/inject/Provider;

.field public final customDeviceControlsControllerLazyProvider:Ljavax/inject/Provider;

.field public final desktopSystemUiBinderLazyProvider:Ljavax/inject/Provider;

.field public final indicatorLoggerProvider:Ljavax/inject/Provider;

.field public final keyguardSecurityModelProvider:Ljavax/inject/Provider;

.field public final updateMonitorProvider:Ljavax/inject/Provider;

.field public final viewControllerLazyProvider:Ljavax/inject/Provider;

.field public final wakefulnessLifecycleProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->viewControllerLazyProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->updateMonitorProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->desktopSystemUiBinderLazyProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->indicatorLoggerProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->customDeviceControlsControllerLazyProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    return-void
.end method

.method public static provideDesktopManager(Landroid/content/Context;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;Lcom/android/systemui/statusbar/logging/IndicatorLogger;Ldagger/Lazy;)Lcom/android/systemui/util/DesktopManagerImpl;
    .locals 10

    .line 1
    new-instance v9, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 2
    .line 3
    move-object v0, v9

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
    move-object/from16 v7, p6

    .line 11
    .line 12
    move-object/from16 v8, p7

    .line 13
    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/util/DesktopManagerImpl;-><init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;Lcom/android/systemui/statusbar/logging/IndicatorLogger;Ldagger/Lazy;)V

    .line 15
    .line 16
    .line 17
    return-object v9
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->contextProvider:Ljavax/inject/Provider;

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
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->viewControllerLazyProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->updateMonitorProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v3, v0

    .line 23
    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    .line 26
    .line 27
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v4, v0

    .line 32
    check-cast v4, Lcom/android/keyguard/KeyguardSecurityModel;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 35
    .line 36
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v5, v0

    .line 41
    check-cast v5, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->desktopSystemUiBinderLazyProvider:Ljavax/inject/Provider;

    .line 44
    .line 45
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->indicatorLoggerProvider:Ljavax/inject/Provider;

    .line 50
    .line 51
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object v7, v0

    .line 56
    check-cast v7, Lcom/android/systemui/statusbar/logging/IndicatorLogger;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->customDeviceControlsControllerLazyProvider:Ljavax/inject/Provider;

    .line 59
    .line 60
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideDesktopManagerFactory;->provideDesktopManager(Landroid/content/Context;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;Lcom/android/systemui/statusbar/logging/IndicatorLogger;Ldagger/Lazy;)Lcom/android/systemui/util/DesktopManagerImpl;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method
