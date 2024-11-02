.class public final Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$1;
.super Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

.field public final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$1;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$1;->val$params:Landroid/app/job/JobParameters;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;-><init>(Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final varargs doInBackground()Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$1;->val$params:Landroid/app/job/JobParameters;

    filled-new-array {v0}, [Landroid/app/job/JobParameters;

    invoke-super {p0}, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$ServerTask;->doInBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Landroid/app/job/JobParameters;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$1;->doInBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final onPostExecute()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$1;->this$0:Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService;

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDJobService$1;->onPostExecute()V

    return-void
.end method
