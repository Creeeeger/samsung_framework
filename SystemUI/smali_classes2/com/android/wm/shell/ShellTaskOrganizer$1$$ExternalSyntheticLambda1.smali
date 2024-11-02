.class public final synthetic Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/ShellTaskOrganizer$1;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer$1;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/ShellTaskOrganizer$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/ShellTaskOrganizer$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda1;->f$3:I

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/wm/shell/ShellTaskOrganizer$1;->this$0:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mForcedResizableController:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v3, "com.android.systemui"

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move v3, v4

    .line 40
    :goto_0
    if-eqz v3, :cond_2

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 44
    .line 45
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    .line 46
    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->isSpeg(Ljava/lang/String;I)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    new-instance v1, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;

    .line 69
    .line 70
    invoke-direct {v1, v0, v2, p0}, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;-><init>(Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    new-instance v1, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;

    .line 78
    .line 79
    invoke-direct {v1, v0, v2, p0}, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;-><init>(Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :goto_1
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 86
    .line 87
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mTimeoutRunnable:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    .line 93
    .line 94
    const-wide/16 v1, 0x3e8

    .line 95
    .line 96
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(JLjava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    :goto_2
    return-void
.end method
