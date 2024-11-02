.class public final Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/sensor/PickupController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sensor/PickupController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPhoneStateChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    .line 2
    .line 3
    iput p1, p0, Lcom/android/systemui/sensor/PickupController;->phoneState:I

    .line 4
    .line 5
    return-void
.end method

.method public final onStartedGoingToSleep(I)V
    .locals 2

    .line 1
    const-string v0, "PickupController"

    .line 2
    .line 3
    const-string v1, "onStartedGoingToSleep() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$isLiftToWakeEnabled(Lcom/android/systemui/sensor/PickupController;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/sensor/PickupController;->handler:Landroid/os/Handler;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->registerRunnable:Lcom/android/systemui/sensor/PickupController$registerRunnable$1;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/systemui/sensor/PickupController;->handler:Landroid/os/Handler;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->registerRunnable:Lcom/android/systemui/sensor/PickupController$registerRunnable$1;

    .line 29
    .line 30
    const-wide/16 v0, 0x1388

    .line 31
    .line 32
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$registerSensor(Lcom/android/systemui/sensor/PickupController;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 2

    .line 1
    const-string v0, "PickupController"

    .line 2
    .line 3
    const-string v1, "onStartedWakingUp() "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$isLiftToWakeEnabled(Lcom/android/systemui/sensor/PickupController;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->handler:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/sensor/PickupController;->registerRunnable:Lcom/android/systemui/sensor/PickupController$registerRunnable$1;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->handler:Landroid/os/Handler;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->registerRunnable:Lcom/android/systemui/sensor/PickupController$registerRunnable$1;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/sensor/SensorController;->unregister$1()V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method
