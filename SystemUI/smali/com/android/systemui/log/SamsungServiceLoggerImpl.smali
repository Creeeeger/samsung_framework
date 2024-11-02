.class public final Lcom/android/systemui/log/SamsungServiceLoggerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/log/SamsungServiceLogger;


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v7, Lcom/android/systemui/log/LogBuffer;

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    const/16 v5, 0x8

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    move-object v0, v7

    .line 11
    move-object v1, p1

    .line 12
    move v2, p2

    .line 13
    move-object v3, p4

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;-><init>(Ljava/lang/String;ILcom/android/systemui/log/LogcatEchoTracker;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    iput-object v7, p0, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 18
    .line 19
    invoke-virtual {p3, v7, p1}, Lcom/android/systemui/dump/DumpManager;->registerBuffer(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/log/SamsungServiceLoggerImpl$log$4;

    .line 2
    .line 3
    invoke-direct {v0, p3}, Lcom/android/systemui/log/SamsungServiceLoggerImpl$log$4;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final logWithThreadId(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/log/SamsungServiceLoggerImpl$logWithThreadId$2;

    .line 2
    .line 3
    invoke-direct {v0, p3}, Lcom/android/systemui/log/SamsungServiceLoggerImpl$logWithThreadId$2;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    .line 18
    .line 19
    .line 20
    move-result-wide p2

    .line 21
    invoke-interface {p1, p2, p3}, Lcom/android/systemui/log/LogMessage;->setThreadId(J)V

    .line 22
    .line 23
    .line 24
    const/16 p2, 0x7c

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-interface {p1, p2}, Lcom/android/systemui/log/LogMessage;->setTagSeparator(Ljava/lang/Character;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
