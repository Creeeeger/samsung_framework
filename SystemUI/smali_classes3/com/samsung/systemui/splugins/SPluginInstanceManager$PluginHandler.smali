.class Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/SPluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PluginHandler"
.end annotation


# static fields
.field private static final QUERY_ALL:I = 0x1

.field private static final QUERY_PKG:I = 0x2

.field private static final REMOVE_PKG:I = 0x3

.field private static final UPDATE_PKG:I = 0x5


# instance fields
.field private final mPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPlugins(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleQueryPlugins(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/SPluginInstanceManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method

.method private checkVersion(Ljava/lang/Class;Lcom/samsung/systemui/splugins/SPlugin;Lcom/samsung/systemui/splugins/SVersionInfo;)Lcom/samsung/systemui/splugins/SVersionInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;TT;",
            "Lcom/samsung/systemui/splugins/SVersionInfo;",
            ")",
            "Lcom/samsung/systemui/splugins/SVersionInfo;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/samsung/systemui/splugins/SVersionInfo;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/SVersionInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SVersionInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/SVersionInfo;->hasVersionInfo()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p3, p0}, Lcom/samsung/systemui/splugins/SVersionInfo;->checkVersion(Lcom/samsung/systemui/splugins/SVersionInfo;)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-interface {p2}, Lcom/samsung/systemui/splugins/SPlugin;->getVersion()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/SVersionInfo;->getDefaultVersion()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-ne p0, p1, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_1
    new-instance p0, Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;

    .line 33
    .line 34
    const-string p1, "Invalid legacy version"

    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method private handleQueryPlugins(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAction(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const-string v1, "com.samsung"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmPm(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmActivityManagerProxy(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->getCurrentUser()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x1

    .line 53
    if-le v1, v2, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAllowMultiple(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v0, "Multiple plugins found for "

    .line 66
    .line 67
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 71
    .line 72
    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAction(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string p1, "PluginInstanceManager"

    .line 84
    .line 85
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_3

    .line 94
    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 98
    .line 99
    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmPolicyInteractor(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1, p1}, Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;->applyUrgentOSUpgradePolicy(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 121
    .line 122
    new-instance v1, Landroid/content/ComponentName;

    .line 123
    .line 124
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 125
    .line 126
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 129
    .line 130
    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->handleLoadPlugin(Landroid/content/ComponentName;)Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-nez v0, :cond_4

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 141
    .line 142
    iget-object v1, v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;

    .line 143
    .line 144
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    return-void
.end method


# virtual methods
.method public handleLoadPlugin(Landroid/content/ComponentName;)Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-string v0, "PluginInstanceManager"

    .line 2
    .line 3
    const-string v1, "Plugin doesn\'t have permission: "

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 p1, 0x0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAllowMultipleUsers(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v9, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmPm(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 30
    .line 31
    invoke-static {v3}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmActivityManagerProxy(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->getCurrentUser()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v2, v8, v9, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmPm(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :goto_0
    iget-object v3, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 55
    .line 56
    invoke-static {v3}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmPm(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string v5, "com.samsung.systemui.permission.SPLUGIN"

    .line 61
    .line 62
    invoke-virtual {v3, v5, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmManager(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->getClassLoader(Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v6, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginContextWrapper;

    .line 95
    .line 96
    iget-object v3, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 97
    .line 98
    invoke-static {v3}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3, v2, v9}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-direct {v6, v2, v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    .line 107
    .line 108
    .line 109
    const/4 v2, 0x1

    .line 110
    invoke-static {v4, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    move-object v5, v2

    .line 119
    check-cast v5, Lcom/samsung/systemui/splugins/SPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    :try_start_1
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 122
    .line 123
    invoke-static {v2}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmVersion(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SVersionInfo;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-direct {p0, v1, v5, v2}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->checkVersion(Ljava/lang/Class;Lcom/samsung/systemui/splugins/SPlugin;Lcom/samsung/systemui/splugins/SVersionInfo;)Lcom/samsung/systemui/splugins/SVersionInfo;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 132
    .line 133
    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmPolicyInteractor(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1, v8}, Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;->onPluginLoaded(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    new-instance v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    .line 141
    .line 142
    move-object v2, v1

    .line 143
    move-object v3, v8

    .line 144
    invoke-direct/range {v2 .. v7}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;Lcom/samsung/systemui/splugins/SVersionInfo;)V
    :try_end_1
    .catch Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .line 146
    .line 147
    return-object v1

    .line 148
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 149
    .line 150
    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmPolicyInteractor(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1, v8}, Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;->onPluginLoadFailed(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 158
    .line 159
    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmListener(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-interface {p0, v9}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginLoadFailed(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    .line 165
    .line 166
    return-object p1

    .line 167
    :catchall_0
    move-exception p0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v2, "Couldn\'t load plugin: "

    .line 171
    .line 172
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .line 184
    .line 185
    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    iget v1, p1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v1, v3, :cond_6

    .line 10
    .line 11
    if-eq v1, v2, :cond_4

    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    if-eq v1, v4, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    sub-int/2addr p1, v3

    .line 31
    :goto_0
    if-ltz p1, :cond_8

    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    .line 40
    .line 41
    iget-object v2, v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;

    .line 52
    .line 53
    const/4 v3, 0x4

    .line 54
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    sub-int/2addr p1, v3

    .line 76
    :goto_1
    if-ltz p1, :cond_8

    .line 77
    .line 78
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    .line 85
    .line 86
    iget-object v3, v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    iget-object v3, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 95
    .line 96
    iget-object v3, v3, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;

    .line 97
    .line 98
    invoke-virtual {v3, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAllowMultiple(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_5

    .line 120
    .line 121
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_8

    .line 128
    .line 129
    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    sub-int/2addr p1, v3

    .line 140
    :goto_2
    if-ltz p1, :cond_7

    .line 141
    .line 142
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    .line 149
    .line 150
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 151
    .line 152
    iget-object v1, v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;

    .line 153
    .line 154
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    add-int/lit8 p1, p1, -0x1

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_7
    const/4 p1, 0x0

    .line 170
    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_8
    :goto_3
    return-void
.end method
