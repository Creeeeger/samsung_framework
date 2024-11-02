.class public final synthetic Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mTimeoutRunnable:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 6
    .line 7
    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    sub-int/2addr v1, v2

    .line 20
    :goto_0
    if-ltz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;

    .line 27
    .line 28
    new-instance v4, Landroid/content/Intent;

    .line 29
    .line 30
    const-class v5, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivity;

    .line 31
    .line 32
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-direct {v4, v6, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget v7, v3, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;->mTaskId:I

    .line 42
    .line 43
    invoke-virtual {v5, v7}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v2, v2}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 47
    .line 48
    .line 49
    const-string v7, "extra_forced_resizeable_reason"

    .line 50
    .line 51
    iget v3, v3, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;->mReason:I

    .line 52
    .line 53
    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    const/4 v7, 0x3

    .line 57
    const/high16 v8, 0x40000

    .line 58
    .line 59
    if-ne v3, v7, :cond_0

    .line 60
    .line 61
    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    const/4 v7, 0x4

    .line 66
    if-ne v3, v7, :cond_1

    .line 67
    .line 68
    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_1
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 76
    .line 77
    invoke-virtual {v6, v4, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v1, v1, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 84
    .line 85
    .line 86
    return-void
.end method
