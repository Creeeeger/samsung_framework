.class public final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $container:Landroid/view/ViewGroup;

.field public final synthetic $pendingIntent:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/app/PendingIntent;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;->$pendingIntent:Landroid/app/PendingIntent;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;->$container:Landroid/view/ViewGroup;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 15
    :goto_1
    if-eqz v1, :cond_2

    .line 16
    .line 17
    const-string p0, "CustomControlsUiControllerImpl"

    .line 18
    .line 19
    const-string/jumbo v0, "onPanelUpdated activityContext or onDismiss is null"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->taskViewFactory:Ljava/util/Optional;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 35
    .line 36
    iget-object v2, v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 37
    .line 38
    new-instance v3, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;->$pendingIntent:Landroid/app/PendingIntent;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;->$container:Landroid/view/ViewGroup;

    .line 43
    .line 44
    invoke-direct {v3, v1, v4, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/app/PendingIntent;Landroid/view/ViewGroup;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;->this$0:Lcom/android/wm/shell/taskview/TaskViewFactoryController;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 50
    .line 51
    new-instance v4, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 54
    .line 55
    invoke-direct {v4, v0, v2, v1, v3}, Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/function/Consumer;)V

    .line 56
    .line 57
    .line 58
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 59
    .line 60
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
