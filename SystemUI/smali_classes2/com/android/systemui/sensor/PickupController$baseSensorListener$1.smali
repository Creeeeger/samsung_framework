.class public final Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;
.super Lcom/android/systemui/sensor/SensorController$SensorListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/sensor/PickupController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sensor/PickupController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/sensor/SensorController$SensorListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isEnabled()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onExecute()V
    .locals 4

    .line 1
    const-string v0, "PickupController"

    .line 2
    .line 3
    const-string v1, "onExecute : Lift to wake"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->powerManager:Landroid/os/PowerManager;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setEarlyWakeUp(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->powerManager:Landroid/os/PowerManager;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    const/4 v2, 0x7

    .line 23
    const-string v3, "LiftToWake"

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
