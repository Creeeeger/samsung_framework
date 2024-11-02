.class public final Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;


# static fields
.field public static sSkipCallCount:I = -0x1


# instance fields
.field public mDuration:J

.field public mLogger:Lcom/android/systemui/log/SamsungServiceLogger;

.field public final mMonitorInfo:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mMonitorInfo:Landroid/util/SparseArray;

    .line 10
    .line 11
    const-wide/16 v0, 0x1

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mDuration:J

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final startMonitoring(IJJ)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_3

    .line 3
    .line 4
    const/4 v1, 0x6

    .line 5
    if-ge p1, v1, :cond_3

    .line 6
    .line 7
    const-wide/16 v1, 0x1

    .line 8
    .line 9
    cmp-long v1, p2, v1

    .line 10
    .line 11
    if-ltz v1, :cond_3

    .line 12
    .line 13
    const-wide/16 v1, 0xbb8

    .line 14
    .line 15
    cmp-long v1, p4, v1

    .line 16
    .line 17
    if-ltz v1, :cond_3

    .line 18
    .line 19
    const-wide/16 v1, 0x1f40

    .line 20
    .line 21
    cmp-long v1, p4, v1

    .line 22
    .line 23
    if-lez v1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mMonitorInfo:Landroid/util/SparseArray;

    .line 27
    .line 28
    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mMonitorInfo:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    new-instance v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;-><init>(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    const-wide/32 v3, 0xf4240

    .line 45
    .line 46
    .line 47
    mul-long/2addr p2, v3

    .line 48
    iput-wide p2, v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->duration:J

    .line 49
    .line 50
    const/4 p2, 0x1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    iput-boolean p2, v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->infinite:Z

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    add-long/2addr v3, p4

    .line 61
    iput-wide v3, v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->timeOut:J

    .line 62
    .line 63
    :goto_0
    iput-boolean p2, v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->enabled:Z

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mMonitorInfo:Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    monitor-exit v1

    .line 71
    return p2

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0

    .line 75
    :cond_3
    :goto_1
    const-string p0, "BinderCallMonitor"

    .line 76
    .line 77
    const-string p1, "not monitoring started"

    .line 78
    .line 79
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    return v0
.end method

.method public final startMonitoring$1(I)Z
    .locals 10

    .line 1
    sget-wide v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->MAX_DURATION:J

    .line 2
    .line 3
    const-wide/32 v2, 0xf4240

    .line 4
    .line 5
    .line 6
    div-long v6, v0, v2

    .line 7
    .line 8
    const-wide/16 v8, 0x1f40

    .line 9
    .line 10
    move-object v4, p0

    .line 11
    move v5, p1

    .line 12
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->startMonitoring(IJJ)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method
