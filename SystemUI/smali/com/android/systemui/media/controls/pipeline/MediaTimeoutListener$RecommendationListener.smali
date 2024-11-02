.class public final Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public cancellation:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public expiration:J

.field public final key:Ljava/lang/String;

.field public recommendationData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

.field public timedOut:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener;->key:Ljava/lang/String;

    .line 7
    .line 8
    const-wide v0, 0x7fffffffffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener;->expiration:J

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener;->recommendationData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 16
    .line 17
    iget-wide v2, p3, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->expiryTimeMs:J

    .line 18
    .line 19
    cmp-long v0, v2, v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-wide v0, p3, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    .line 24
    .line 25
    sub-long/2addr v2, v0

    .line 26
    iget-object p3, p1, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;

    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 32
    .line 33
    sget-object v1, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logRecommendationTimeoutScheduled$2;->INSTANCE:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logRecommendationTimeoutScheduled$2;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    iget-object p3, p3, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 37
    .line 38
    const-string v5, "MediaTimeout"

    .line 39
    .line 40
    invoke-virtual {p3, v5, v0, v1, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v2, v3}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener;->cancellation:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 54
    .line 55
    if-eqz p2, :cond_0

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 58
    .line 59
    .line 60
    :cond_0
    new-instance p2, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener$processUpdate$1;

    .line 61
    .line 62
    invoke-direct {p2, p0}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener$processUpdate$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 66
    .line 67
    invoke-interface {p1, v2, v3, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(JLjava/lang/Runnable;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener;->cancellation:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener;->recommendationData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 74
    .line 75
    iget-wide p1, p1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->expiryTimeMs:J

    .line 76
    .line 77
    iput-wide p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener;->expiration:J

    .line 78
    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public final doTimeout()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener;->cancellation:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener;->cancellation:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 19
    .line 20
    sget-object v4, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logTimeout$2;->INSTANCE:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logTimeout$2;

    .line 21
    .line 22
    const-string v5, "MediaTimeout"

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 25
    .line 26
    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v4, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener;->key:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v3, v4}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    iput-boolean v2, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener;->timedOut:Z

    .line 40
    .line 41
    const-wide v5, 0x7fffffffffffffffL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    iput-wide v5, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$RecommendationListener;->expiration:J

    .line 47
    .line 48
    iget-object p0, v1, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->timeoutCallback:Lkotlin/jvm/functions/Function2;

    .line 49
    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    move-object v0, p0

    .line 53
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-interface {v0, v4, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-void
.end method
