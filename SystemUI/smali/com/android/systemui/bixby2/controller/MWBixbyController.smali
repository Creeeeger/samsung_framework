.class public Lcom/android/systemui/bixby2/controller/MWBixbyController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bixby2/controller/MWBixbyController$SplitState;
    }
.end annotation


# static fields
.field private static final DEFAULT_SPLIT_RATIO:F = 0.5f

.field private static final INVALID_TASK:I = -0x1

.field protected static final MultiWindowType:Ljava/lang/String; = "MultiWindow"

.field protected static final PopupType:Ljava/lang/String; = "Popup"

.field public static final SPLIT_STATE_NONE:I = 0x0

.field public static final SPLIT_STATE_THREE:I = 0x2

.field public static final SPLIT_STATE_TWO:I = 0x1

.field protected static final STR_SPLIT_BOTTOM:Ljava/lang/String; = "bottom"

.field protected static final STR_SPLIT_LEFT:Ljava/lang/String; = "left"

.field protected static final STR_SPLIT_RIGHT:Ljava/lang/String; = "right"

.field protected static final STR_SPLIT_TOP:Ljava/lang/String; = "top"

.field private static final TAG:Ljava/lang/String; = "MWBixbyController"


# instance fields
.field private mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field protected mIActivityTaskManager:Landroid/app/IActivityTaskManager;

.field protected mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field private final mVisibleTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AdWnZMW-AlaMa9XvcxxEFsV9bfY(Lcom/android/systemui/bixby2/controller/MWBixbyController;[Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$isVerticalDivision$8([Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$HDdQO6yXx55WcPPyRIia8VnNEx4(Lcom/android/systemui/bixby2/controller/MWBixbyController;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$getMainStagePositionExt$6([I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$LJpOjj6KyxBuK_ClT5rclldDBEY(Lcom/android/systemui/bixby2/controller/MWBixbyController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$exchangePositionOfSplitScreen$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Nb2UGAt8YvpngOvORbs1xAeSV0E(Lcom/android/systemui/bixby2/controller/MWBixbyController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$changeLayoutOfSplitScreen$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$QxBoQJMHc9TuodMSFaNaQiPkXxU(Lcom/android/systemui/bixby2/controller/MWBixbyController;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$startIntents$4(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Xg8A6KFdO1HNxu0areYq4UtDAqg(Lcom/android/systemui/bixby2/controller/MWBixbyController;[Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$isSplitScreenVisible$5([Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$bmlaWddPJja5wv40bVtFDnIPQ2M(Lcom/android/systemui/bixby2/controller/MWBixbyController;Landroid/content/Intent;Landroid/os/UserHandle;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$startIntent$3(Landroid/content/Intent;Landroid/os/UserHandle;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$pSwgOGmGUcL5xBb97Nk0G4cengo(Lcom/android/systemui/bixby2/controller/MWBixbyController;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$startTargetTaskToFreeform$2(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$yB0BvVQTEcHsAczws_oFNJXtZpw(Lcom/android/systemui/bixby2/controller/MWBixbyController;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->lambda$startTasks$7(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 16
    .line 17
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mIActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 22
    .line 23
    return-void
.end method

.method private checkSupportsMultiWindow(Landroid/app/ActivityManager$RunningTaskInfo;Z)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "NoExistForegroundApp"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isHomeOrRecentsTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    iget-boolean p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->originallySupportedMultiWindow:Z

    .line 17
    .line 18
    if-nez p0, :cond_3

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    const-string p0, "NoSupportSplitForegroundApp"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const-string p0, "NoSupportPopupForegroundApp"

    .line 26
    .line 27
    :goto_0
    return-object p0

    .line 28
    :cond_3
    const-string/jumbo p0, "success"

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public static convertToStagePosition(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, -0x1

    .line 10
    sparse-switch v0, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :sswitch_0
    const-string/jumbo v0, "right"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x3

    .line 25
    goto :goto_0

    .line 26
    :sswitch_1
    const-string v0, "left"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x2

    .line 36
    goto :goto_0

    .line 37
    :sswitch_2
    const-string/jumbo v0, "top"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v2, 0x1

    .line 48
    goto :goto_0

    .line 49
    :sswitch_3
    const-string v0, "bottom"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move v2, v1

    .line 59
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    return v1

    .line 63
    :pswitch_0
    const/16 p0, 0x20

    .line 64
    .line 65
    return p0

    .line 66
    :pswitch_1
    const/16 p0, 0x8

    .line 67
    .line 68
    return p0

    .line 69
    :pswitch_2
    const/16 p0, 0x10

    .line 70
    .line 71
    return p0

    .line 72
    :pswitch_3
    const/16 p0, 0x40

    .line 73
    .line 74
    return p0

    .line 75
    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        0x1c155 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch

    .line 76
    .line 77
    .line 78
    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findTaskInfoByPackageName(Ljava/lang/String;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    .line 19
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_1
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_2
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 60
    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_0

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_3
    const/4 p0, 0x0

    .line 75
    return-object p0
.end method

.method private findTopTaskInfoByStagePosition(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    .line 19
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 20
    .line 21
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ne v1, p1, :cond_0

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method private getActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 1
    new-instance p0, Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/16 p2, 0x80

    .line 11
    .line 12
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method private getCurrentSplitState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMultiSplitScreenVisible()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x2

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isSplitScreenVisible()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method private getMainStagePositionExt()I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 5
    .line 6
    new-instance v3, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda3;

    .line 7
    .line 8
    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 p0, 0x0

    .line 20
    aget p0, v1, p0

    .line 21
    .line 22
    return p0
.end method

.method private getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method private getTopVisibleFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method private isHomeOrRecentsTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 p1, 0x3

    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
.end method

.method private isSplitScreenVisible()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Boolean;

    .line 3
    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 5
    .line 6
    new-instance v3, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda5;

    .line 7
    .line 8
    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;[Ljava/lang/Boolean;I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 p0, 0x0

    .line 20
    aget-object p0, v1, p0

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method private isSupportMultiWindow(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.MAIN"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/high16 p2, 0x20000

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object p2, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string/jumbo v1, "ris = "

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ResolveInfo;)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    const-string p1, "MultiWindowModes = "

    .line 67
    .line 68
    invoke-static {p1, p0, p2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    and-int/lit8 p0, p0, 0x2

    .line 72
    .line 73
    if-eqz p0, :cond_0

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    :cond_0
    return v0
.end method

.method private isVerticalDivision()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Boolean;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 6
    .line 7
    new-instance v3, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda5;

    .line 8
    .line 9
    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;[Ljava/lang/Boolean;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    aget-object p0, v0, v1

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method private synthetic lambda$changeLayoutOfSplitScreen$1()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->rotateMultiSplitWithTransition()Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$exchangePositionOfSplitScreen$0()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->swapTasksInSplitScreenMode()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$getMainStagePositionExt$6([I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainStagePositionExt()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    aput p0, p1, v0

    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$isSplitScreenVisible$5([Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    aput-object p0, p1, v0

    .line 13
    .line 14
    return-void
.end method

.method private synthetic lambda$isVerticalDivision$8([Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    aput-object p0, p1, v0

    .line 13
    .line 14
    return-void
.end method

.method private synthetic lambda$startIntent$3(Landroid/content/Intent;Landroid/os/UserHandle;II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$startIntents$4(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 3
    .line 4
    const/4 v8, 0x0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move v5, p5

    .line 10
    move v6, p6

    .line 11
    move/from16 v7, p7

    .line 12
    .line 13
    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFILandroid/window/RemoteTransition;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic lambda$startTargetTaskToFreeform$2(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveSplitToFreeform(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$startTasks$7(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 3
    .line 4
    const/4 v8, 0x0

    .line 5
    move v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move v5, p5

    .line 10
    move v6, p6

    .line 11
    move-object/from16 v7, p7

    .line 12
    .line 13
    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private makeLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Landroid/content/Intent;

    .line 7
    .line 8
    const-string v0, "android.intent.action.MAIN"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/content/ComponentName;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string p1, "android.intent.category.LAUNCHER"

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const/high16 p1, 0x10200000

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method private moveTaskToFront(ILandroid/content/Context;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mIActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 2
    .line 3
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    move v3, p1

    .line 18
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityTaskManager;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private startActivityByBixby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v2, "android.intent.action.MAIN"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "android.intent.category.LAUNCHER"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    new-instance v2, Landroid/content/ComponentName;

    .line 22
    .line 23
    invoke-direct {v2, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const-string p2, "from-bixby"

    .line 30
    .line 31
    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const/high16 p2, 0x10200000

    .line 35
    .line 36
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return v0

    .line 47
    :catch_0
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method private startFreeform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->updateVisibleTasks()V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startTopTaskToFreeform()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    if-eqz p2, :cond_4

    .line 14
    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isSupportMultiWindow(Landroid/content/Context;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const-string v1, "NoSupportPopup"

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getVisibleSingleInstance(Landroid/content/pm/ActivityInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string/jumbo v2, "success"

    .line 36
    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startTargetTaskToFreeform(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    return-object v2

    .line 44
    :cond_3
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->makeLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const/4 p3, 0x5

    .line 53
    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    :catch_0
    return-object v1

    .line 65
    :cond_4
    :goto_0
    const-string p0, "fail"

    .line 66
    .line 67
    return-object p0
.end method

.method private startIntent(Landroid/content/Intent;Landroid/os/UserHandle;II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    .line 3
    new-instance v7, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move v5, p3

    .line 10
    move v6, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;Landroid/content/Intent;Landroid/os/UserHandle;II)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 15
    .line 16
    invoke-virtual {v0, v7}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private startIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)V
    .locals 11

    .line 1
    move-object v1, p0

    .line 2
    iget-object v9, v1, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 3
    .line 4
    new-instance v10, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda1;

    .line 5
    .line 6
    move-object v0, v10

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move/from16 v6, p5

    .line 12
    .line 13
    move/from16 v7, p6

    .line 14
    .line 15
    move/from16 v8, p7

    .line 16
    .line 17
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)V

    .line 18
    .line 19
    .line 20
    check-cast v9, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 21
    .line 22
    invoke-virtual {v9, v10}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private startSplitScreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->updateVisibleTasks()V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    if-nez p4, :cond_0

    .line 9
    .line 10
    if-nez p5, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startTopTaskToSplit()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isSupportMultiWindow(Landroid/content/Context;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string p0, "NoSupportSplitFirstApp"

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isSupportMultiWindow(Landroid/content/Context;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    const-string p0, "NoSupportSplitSecondApp"

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->makeLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-direct {p0, p4, p5}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->makeLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string/jumbo v8, "success"

    .line 56
    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    if-eqz v5, :cond_3

    .line 61
    .line 62
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    const/high16 v6, 0x3f000000    # 0.5f

    .line 66
    .line 67
    const/4 v7, -0x1

    .line 68
    move-object v0, p0

    .line 69
    move-object v1, v2

    .line 70
    move-object v2, v5

    .line 71
    move-object v3, v4

    .line 72
    move v5, p1

    .line 73
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)V

    .line 74
    .line 75
    .line 76
    return-object v8

    .line 77
    :cond_3
    if-eqz p2, :cond_4

    .line 78
    .line 79
    invoke-direct {p0, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->findTaskInfoByPackageName(Ljava/lang/String;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const/4 v0, 0x0

    .line 85
    :goto_0
    if-eqz v0, :cond_5

    .line 86
    .line 87
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 88
    .line 89
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 90
    .line 91
    invoke-static {v1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    iget p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 98
    .line 99
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->moveTaskToFront(ILandroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    return-object v8

    .line 103
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isSplitScreenVisible()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_6

    .line 108
    .line 109
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getTopVisibleFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const/4 v1, 0x1

    .line 114
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSupportsMultiWindow(Landroid/app/ActivityManager$RunningTaskInfo;Z)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_6

    .line 123
    .line 124
    return-object v0

    .line 125
    :cond_6
    if-eqz v2, :cond_7

    .line 126
    .line 127
    const/4 v5, 0x0

    .line 128
    move-object v0, p0

    .line 129
    move-object v1, p1

    .line 130
    move-object v3, p2

    .line 131
    move-object v4, p3

    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startSplitScreenSingleIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0

    .line 137
    :cond_7
    const/4 v8, 0x1

    .line 138
    move-object v3, p0

    .line 139
    move-object v4, p1

    .line 140
    move-object v6, p4

    .line 141
    move-object v7, p5

    .line 142
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startSplitScreenSingleIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0
.end method

.method private startSplitScreenSingleIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getVisibleSingleInstance(Landroid/content/pm/ActivityInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p0, "NoSupportMultiWindow"

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 15
    .line 16
    const/4 p3, -0x1

    .line 17
    invoke-direct {p0, p2, p1, p5, p3}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;II)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo p0, "success"

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method private startTargetTaskToFreeform(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x5

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 10
    .line 11
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 20
    .line 21
    new-instance v1, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda3;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mIActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 34
    .line 35
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {p0, p1, v0}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    const-string/jumbo p0, "success"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :catch_0
    const-string p0, "NoSupportPopup"

    .line 49
    .line 50
    return-object p0
.end method

.method private startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 11

    .line 1
    move-object v1, p0

    .line 2
    iget-object v9, v1, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 3
    .line 4
    new-instance v10, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    move-object v0, v10

    .line 7
    move v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move/from16 v6, p5

    .line 12
    .line 13
    move/from16 v7, p6

    .line 14
    .line 15
    move-object/from16 v8, p7

    .line 16
    .line 17
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V

    .line 18
    .line 19
    .line 20
    check-cast v9, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 21
    .line 22
    invoke-virtual {v9, v10}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private startTopTaskToFreeform()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSupportsMultiWindow(Landroid/app/ActivityManager$RunningTaskInfo;Z)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string/jumbo v2, "success"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startTargetTaskToFreeform(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method private startTopTaskToSplit()Ljava/lang/String;
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getTopVisibleFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSupportsMultiWindow(Landroid/app/ActivityManager$RunningTaskInfo;Z)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string/jumbo v2, "success"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, -0x1

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, -0x1

    .line 26
    const/4 v10, 0x0

    .line 27
    const/4 v11, 0x0

    .line 28
    move-object v4, p0

    .line 29
    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V

    .line 30
    .line 31
    .line 32
    return-object v2
.end method

.method private updateVisibleTasks()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public changeLayoutOfSplitScreen(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Position:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "changeLayoutOfSplitScreen,  position = "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-string v1, "fail"

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getCurrentSplitState()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x1

    .line 36
    if-ne v0, v2, :cond_4

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isVerticalDivision()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string/jumbo v0, "top"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isVerticalDivision()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    const-string v0, "left"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 68
    .line 69
    new-instance v0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda4;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;I)V

    .line 73
    .line 74
    .line 75
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    const-string/jumbo p0, "success"

    .line 81
    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_4
    return-object v1
.end method

.method public checkSplitState()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getCurrentSplitState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getMainStagePositionExt()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/16 v0, 0x10

    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x40

    .line 17
    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "LeftRight"

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const-string p0, "TopBottom"

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    const/4 p0, 0x2

    .line 28
    if-ne v0, p0, :cond_3

    .line 29
    .line 30
    const-string p0, "3Split"

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    const-string p0, "NonSplit"

    .line 34
    .line 35
    :goto_1
    new-instance v0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 36
    .line 37
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public checkSupportMultiSplit()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    .line 1
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string p0, "MultiSplit"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p0, "Split"

    .line 9
    .line 10
    :goto_0
    new-instance v0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public checkSupportMultiWindow(Landroid/content/Context;Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Type:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v1, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "checkSupportMultiWindow()   type = "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p2, ", packageName = "

    .line 18
    .line 19
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_0

    .line 37
    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isSupportMultiWindow(Landroid/content/Context;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    const-string p0, "checkSupportMultiWindow - RESULT_RESIZABLE"

    .line 45
    .line 46
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const-string p0, "Resizable"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string p0, "UnResizable"

    .line 53
    .line 54
    :goto_0
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 55
    .line 56
    const/4 p2, 0x1

    .line 57
    invoke-direct {p1, p2, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object p1
.end method

.method public checkTopFullscreenHomeOrRecents()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->updateVisibleTasks()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ne v3, v2, :cond_0

    .line 28
    .line 29
    invoke-direct {p0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isHomeOrRecentsTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    move p0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    :goto_0
    if-eqz p0, :cond_2

    .line 39
    .line 40
    const-string p0, "Visible"

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const-string p0, "Invisible"

    .line 44
    .line 45
    :goto_1
    new-instance v0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 46
    .line 47
    invoke-direct {v0, v2, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method public exchangePositionOfSplitScreen(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Position:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "exchangePositionOfSplitScreen,  position = "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const-string v0, "fail"

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isSplitScreenVisible()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 39
    .line 40
    new-instance v0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda4;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;I)V

    .line 44
    .line 45
    .line 46
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    const-string/jumbo p0, "success"

    .line 52
    .line 53
    .line 54
    return-object p0
.end method

.method public getPackageNameInSplit(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Position:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "getPackageInSplit position = "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->updateVisibleTasks()V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->convertToStagePosition(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->findTopTaskInfoByStagePosition(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 p1, 0x1

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 25
    .line 26
    const-string v0, ""

    .line 27
    .line 28
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 p0, 0x0

    .line 61
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string/jumbo v2, "packageName = "

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 80
    .line 81
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object v0
.end method

.method public getVisibleSingleInstance(Landroid/content/pm/ActivityInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const-string v3, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    new-instance v3, Landroid/content/ComponentName;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    move-object v1, v3

    .line 44
    :cond_1
    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    if-ne v2, v3, :cond_4

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 66
    .line 67
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_3

    .line 74
    .line 75
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 76
    .line 77
    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    :cond_3
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 84
    .line 85
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 86
    .line 87
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 88
    .line 89
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-ne v4, v5, :cond_2

    .line 94
    .line 95
    return-object v3

    .line 96
    :cond_4
    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 97
    .line 98
    const/4 v3, 0x3

    .line 99
    if-eq v2, v3, :cond_5

    .line 100
    .line 101
    const/4 v3, 0x2

    .line 102
    if-ne v2, v3, :cond_7

    .line 103
    .line 104
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mVisibleTasks:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_7

    .line 115
    .line 116
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 121
    .line 122
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_6

    .line 129
    .line 130
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 131
    .line 132
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 133
    .line 134
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 135
    .line 136
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-ne v3, v4, :cond_6

    .line 141
    .line 142
    return-object v2

    .line 143
    :cond_7
    :goto_0
    return-object v0
.end method

.method public initSplitScreenController(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->Companion:Lcom/android/systemui/SystemUIAppComponentFactoryBase$Companion;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/systemui/SystemUIInitializer;->getWMComponent()Lcom/android/systemui/dagger/WMComponent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Lcom/android/systemui/dagger/WMComponent;->getSplitScreenController()Ljava/util/Optional;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 29
    .line 30
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public isFoldOpened()Z
    .locals 0

    .line 1
    const-class p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 10
    .line 11
    return p0
.end method

.method public maximizeApp(Landroid/content/Context;Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Position:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->ActivityName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getCurrentSplitState()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    sget-object v3, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo v4, "maximizeApp,  position="

    .line 14
    .line 15
    .line 16
    const-string v5, ", packageName="

    .line 17
    .line 18
    const-string v6, ", activityName="

    .line 19
    .line 20
    invoke-static {v4, v0, v5, v1, v6}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v5, ", splitState="

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->updateVisibleTasks()V

    .line 43
    .line 44
    .line 45
    const-string v4, "fail"

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    const-string p0, "current state is not split"

    .line 52
    .line 53
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return-object v4

    .line 57
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->convertToStagePosition(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->findTopTaskInfoByStagePosition(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    if-eqz v1, :cond_2

    .line 67
    .line 68
    invoke-direct {p0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->findTaskInfoByPackageName(Ljava/lang/String;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 v0, 0x0

    .line 74
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string/jumbo v5, "targetTaskInfo="

    .line 77
    .line 78
    .line 79
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    const-string/jumbo v2, "success"

    .line 93
    .line 94
    .line 95
    if-nez v0, :cond_4

    .line 96
    .line 97
    invoke-direct {p0, p1, v1, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startActivityByBixby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_3

    .line 102
    .line 103
    move-object v4, v2

    .line 104
    :cond_3
    return-object v4

    .line 105
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 106
    .line 107
    iget-object p1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const/4 p2, 0x0

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->exitMultiWindow(Landroid/os/IBinder;Z)Z

    .line 115
    .line 116
    .line 117
    return-object v2
.end method

.method public replaceAppOfSplitScreen(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Position:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->ActivityName:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v2, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string/jumbo v3, "replaceAppOfSplitScreen"

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v4, "position = "

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, ", packageName = "

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, ", activityName = "

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {v3, p1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v2, "fail"

    .line 43
    .line 44
    if-eqz v0, :cond_6

    .line 45
    .line 46
    if-eqz v1, :cond_6

    .line 47
    .line 48
    if-nez p1, :cond_0

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->isSplitScreenVisible()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_1

    .line 56
    .line 57
    return-object v2

    .line 58
    :cond_1
    const-string/jumbo v3, "top"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_5

    .line 66
    .line 67
    const-string v3, "left"

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const-string v3, "bottom"

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_4

    .line 83
    .line 84
    const-string/jumbo v3, "right"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    return-object v2

    .line 95
    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 98
    :goto_2
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->makeLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const/4 v1, 0x0

    .line 103
    const/4 v2, -0x1

    .line 104
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;II)V

    .line 105
    .line 106
    .line 107
    const-string/jumbo p0, "success"

    .line 108
    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_6
    :goto_3
    return-object v2
.end method

.method public startAppSplitPosition(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;
    .locals 14

    .line 1
    iget-object v0, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Position:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->ActivityName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Position2:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName2:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->ActivityName2:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v5, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string/jumbo v6, "startAppSplitPosition"

    .line 16
    .line 17
    .line 18
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v7, "position1 = "

    .line 24
    .line 25
    .line 26
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v7, ",  packageName1 = "

    .line 33
    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v7, ", activityName1 = "

    .line 41
    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v7, "position2 = "

    .line 58
    .line 59
    .line 60
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v3, ",  packageName2 = "

    .line 67
    .line 68
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v3, ", activityName2 = "

    .line 75
    .line 76
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    const-string v3, "fail"

    .line 90
    .line 91
    if-eqz v0, :cond_c

    .line 92
    .line 93
    if-nez v1, :cond_0

    .line 94
    .line 95
    goto/16 :goto_8

    .line 96
    .line 97
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->makeLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-direct {p0, v4, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->makeLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    const-string/jumbo p1, "top"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    const/4 v4, 0x0

    .line 113
    const/4 v5, 0x1

    .line 114
    const-string v6, "bottom"

    .line 115
    .line 116
    if-nez v2, :cond_2

    .line 117
    .line 118
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_1
    move v12, v4

    .line 126
    goto :goto_1

    .line 127
    :cond_2
    :goto_0
    move v12, v5

    .line 128
    :goto_1
    const-string/jumbo v2, "right"

    .line 129
    .line 130
    .line 131
    const-string/jumbo v13, "success"

    .line 132
    .line 133
    .line 134
    const-string v8, "left"

    .line 135
    .line 136
    if-eqz v1, :cond_7

    .line 137
    .line 138
    if-eqz v7, :cond_7

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_6

    .line 145
    .line 146
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_3

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-nez p1, :cond_5

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_4

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_4
    return-object v3

    .line 167
    :cond_5
    :goto_2
    const/4 v8, 0x0

    .line 168
    const/4 v9, 0x0

    .line 169
    const/4 v10, 0x1

    .line 170
    const/high16 v11, 0x3f000000    # 0.5f

    .line 171
    .line 172
    move-object v5, p0

    .line 173
    move-object v6, v7

    .line 174
    move-object v7, v1

    .line 175
    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)V

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_6
    :goto_3
    const/4 v8, 0x0

    .line 180
    const/4 v9, 0x0

    .line 181
    const/4 v10, 0x1

    .line 182
    const/high16 v11, 0x3f000000    # 0.5f

    .line 183
    .line 184
    move-object v5, p0

    .line 185
    move-object v6, v1

    .line 186
    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)V

    .line 187
    .line 188
    .line 189
    :goto_4
    return-object v13

    .line 190
    :cond_7
    if-eqz v1, :cond_c

    .line 191
    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    const/4 v7, 0x0

    .line 197
    if-nez p1, :cond_b

    .line 198
    .line 199
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_8

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_8
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-nez p1, :cond_a

    .line 211
    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-eqz p1, :cond_9

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_9
    return-object v3

    .line 220
    :cond_a
    :goto_5
    invoke-direct {p0, v1, v7, v5, v12}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;II)V

    .line 221
    .line 222
    .line 223
    goto :goto_7

    .line 224
    :cond_b
    :goto_6
    invoke-direct {p0, v1, v7, v4, v12}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;II)V

    .line 225
    .line 226
    .line 227
    :goto_7
    return-object v13

    .line 228
    :cond_c
    :goto_8
    return-object v3
.end method

.method public startMultiWindow(Landroid/content/Context;Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v3, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->ActivityName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v4, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v5, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->ActivityName2:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Type:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v1, Lcom/android/systemui/bixby2/controller/MWBixbyController;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo v6, "startMultiWindow : type = "

    .line 14
    .line 15
    .line 16
    const-string v7, ", packageName1 = "

    .line 17
    .line 18
    const-string v8, ", activityName1 = "

    .line 19
    .line 20
    invoke-static {v6, v0, v7, v2, v8}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const-string v7, ", packageName2 = "

    .line 25
    .line 26
    const-string v8, ", activityName2 = "

    .line 27
    .line 28
    invoke-static {v6, v3, v7, v5, v8}, Lcom/android/systemui/appops/AppOpItem$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v6, v5, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->Type:Ljava/lang/String;

    .line 35
    .line 36
    if-nez p2, :cond_0

    .line 37
    .line 38
    const-string p0, "fail"

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_0
    const-string p2, "MultiWindow"

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    move-object v0, p0

    .line 50
    move-object v1, p1

    .line 51
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startSplitScreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_1
    const-string p2, "Popup"

    .line 57
    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    invoke-direct {p0, p1, v2, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startFreeform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_2
    const-string/jumbo p0, "success"

    .line 70
    .line 71
    .line 72
    return-object p0
.end method
