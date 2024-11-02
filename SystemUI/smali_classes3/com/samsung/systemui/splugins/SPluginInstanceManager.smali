.class public Lcom/samsung/systemui/splugins/SPluginInstanceManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;,
        Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;,
        Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;,
        Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginContextWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/systemui/splugins/SPlugin;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final PLUGIN_DISCONNECTED_REASON_CHANGE:I = 0x2

.field public static final PLUGIN_DISCONNECTED_REASON_DELETED:I = 0x0

.field public static final PLUGIN_DISCONNECTED_REASON_UPDATE:I = 0x1

.field public static final PLUGIN_LOAD_FAILED_REASON_VERSION:I = 0x0

.field public static final PLUGIN_PERMISSION:Ljava/lang/String; = "com.samsung.systemui.permission.SPLUGIN"

.field private static final TAG:Ljava/lang/String; = "PluginInstanceManager"


# instance fields
.field private final isDebuggable:Z

.field private final mAction:Ljava/lang/String;

.field private final mActivityManagerProxy:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

.field private final mAllowMultiple:Z

.field private final mAllowMultipleUsers:Z

.field private final mContext:Landroid/content/Context;

.field private mIsPkgChanged:Z

.field private final mListener:Lcom/samsung/systemui/splugins/SPluginListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMainHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/SPluginInstanceManager<",
            "TT;>.MainHandler;"
        }
    .end annotation
.end field

.field private final mManager:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

.field final mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/SPluginInstanceManager<",
            "TT;>.PluginHandler;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mPolicyInteractor:Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;

.field private final mVersion:Lcom/samsung/systemui/splugins/SVersionInfo;

.field private final mWhitelistedPlugins:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAction(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mAction:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerProxy(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/ActivityManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mActivityManagerProxy:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowMultiple(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mAllowMultiple:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowMultipleUsers(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mAllowMultipleUsers:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPkgChanged(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mIsPkgChanged:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmManager(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginManagerImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mManager:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPm(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPm:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicyInteractor(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPolicyInteractor:Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVersion(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SVersionInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mVersion:Lcom/samsung/systemui/splugins/SVersionInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Lcom/samsung/systemui/splugins/SVersionInfo;Lcom/samsung/systemui/splugins/SPluginManagerImpl;Z[Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;ZZ",
            "Landroid/os/Looper;",
            "Lcom/samsung/systemui/splugins/SVersionInfo;",
            "Lcom/samsung/systemui/splugins/SPluginManagerImpl;",
            "Z[",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mWhitelistedPlugins:Landroid/util/ArraySet;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mIsPkgChanged:Z

    .line 7
    new-instance v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;-><init>(Lcom/samsung/systemui/splugins/SPluginInstanceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;

    .line 8
    new-instance v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-direct {v1, p0, p7}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;-><init>(Lcom/samsung/systemui/splugins/SPluginInstanceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    .line 9
    iput-object p9, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mManager:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 10
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mContext:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPm:Landroid/content/pm/PackageManager;

    .line 12
    iput-object p3, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mAction:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    .line 14
    iput-boolean p5, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mAllowMultiple:Z

    .line 15
    iput-boolean p6, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mAllowMultipleUsers:Z

    .line 16
    iput-object p8, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mVersion:Lcom/samsung/systemui/splugins/SVersionInfo;

    .line 17
    invoke-static {p11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 18
    iput-boolean p10, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->isDebuggable:Z

    .line 19
    new-instance p1, Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    invoke-direct {p1}, Lcom/samsung/systemui/splugins/ActivityManagerProxy;-><init>()V

    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mActivityManagerProxy:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    .line 20
    iput-object p12, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPolicyInteractor:Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Lcom/samsung/systemui/splugins/SVersionInfo;Lcom/samsung/systemui/splugins/SPluginManagerImpl;Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;ZZ",
            "Landroid/os/Looper;",
            "Lcom/samsung/systemui/splugins/SVersionInfo;",
            "Lcom/samsung/systemui/splugins/SPluginManagerImpl;",
            "Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-boolean v10, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    invoke-virtual/range {p8 .. p8}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->getAllowedPlugins()[Ljava/lang/String;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v12, p9

    .line 3
    invoke-direct/range {v0 .. v12}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Lcom/samsung/systemui/splugins/SVersionInfo;Lcom/samsung/systemui/splugins/SPluginManagerImpl;Z[Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;)V

    return-void
.end method

.method private disable(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "PluginInstanceManager"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    .line 4
    .line 5
    iget-object v2, p1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lcom/samsung/systemui/splugins/SPlugin;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-interface {v1, v2, v3}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    .line 14
    .line 15
    instance-of v2, v1, Lcom/samsung/systemui/splugins/SPluginFragment;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    check-cast v1, Lcom/samsung/systemui/splugins/SPlugin;

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/SPlugin;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    .line 34
    .line 35
    iget-object v2, p1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->-$$Nest$fgetmClass(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "Disabling plugin "

    .line 47
    .line 48
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mManager:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->getPluginEnabler()Lcom/samsung/systemui/splugins/SPluginEnabler;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-interface {p0, v1, p2}, Lcom/samsung/systemui/splugins/SPluginEnabler;->setDisabled(Landroid/content/ComponentName;I)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public checkAndDisable(Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->-$$Nest$fgetmPlugins(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    .line 28
    .line 29
    iget-object v3, v2, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    invoke-direct {p0, v2, v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->disable(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;I)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return v1
.end method

.method public dependsOn(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->-$$Nest$fgetmPlugins(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    .line 28
    .line 29
    iget-object v2, v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->-$$Nest$fgetmVersion(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Lcom/samsung/systemui/splugins/SVersionInfo;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->-$$Nest$fgetmVersion(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Lcom/samsung/systemui/splugins/SVersionInfo;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/SVersionInfo;->hasClass(Ljava/lang/Class;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_1

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    :cond_1
    return v1
.end method

.method public destroy()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->-$$Nest$fgetmPlugins(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mActivityManagerProxy:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->unregister()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public disableAll(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->-$$Nest$fgetmPlugins(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object v4, v3, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    :cond_0
    const/4 v4, 0x3

    .line 37
    invoke-direct {p0, v3, v4}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->disable(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    :cond_3
    return v1
.end method

.method public getPlugin()Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->-$$Nest$mhandleQueryPlugins(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->-$$Nest$fgetmPlugins(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->-$$Nest$fgetmPlugins(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setHasPlugins(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Lcom/samsung/systemui/splugins/SPlugin;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->-$$Nest$fgetmPluginContext(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v1, p0, v2}, Lcom/samsung/systemui/splugins/SPlugin;->onCreate(Landroid/content/Context;Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_0
    const/4 p0, 0x0

    .line 67
    return-object p0

    .line 68
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 69
    .line 70
    const-string v0, "Must be called from UI thread"

    .line 71
    .line 72
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0
.end method

.method public loadAll()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mIsPkgChanged:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onPackageChange(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mIsPkgChanged:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mIsPkgChanged:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onPackageUpdated(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mAction:Ljava/lang/String;

    .line 18
    .line 19
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "%s@%s (action=%s)"

    .line 24
    .line 25
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method
