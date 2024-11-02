.class public Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;
.super Landroid/app/job/JobService;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public serverTask:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;->serverTask:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$1;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "Job Started : "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$1;

    .line 25
    .line 26
    invoke-direct {v0, p0, p1}, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$1;-><init>(Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;Landroid/app/job/JobParameters;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;->serverTask:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$1;

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    new-array p0, p0, [Landroid/app/job/JobParameters;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;->serverTask:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$1;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    return p1
.end method
