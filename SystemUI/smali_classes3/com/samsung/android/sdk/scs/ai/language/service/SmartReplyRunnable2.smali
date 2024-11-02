.class public Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyRunnable2;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;"
    }
.end annotation


# instance fields
.field public authHeader:Ljava/util/Map;

.field public final extraPrompt:Ljava/util/Map;

.field public inputText:Ljava/lang/String;

.field public final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;",
            "Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>(Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyRunnable2;->extraPrompt:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyRunnable2;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyRunnable2$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyRunnable2$1;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyRunnable2;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyRunnable2;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;->service:Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyRunnable2;->authHeader:Ljava/util/Map;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyRunnable2;->inputText:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyRunnable2;->extraPrompt:Ljava/util/Map;

    .line 15
    .line 16
    check-cast v1, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$Proxy;

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$Proxy;->replyWithHeader3(Ljava/util/Map;Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver2;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public final getFeatureName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "FEATURE_AI_GEN_SMART_REPLY"

    .line 2
    .line 3
    return-object p0
.end method
