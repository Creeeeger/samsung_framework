.class public final Lcom/android/systemui/subscreen/SubScreenQSEventHandler$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$5;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFinishedWakingUp()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$5;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmPanelLogger(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Lcom/android/systemui/log/SecPanelLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onFinishedWakingUp"

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p0, v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fputmInSleep(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$5;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmPanelLogger(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Lcom/android/systemui/log/SecPanelLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onStartedGoingToSleep"

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-static {p0, v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fputmInSleep(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmPanelExpandedSupplier(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/util/function/BooleanSupplier;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmCollapsePanelRunnable(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/lang/Runnable;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
