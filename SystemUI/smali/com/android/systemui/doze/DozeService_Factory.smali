.class public final Lcom/android/systemui/doze/DozeService_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final dozeComponentBuilderProvider:Ljavax/inject/Provider;

.field public final mAODAmbientWallpaperHelperProvider:Ljavax/inject/Provider;

.field public final mDozeServiceHostProvider:Ljavax/inject/Provider;

.field public final mFaceWidgetManagerLazyProvider:Ljavax/inject/Provider;

.field public final mKeyguardUpdateMonitorProvider:Ljavax/inject/Provider;

.field public final mPluginAODManagerLazyProvider:Ljavax/inject/Provider;

.field public final mWakefulnessLifecycleProvider:Ljavax/inject/Provider;

.field public final pluginManagerProvider:Ljavax/inject/Provider;


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
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService_Factory;->dozeComponentBuilderProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/doze/DozeService_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/doze/DozeService_Factory;->mKeyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/doze/DozeService_Factory;->mPluginAODManagerLazyProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/doze/DozeService_Factory;->mFaceWidgetManagerLazyProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/doze/DozeService_Factory;->mDozeServiceHostProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/doze/DozeService_Factory;->mAODAmbientWallpaperHelperProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/doze/DozeService_Factory;->mWakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    return-void
.end method

.method public static newInstance(Lcom/android/systemui/doze/dagger/DozeComponent$Builder;Lcom/android/systemui/plugins/PluginManager;)Lcom/android/systemui/doze/DozeService;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/doze/DozeService;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/doze/DozeService;-><init>(Lcom/android/systemui/doze/dagger/DozeComponent$Builder;Lcom/android/systemui/plugins/PluginManager;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService_Factory;->dozeComponentBuilderProvider:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/doze/dagger/DozeComponent$Builder;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    .line 10
    .line 11
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/systemui/plugins/PluginManager;

    .line 16
    .line 17
    new-instance v2, Lcom/android/systemui/doze/DozeService;

    .line 18
    .line 19
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/doze/DozeService;-><init>(Lcom/android/systemui/doze/dagger/DozeComponent$Builder;Lcom/android/systemui/plugins/PluginManager;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService_Factory;->mKeyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 23
    .line 24
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 29
    .line 30
    iput-object v0, v2, Lcom/android/systemui/doze/DozeService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService_Factory;->mPluginAODManagerLazyProvider:Ljavax/inject/Provider;

    .line 33
    .line 34
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, v2, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService_Factory;->mFaceWidgetManagerLazyProvider:Ljavax/inject/Provider;

    .line 41
    .line 42
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, v2, Lcom/android/systemui/doze/DozeService;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService_Factory;->mDozeServiceHostProvider:Ljavax/inject/Provider;

    .line 49
    .line 50
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 55
    .line 56
    iput-object v0, v2, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService_Factory;->mAODAmbientWallpaperHelperProvider:Ljavax/inject/Provider;

    .line 59
    .line 60
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 65
    .line 66
    iput-object v0, v2, Lcom/android/systemui/doze/DozeService;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService_Factory;->mWakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 69
    .line 70
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 75
    .line 76
    iput-object p0, v2, Lcom/android/systemui/doze/DozeService;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 77
    .line 78
    return-object v2
.end method
