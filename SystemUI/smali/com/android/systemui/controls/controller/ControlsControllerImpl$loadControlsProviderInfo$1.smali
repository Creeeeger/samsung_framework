.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadControlsProviderInfo$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadControlsProviderInfo$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/service/controls/ControlsProviderInfo;

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_AUTO_REMOVE:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/service/controls/ControlsProviderInfo;->getAutoRemove()Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadControlsProviderInfo$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/service/controls/ControlsProviderInfo;->getAutoRemove()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput-boolean v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->isAutoRemove:Z

    .line 17
    .line 18
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_PROVIDER_INFO:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/service/controls/ControlsProviderInfo;->getAppIntent()Landroid/app/PendingIntent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadControlsProviderInfo$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->customUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/service/controls/ControlsProviderInfo;->getAppIntent()Landroid/app/PendingIntent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateLaunchingAppButton$1;

    .line 47
    .line 48
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateLaunchingAppButton$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/app/PendingIntent;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 52
    .line 53
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method
