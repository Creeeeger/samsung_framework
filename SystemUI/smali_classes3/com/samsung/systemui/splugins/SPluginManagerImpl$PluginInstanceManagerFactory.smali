.class public Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/SPluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginInstanceManagerFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Ljava/lang/Class;Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Lcom/samsung/systemui/splugins/SPluginInstanceManager;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;ZZ",
            "Landroid/os/Looper;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/samsung/systemui/splugins/SPluginManagerImpl;",
            ")",
            "Lcom/samsung/systemui/splugins/SPluginInstanceManager;"
        }
    .end annotation

    .line 1
    new-instance v10, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 2
    .line 3
    new-instance v0, Lcom/samsung/systemui/splugins/SVersionInfo;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/samsung/systemui/splugins/SVersionInfo;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p7

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SVersionInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    new-instance v9, Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;

    .line 15
    .line 16
    move-object v1, p1

    .line 17
    invoke-direct {v9, p1}, Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    move-object v0, v10

    .line 21
    move-object v2, p2

    .line 22
    move-object v3, p3

    .line 23
    move v4, p4

    .line 24
    move/from16 v5, p5

    .line 25
    .line 26
    move-object/from16 v6, p6

    .line 27
    .line 28
    move-object/from16 v8, p8

    .line 29
    .line 30
    invoke-direct/range {v0 .. v9}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Lcom/samsung/systemui/splugins/SVersionInfo;Lcom/samsung/systemui/splugins/SPluginManagerImpl;Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;)V

    .line 31
    .line 32
    .line 33
    return-object v10
.end method
