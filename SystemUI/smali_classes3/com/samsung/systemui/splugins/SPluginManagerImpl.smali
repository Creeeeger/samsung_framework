.class public Lcom/samsung/systemui/splugins/SPluginManagerImpl;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;,
        Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;,
        Lcom/samsung/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;,
        Lcom/samsung/systemui/splugins/SPluginManagerImpl$CrashWhilePluginActiveException;
    }
.end annotation


# static fields
.field private static final ALL_SPLUGIN_DISABLED:Ljava/lang/String; = "all_splugin_disabled"

.field static final DISABLE_PLUGIN:Ljava/lang/String; = "com.samsung.systemui.action.DISABLE_PLUGIN"

.field static final IGNORE_EXCEPTION:[Ljava/lang/String;

.field private static final MAX_EXCEPTION_COUNT:I = 0x5

.field private static final MAX_EXCEPTION_TIME:I = 0x2bf20

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/systemui/splugins/SPluginManager;


# instance fields
.field private final isDebuggable:Z

.field private final mAllowedPlugins:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mClassLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFactory:Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;

.field private mHasOneShot:Z

.field private mListening:Z

.field private mLooper:Landroid/os/Looper;

.field private final mOneShotPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParentClassLoader:Lcom/samsung/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

.field private final mPluginMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "*>;",
            "Lcom/samsung/systemui/splugins/SPluginInstanceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSPluginEnabler:Lcom/samsung/systemui/splugins/SPluginEnabler;

.field private final mSPluginInitializer:Lcom/samsung/systemui/splugins/SPluginInitializer;

.field private final mSPluginPrefs:Lcom/samsung/systemui/splugins/SPluginPrefs;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPluginMap(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 2
    .line 3
    const-string v0, "SPluginManagerImpl"

    .line 4
    .line 5
    sput-object v0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "com.samsung.android.mateagent"

    .line 8
    .line 9
    const-string v1, "com.samsung.android.app.aodservice"

    .line 10
    .line 11
    const-string v2, "com.samsung.systemui.bixby"

    .line 12
    .line 13
    const-string v3, "com.samsung.systemui.bixby2"

    .line 14
    .line 15
    const-string v4, "com.samsung.android.dynamiclock"

    .line 16
    .line 17
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->IGNORE_EXCEPTION:[Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/SPluginInitializer;Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;)V
    .locals 6

    .line 1
    new-instance v2, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;

    invoke-direct {v2}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;-><init>()V

    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;-><init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;ZLcom/samsung/systemui/splugins/SPluginInitializer;Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;ZLcom/samsung/systemui/splugins/SPluginInitializer;Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    .line 5
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    .line 6
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mAllowedPlugins:Landroid/util/ArraySet;

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mFactory:Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;

    .line 9
    invoke-interface {p4}, Lcom/samsung/systemui/splugins/SPluginInitializer;->getBgLooper()Landroid/os/Looper;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mLooper:Landroid/os/Looper;

    .line 10
    iput-boolean p3, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->isDebuggable:Z

    .line 11
    invoke-interface {p4, p1}, Lcom/samsung/systemui/splugins/SPluginInitializer;->getAllowedPlugins(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 12
    new-instance p2, Lcom/samsung/systemui/splugins/SPluginPrefs;

    invoke-direct {p2, p1}, Lcom/samsung/systemui/splugins/SPluginPrefs;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mSPluginPrefs:Lcom/samsung/systemui/splugins/SPluginPrefs;

    .line 13
    invoke-interface {p4, p1}, Lcom/samsung/systemui/splugins/SPluginInitializer;->getPluginEnabler(Landroid/content/Context;)Lcom/samsung/systemui/splugins/SPluginEnabler;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mSPluginEnabler:Lcom/samsung/systemui/splugins/SPluginEnabler;

    .line 14
    iput-object p4, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mSPluginInitializer:Lcom/samsung/systemui/splugins/SPluginInitializer;

    .line 15
    new-instance p1, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/samsung/systemui/splugins/SPluginManagerImpl;I)V

    invoke-virtual {p5, p1}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->registerHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 16
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;

    invoke-direct {p2, p0, p4}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;-><init>(Lcom/samsung/systemui/splugins/SPluginManagerImpl;Lcom/samsung/systemui/splugins/SPluginInitializer;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    invoke-static {}, Lcom/samsung/systemui/splugins/SPluginVersions;->initVersion()V

    return-void
.end method

.method private clearClassLoader(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method private isPluginLockPackage(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string p0, "com.samsung.android.dynamiclock"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    const-string p0, "com.samsung.android.mateagent"

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method private startListening()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mListening:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mListening:Z

    .line 8
    .line 9
    new-instance v0, Landroid/content/IntentFilter;

    .line 10
    .line 11
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "package"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 49
    .line 50
    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    .line 54
    .line 55
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 56
    .line 57
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private stopListening()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mListening:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mHasOneShot:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mListening:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lcom/samsung/systemui/splugins/SPluginManager$Helper;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;ZZ)V

    return-void
.end method

.method public addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation

    .line 3
    invoke-static {p2}, Lcom/samsung/systemui/splugins/SPluginManager$Helper;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;ZZ)V

    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;ZZ)V

    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class;",
            "ZZ)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mSPluginPrefs:Lcom/samsung/systemui/splugins/SPluginPrefs;

    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/SPluginPrefs;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mFactory:Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;

    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mLooper:Landroid/os/Looper;

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p5

    move-object v8, p3

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;->createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Ljava/lang/Class;Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->loadAll()V

    .line 8
    iget-object p3, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->startListening()V

    return-void
.end method

.method public dependsOn(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Z
    .locals 3
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
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 18
    .line 19
    invoke-virtual {v2, p1, p2}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->dependsOn(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p3, "  plugin map (%d):"

    .line 16
    .line 17
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-eqz p3, :cond_0

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    check-cast p3, Lcom/samsung/systemui/splugins/SPluginListener;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    filled-new-array {p3, v0}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    const-string v0, "    %s -> %s"

    .line 57
    .line 58
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public getAllowedPlugins()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mAllowedPlugins:Landroid/util/ArraySet;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, [Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method

.method public getClassLoader(Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    .line 12
    .line 13
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/ClassLoader;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-static {v2, v3, p1, v0, v1}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Ldalvik/system/PathClassLoader;

    .line 38
    .line 39
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->getParentClassLoader()Ljava/lang/ClassLoader;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-direct {v2, v0, v1, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    .line 57
    .line 58
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-object v2
.end method

.method public getOneShotPlugin(Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SPlugin;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;->action()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;->action()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->getOneShotPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SPlugin;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t provide an action"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t provide an interface"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOneShotPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SPlugin;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v5, 0x0

    .line 7
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mFactory:Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;

    iget-object v3, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mLooper:Landroid/os/Looper;

    move-object v4, p1

    move-object v9, p2

    move-object v10, p0

    invoke-virtual/range {v2 .. v10}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;->createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Ljava/lang/Class;Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mSPluginPrefs:Lcom/samsung/systemui/splugins/SPluginPrefs;

    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/SPluginPrefs;->addAction(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->getPlugin()Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    iget-object v0, p1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mHasOneShot:Z

    .line 12
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->startListening()V

    .line 13
    iget-object p0, p1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/systemui/splugins/SPlugin;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Must be called from UI thread"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getParentClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mParentClassLoader:Lcom/samsung/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "com.android.systemui.plugin"

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mParentClassLoader:Lcom/samsung/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mParentClassLoader:Lcom/samsung/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

    .line 23
    .line 24
    return-object p0
.end method

.method public getPluginEnabler()Lcom/samsung/systemui/splugins/SPluginEnabler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mSPluginEnabler:Lcom/samsung/systemui/splugins/SPluginEnabler;

    .line 2
    .line 3
    return-object p0
.end method

.method public handleWtfs()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mSPluginInitializer:Lcom/samsung/systemui/splugins/SPluginInitializer;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/SPluginInitializer;->handleWtfs()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "onReceive: "

    .line 8
    .line 9
    const-string v2, ", size:"

    .line 10
    .line 11
    invoke-static {v1, p1, v2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_9

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->loadAll()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const-string v0, "com.samsung.systemui.action.DISABLE_PLUGIN"

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v1, 0x6

    .line 72
    const/4 v2, 0x1

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/16 p2, 0xa

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mAllowedPlugins:Landroid/util/ArraySet;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_1

    .line 104
    .line 105
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->getPluginEnabler()Lcom/samsung/systemui/splugins/SPluginEnabler;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-interface {p2, p1, v2}, Lcom/samsung/systemui/splugins/SPluginEnabler;->setDisabled(Landroid/content/ComponentName;I)V

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    const-class p2, Landroid/app/NotificationManager;

    .line 116
    .line 117
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Landroid/app/NotificationManager;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p0, p1, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_4

    .line 131
    .line 132
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    iget-object v4, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    .line 145
    .line 146
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    const/4 v5, 0x2

    .line 151
    const/4 v6, 0x0

    .line 152
    if-eqz v4, :cond_3

    .line 153
    .line 154
    iget-object v4, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    iget-object v7, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    .line 161
    .line 162
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    const-string v8, "tuner"

    .line 167
    .line 168
    const-string v9, "drawable"

    .line 169
    .line 170
    invoke-virtual {v4, v8, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    const-string v8, "color"

    .line 179
    .line 180
    const-string v9, "android"

    .line 181
    .line 182
    const-string v10, "system_notification_accent_color"

    .line 183
    .line 184
    invoke-virtual {v7, v10, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    :try_start_0
    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    .line 189
    .line 190
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-virtual {v8, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    invoke-virtual {v9, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_1

    .line 207
    :catch_0
    move-object v8, v0

    .line 208
    :goto_1
    new-instance v9, Landroid/app/Notification$Builder;

    .line 209
    .line 210
    iget-object v10, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    .line 211
    .line 212
    const-string v11, "ALR"

    .line 213
    .line 214
    invoke-direct {v9, v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    const-wide/16 v9, 0x0

    .line 222
    .line 223
    invoke-virtual {v4, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    iget-object v9, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    .line 240
    .line 241
    invoke-virtual {v9, v7}, Landroid/content/Context;->getColor(I)I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    new-instance v7, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v9, "Plugin \""

    .line 252
    .line 253
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v8, "\" has updated"

    .line 260
    .line 261
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    const-string v7, "Restart SysUI for changes to take effect."

    .line 273
    .line 274
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    new-instance v7, Landroid/content/Intent;

    .line 279
    .line 280
    const-string v8, "com.android.systemui.action.RESTART"

    .line 281
    .line 282
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    new-instance v8, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v9, "package://"

    .line 288
    .line 289
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v8

    .line 299
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    .line 308
    .line 309
    invoke-static {v8, v6, v7, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    new-instance v8, Landroid/app/Notification$Action$Builder;

    .line 314
    .line 315
    const/4 v9, 0x0

    .line 316
    const-string v10, "Restart SysUI"

    .line 317
    .line 318
    invoke-direct {v8, v9, v10, v7}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v8}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 326
    .line 327
    .line 328
    iget-object v7, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    .line 329
    .line 330
    const-class v8, Landroid/app/NotificationManager;

    .line 331
    .line 332
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    check-cast v7, Landroid/app/NotificationManager;

    .line 337
    .line 338
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 343
    .line 344
    invoke-virtual {v7, v0, v1, v4, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 345
    .line 346
    .line 347
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->clearClassLoader(Ljava/lang/String;)Z

    .line 348
    .line 349
    .line 350
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 351
    .line 352
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-eqz v4, :cond_5

    .line 357
    .line 358
    if-eqz v3, :cond_5

    .line 359
    .line 360
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->getPluginEnabler()Lcom/samsung/systemui/splugins/SPluginEnabler;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    invoke-interface {v4, v3}, Lcom/samsung/systemui/splugins/SPluginEnabler;->getDisableReason(Landroid/content/ComponentName;)I

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-eq v4, v5, :cond_4

    .line 369
    .line 370
    const/4 v5, 0x3

    .line 371
    if-eq v4, v5, :cond_4

    .line 372
    .line 373
    if-ne v4, v2, :cond_5

    .line 374
    .line 375
    :cond_4
    sget-object v2, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->TAG:Ljava/lang/String;

    .line 376
    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    const-string v5, "Re-enabling previously disabled plugin that has been updated: "

    .line 380
    .line 381
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v5

    .line 388
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->getPluginEnabler()Lcom/samsung/systemui/splugins/SPluginEnabler;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-interface {v2, v3}, Lcom/samsung/systemui/splugins/SPluginEnabler;->setEnabled(Landroid/content/ComponentName;)V

    .line 403
    .line 404
    .line 405
    :cond_5
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 406
    .line 407
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    if-nez v2, :cond_7

    .line 412
    .line 413
    invoke-direct {p0, v0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->isPluginLockPackage(Ljava/lang/String;)Z

    .line 414
    .line 415
    .line 416
    move-result p2

    .line 417
    if-eqz p2, :cond_6

    .line 418
    .line 419
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    if-eqz p1, :cond_6

    .line 424
    .line 425
    return-void

    .line 426
    :cond_6
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 427
    .line 428
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 433
    .line 434
    .line 435
    move-result-object p0

    .line 436
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    if-eqz p1, :cond_9

    .line 441
    .line 442
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    check-cast p1, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 447
    .line 448
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->onPackageChange(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    goto :goto_2

    .line 452
    :cond_7
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 453
    .line 454
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-eqz v1, :cond_9

    .line 467
    .line 468
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    check-cast v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 473
    .line 474
    invoke-direct {p0, v0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->isPluginLockPackage(Ljava/lang/String;)Z

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    if-eqz v2, :cond_8

    .line 479
    .line 480
    const-string v2, "android.intent.extra.DATA_REMOVED"

    .line 481
    .line 482
    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    if-nez v2, :cond_8

    .line 487
    .line 488
    invoke-virtual {v1, v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->onPackageUpdated(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    goto :goto_3

    .line 492
    :cond_8
    invoke-virtual {v1, v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->onPackageRemoved(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    goto :goto_3

    .line 496
    :cond_9
    :goto_4
    return-void
.end method

.method public removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->destroy()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->stopListening()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
