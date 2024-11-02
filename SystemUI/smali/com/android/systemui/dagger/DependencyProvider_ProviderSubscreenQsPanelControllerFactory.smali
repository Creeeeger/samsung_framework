.class public final Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final contextProvider:Ljavax/inject/Provider;

.field public final hostProvider:Ljavax/inject/Provider;

.field public final injectionInflaterProvider:Ljavax/inject/Provider;

.field public final module:Lcom/android/systemui/dagger/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
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
    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->injectionInflaterProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->hostProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    return-void
.end method

.method public static providerSubscreenQsPanelController(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/qp/SubscreenQsPanelController;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "display"

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/16 v0, 0x7e1

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance p1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 31
    .line 32
    invoke-direct {p1, p0, p2, p3}, Lcom/android/systemui/qp/SubscreenQsPanelController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;Lcom/android/systemui/qs/QSTileHost;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p0, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 37
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qp/SubscreenQsPanelController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;Lcom/android/systemui/qs/QSTileHost;)V

    .line 39
    .line 40
    .line 41
    move-object p1, p0

    .line 42
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->injectionInflaterProvider:Ljavax/inject/Provider;

    .line 10
    .line 11
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/systemui/qs/InjectionInflationController;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->hostProvider:Ljavax/inject/Provider;

    .line 18
    .line 19
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/systemui/qs/QSTileHost;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    .line 26
    .line 27
    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->providerSubscreenQsPanelController(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
