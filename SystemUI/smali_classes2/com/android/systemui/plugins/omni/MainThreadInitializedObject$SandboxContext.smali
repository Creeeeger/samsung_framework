.class public abstract Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;
.super Landroid/content/ContextWrapper;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SandboxContext"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SandboxContext"


# instance fields
.field protected final mAllowedObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mDestroyLock:Ljava/lang/Object;

.field private mDestroyed:Z

.field protected final mObjectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOrderedObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FNjtrUQUIuU29d0FB97Iq7lNbUU(Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->lambda$getObject$0(Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetObject(Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->getObject(Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public varargs constructor <init>(Landroid/content/Context;[Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->mObjectMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->mOrderedObjects:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->mDestroyLock:Ljava/lang/Object;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->mDestroyed:Z

    .line 27
    .line 28
    new-instance p1, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->mAllowedObjects:Ljava/util/Set;

    .line 38
    .line 39
    return-void
.end method

.method private getObject(Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/plugins/omni/MainThreadInitializedObject<",
            "TT;>;",
            "Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "Leaking unknown objects "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->mDestroyLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->mDestroyed:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const-string v2, "SandboxContext"

    .line 11
    .line 12
    const-string v3, "Static object access with a destroyed context"

    .line 13
    .line 14
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->mObjectMap:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    monitor-exit v1

    .line 26
    return-object v2

    .line 27
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-ne v2, v3, :cond_4

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->createObject(Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v3, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->mAllowedObjects:Ljava/util/Set;

    .line 42
    .line 43
    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    instance-of v3, v2, Landroid/media/permission/SafeCloseable;

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, "  "

    .line 65
    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, " "

    .line 73
    .line 74
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->mObjectMap:Ljava/util/Map;

    .line 89
    .line 90
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->mOrderedObjects:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    monitor-exit v1

    .line 99
    return-object v2

    .line 100
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :try_start_1
    sget-object v0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;->MAIN_EXECUTOR:Lcom/android/systemui/plugins/omni/LooperExecutor;

    .line 102
    .line 103
    new-instance v1, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext$$ExternalSyntheticLambda0;

    .line 104
    .line 105
    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    return-object p0

    .line 117
    :catch_0
    move-exception p0

    .line 118
    new-instance p1, Ljava/lang/RuntimeException;

    .line 119
    .line 120
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    throw p0
.end method

.method private synthetic lambda$getObject$0(Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->getObject(Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public createObject(Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;->get(Landroid/content/Context;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onDestroy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->mDestroyLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->mOrderedObjects:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    sub-int/2addr v1, v2

    .line 12
    :goto_0
    if-ltz v1, :cond_1

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->mOrderedObjects:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    instance-of v4, v3, Landroid/media/permission/SafeCloseable;

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    check-cast v3, Landroid/media/permission/SafeCloseable;

    .line 25
    .line 26
    invoke-interface {v3}, Landroid/media/permission/SafeCloseable;->close()V

    .line 27
    .line 28
    .line 29
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->mDestroyed:Z

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method
