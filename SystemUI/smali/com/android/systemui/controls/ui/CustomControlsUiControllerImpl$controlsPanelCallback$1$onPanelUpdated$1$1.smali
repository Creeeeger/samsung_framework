.class public final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $container:Landroid/view/ViewGroup;

.field public final synthetic $pendingIntent:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/app/PendingIntent;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->$pendingIntent:Landroid/app/PendingIntent;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->$container:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/android/wm/shell/taskview/TaskView;

    .line 2
    .line 3
    iget-object v6, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 4
    .line 5
    iget-object v1, v6, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v0, v6, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const-string p0, "CustomControlsUiControllerImpl"

    .line 20
    .line 21
    const-string/jumbo p1, "onPanelUpdated taskViewFactory.create activityContext or onDismiss is null"

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    new-instance v7, Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->$pendingIntent:Landroid/app/PendingIntent;

    .line 38
    .line 39
    new-instance v5, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1$1;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v5, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1$1;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move-object v0, v7

    .line 52
    move-object v4, p1

    .line 53
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/controls/ui/PanelTaskViewController;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/app/PendingIntent;Lcom/android/wm/shell/taskview/TaskView;Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1;->$container:Landroid/view/ViewGroup;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, v7, Lcom/android/systemui/controls/ui/PanelTaskViewController;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 62
    .line 63
    iget-object p1, v7, Lcom/android/systemui/controls/ui/PanelTaskViewController;->stateCallback:Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;

    .line 64
    .line 65
    iget-object v0, v7, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 66
    .line 67
    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/taskview/TaskView;->setListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/taskview/TaskView$Listener;)V

    .line 68
    .line 69
    .line 70
    iput-object v7, v6, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 71
    .line 72
    :goto_2
    return-void
.end method
