.class public final Lcom/android/systemui/sensor/PickupController$statusBarStateListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic $keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final synthetic this$0:Lcom/android/systemui/sensor/PickupController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sensor/PickupController;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController$statusBarStateListener$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/sensor/PickupController$statusBarStateListener$1;->$keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDozingChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$statusBarStateListener$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$isLiftToWakeEnabled(Lcom/android/systemui/sensor/PickupController;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$statusBarStateListener$1;->$keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$registerSensor(Lcom/android/systemui/sensor/PickupController;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/sensor/SensorController;->unregister$1()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method
