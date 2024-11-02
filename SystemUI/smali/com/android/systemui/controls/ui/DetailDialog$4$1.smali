.class public final Lcom/android/systemui/controls/ui/DetailDialog$4$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/DetailDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/DetailDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 2
    .line 3
    iget v0, p1, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v2, p1, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/app/ActivityTaskManager;->removeTask(I)Z

    .line 16
    .line 17
    .line 18
    iput v1, p1, Lcom/android/systemui/controls/ui/DetailDialog;->detailTaskId:I

    .line 19
    .line 20
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/DetailDialog;->dismiss()V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 28
    .line 29
    invoke-direct {p1, v0}, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/systemui/controls/ui/DetailDialog;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;->onDismiss()Z

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/systemui/controls/ui/DetailDialog;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-interface {v0, p1, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 53
    .line 54
    .line 55
    :goto_1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 62
    .line 63
    sget-object p1, Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchFullController;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchFullController;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method
