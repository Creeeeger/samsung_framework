.class public Lcom/samsung/systemui/splugins/SPluginInitializerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginInitializer;


# static fields
.field private static final WTFS_SHOULD_CRASH:Z = false


# instance fields
.field private mWtfsSet:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowedPlugins(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const p1, 0x7f03003f

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public getBgLooper()Landroid/os/Looper;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/Looper;

    .line 8
    .line 9
    return-object p0
.end method

.method public getPluginEnabler(Landroid/content/Context;)Lcom/samsung/systemui/splugins/SPluginEnabler;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/systemui/splugins/SPluginEnablerImpl;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/SPluginEnablerImpl;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public handleWtfs()V
    .locals 0

    .line 1
    return-void
.end method

.method public onPluginManagerInit()V
    .locals 1

    .line 1
    const-class p0, Lcom/samsung/systemui/splugins/SPluginDependencyProvider;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/systemui/splugins/SPluginDependencyProvider;

    .line 8
    .line 9
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/SPluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
