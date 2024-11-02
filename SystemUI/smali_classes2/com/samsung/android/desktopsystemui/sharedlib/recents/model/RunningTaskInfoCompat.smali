.class public Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private mInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getBaseIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 4
    .line 5
    return-object p0
.end method

.method public getDisplayId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 4
    .line 5
    return p0
.end method

.method public getLastActiveTime()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public getLastGainFocusTime()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->lastGainFocusTime:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public getSourceComponent()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 9
    .line 10
    :goto_0
    return-object v0
.end method

.method public getTaskId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    .line 5
    return p0
.end method

.method public getUserId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 4
    .line 5
    return p0
.end method

.method public getWindowingMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 4
    .line 5
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    .line 4
    .line 5
    return p0
.end method
