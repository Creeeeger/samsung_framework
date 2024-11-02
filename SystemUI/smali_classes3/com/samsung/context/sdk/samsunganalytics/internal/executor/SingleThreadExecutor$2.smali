.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$api:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$2;->val$api:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$2;->val$api:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;->run()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$2;->val$api:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;->onFinish()I

    .line 9
    .line 10
    .line 11
    return-void
.end method
