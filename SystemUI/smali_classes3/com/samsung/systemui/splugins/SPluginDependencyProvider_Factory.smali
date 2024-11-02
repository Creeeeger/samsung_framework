.class public final Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final managerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;->managerProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newInstance(Lcom/samsung/systemui/splugins/SPluginManager;)Lcom/samsung/systemui/splugins/SPluginDependencyProvider;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/systemui/splugins/SPluginDependencyProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/systemui/splugins/SPluginDependencyProvider;-><init>(Lcom/samsung/systemui/splugins/SPluginManager;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public get()Lcom/samsung/systemui/splugins/SPluginDependencyProvider;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;->managerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;->newInstance(Lcom/samsung/systemui/splugins/SPluginManager;)Lcom/samsung/systemui/splugins/SPluginDependencyProvider;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;->get()Lcom/samsung/systemui/splugins/SPluginDependencyProvider;

    move-result-object p0

    return-object p0
.end method
