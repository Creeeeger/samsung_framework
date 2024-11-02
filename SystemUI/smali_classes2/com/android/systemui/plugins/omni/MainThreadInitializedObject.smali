.class public Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;,
        Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final MAIN_EXECUTOR:Lcom/android/systemui/plugins/omni/LooperExecutor;


# instance fields
.field private final mProvider:Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$bFGqnp1QL_0upmxa__KbdYBgHYw(Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;->lambda$get$0(Landroid/content/Context;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/omni/LooperExecutor;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/omni/LooperExecutor;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;->MAIN_EXECUTOR:Lcom/android/systemui/plugins/omni/LooperExecutor;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;->mProvider:Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;

    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$get$0(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;->mProvider:Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;

    .line 8
    .line 9
    invoke-static {p1, p0, v0}, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;->-$$Nest$mgetObject(Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$SandboxContext;Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;->mProvider:Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$ObjectProvider;->get(Landroid/content/Context;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;->MAIN_EXECUTOR:Lcom/android/systemui/plugins/omni/LooperExecutor;

    .line 42
    .line 43
    new-instance v1, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-object p0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    new-instance p1, Ljava/lang/RuntimeException;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/plugins/omni/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    .line 65
    .line 66
    return-object p0
.end method
