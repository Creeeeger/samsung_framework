.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static executorService:Ljava/util/concurrent/ExecutorService;

.field public static singleThreadExecutor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sput-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    return-void
.end method

.method public static getInstance()Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->singleThreadExecutor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->singleThreadExecutor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->singleThreadExecutor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final execute(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$2;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 9
    .line 10
    .line 11
    return-void
.end method
