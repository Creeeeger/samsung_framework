.class public final Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $taskId:I

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

.field public final synthetic this$1:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;


# direct methods
.method public constructor <init>(ILcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;->$taskId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;->this$1:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    iget v1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;->$taskId:I

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    move-object v5, v2

    .line 31
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    .line 33
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 34
    .line 35
    if-ne v5, v1, :cond_1

    .line 36
    .line 37
    move v5, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v5, v3

    .line 40
    :goto_0
    if-eqz v5, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 v2, 0x0

    .line 44
    :goto_1
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 45
    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;->this$1:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;

    .line 51
    .line 52
    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 53
    .line 54
    if-ne v1, v4, :cond_3

    .line 55
    .line 56
    iget-boolean v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isCoverLauncherWidgetTask:Z

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    move v3, v4

    .line 61
    :cond_3
    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->coverTaskCache:Z

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;->callback:Ljava/util/function/Consumer;

    .line 64
    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    return-void
.end method
