.class public final Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final DEBUG_LOG:Z

.field public static final ENABLE_PAUSE:Z


# instance fields
.field public anrCount:I

.field public final asyncRunnable:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;

.field public awakeCount:I

.field public final bgHandler:Landroid/os/Handler;

.field public final blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

.field public final display$delegate:Lkotlin/Lazy;

.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final handler:Landroid/os/Handler;

.field public volatile isPaused:Z

.field public lastAsyncMsgHandledTimed:J

.field public lastAwakeTime:J

.field public lastChoreographerLogCount:I

.field public lastChoreographerLogTime:J

.field public lastChoreographerTotalDrawCount:I

.field public lastDisplayState:I

.field public lastStackTrace:Ljava/lang/String;

.field public lastStackTraceTime:J

.field public final looper:Landroid/os/Looper;

.field public final looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field public looperMsgLog:Z

.field public looperSlowLog:Z

.field public final mainThread$delegate:Lkotlin/Lazy;

.field public final monitorThread$delegate:Lkotlin/Lazy;

.field public final onChoreographerLog:Lkotlin/jvm/functions/Function2;

.field public final runnable:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "UiThreadMonitor"

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput-boolean v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->DEBUG_LOG:Z

    .line 15
    .line 16
    const-string/jumbo v0, "user"

    .line 17
    .line 18
    .line 19
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    sput-boolean v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->ENABLE_PAUSE:Z

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->handler:Landroid/os/Handler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->bgHandler:Landroid/os/Handler;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 13
    .line 14
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    invoke-direct {p1, p2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 21
    .line 22
    new-instance p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$mainThread$2;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$mainThread$2;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->mainThread$delegate:Lkotlin/Lazy;

    .line 32
    .line 33
    new-instance p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$monitorThread$2;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$monitorThread$2;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->monitorThread$delegate:Lkotlin/Lazy;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looper:Landroid/os/Looper;

    .line 49
    .line 50
    iput-boolean p2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    .line 51
    .line 52
    new-instance p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$display$2;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$display$2;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->display$delegate:Lkotlin/Lazy;

    .line 62
    .line 63
    new-instance p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$onChoreographerLog$1;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$onChoreographerLog$1;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->onChoreographerLog:Lkotlin/jvm/functions/Function2;

    .line 69
    .line 70
    new-instance p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;

    .line 71
    .line 72
    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->runnable:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;

    .line 76
    .line 77
    new-instance p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;

    .line 78
    .line 79
    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->asyncRunnable:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;

    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->monitorThread$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Ljava/lang/Thread;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    .line 14
    .line 15
    iget v1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->mainThread$delegate:Lkotlin/Lazy;

    .line 18
    .line 19
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Thread;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-wide v3, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    .line 30
    .line 31
    invoke-static {v3, v4}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v5, "UiThreadMonitor state:\n  monitorThread state="

    .line 38
    .line 39
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p2, ", paused="

    .line 46
    .line 47
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p2, ", count="

    .line 54
    .line 55
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p2, "\n  mainThread state="

    .line 62
    .line 63
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p2, "\n  lastAsyncMsgHandledTime="

    .line 70
    .line 71
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTrace:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    iget-wide v1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    .line 86
    .line 87
    invoke-static {v1, v2}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p2, "\n  lastStackTrace=[\n"

    .line 100
    .line 101
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p2, "  ], "

    .line 108
    .line 109
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final setAwake(I)V
    .locals 8

    .line 1
    if-nez p1, :cond_2

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-boolean p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->DEBUG_LOG:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastDisplayState:I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq p1, v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    if-ne p1, v2, :cond_1

    .line 18
    .line 19
    :cond_0
    iget p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->awakeCount:I

    .line 20
    .line 21
    iget-wide v2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAwakeTime:J

    .line 22
    .line 23
    sub-long v2, v0, v2

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    iget-wide v6, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    .line 30
    .line 31
    sub-long/2addr v4, v6

    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v7, "onTick count="

    .line 35
    .line 36
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " "

    .line 43
    .line 44
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v2, "UiThreadMonitor"

    .line 61
    .line 62
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_1
    iput-wide v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAwakeTime:J

    .line 66
    .line 67
    iget p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->awakeCount:I

    .line 68
    .line 69
    add-int/lit8 p1, p1, 0x1

    .line 70
    .line 71
    iput p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->awakeCount:I

    .line 72
    .line 73
    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 74
    .line 75
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    :catchall_0
    return-void
.end method
