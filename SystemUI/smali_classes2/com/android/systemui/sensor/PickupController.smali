.class public final Lcom/android/systemui/sensor/PickupController;
.super Lcom/android/systemui/sensor/SensorController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final baseSensorListener:Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;

.field public final handler:Landroid/os/Handler;

.field public final keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public phoneState:I

.field public final pickupListener:Ljava/util/ArrayList;

.field public final powerManager:Landroid/os/PowerManager;

.field public final registerRunnable:Lcom/android/systemui/sensor/PickupController$registerRunnable$1;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/sensor/PickupController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/sensor/PickupController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/SettingsHelper;Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p6}, Lcom/android/systemui/sensor/SensorController;-><init>(Landroid/hardware/SensorManager;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/systemui/sensor/PickupController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/systemui/sensor/PickupController;->powerManager:Landroid/os/PowerManager;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/systemui/sensor/PickupController;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance p3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance p3, Lcom/android/systemui/sensor/PickupController$registerRunnable$1;

    .line 18
    .line 19
    invoke-direct {p3, p0}, Lcom/android/systemui/sensor/PickupController$registerRunnable$1;-><init>(Lcom/android/systemui/sensor/PickupController;)V

    .line 20
    .line 21
    .line 22
    iput-object p3, p0, Lcom/android/systemui/sensor/PickupController;->registerRunnable:Lcom/android/systemui/sensor/PickupController$registerRunnable$1;

    .line 23
    .line 24
    new-instance p3, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;

    .line 25
    .line 26
    invoke-direct {p3, p0}, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/sensor/PickupController;)V

    .line 27
    .line 28
    .line 29
    iput-object p3, p0, Lcom/android/systemui/sensor/PickupController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 30
    .line 31
    new-instance p4, Lcom/android/systemui/sensor/PickupController$statusBarStateListener$1;

    .line 32
    .line 33
    invoke-direct {p4, p0, p1}, Lcom/android/systemui/sensor/PickupController$statusBarStateListener$1;-><init>(Lcom/android/systemui/sensor/PickupController;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, p4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;-><init>(Lcom/android/systemui/sensor/PickupController;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController;->baseSensorListener:Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;

    .line 48
    .line 49
    return-void
.end method

.method public static final access$isLiftToWakeEnabled(Lcom/android/systemui/sensor/PickupController;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 14
    .line 15
    const-string v0, "lift_to_wake"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 v0, 0x1

    .line 26
    if-ne p0, v0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 30
    :goto_1
    return v0
.end method

.method public static final access$registerSensor(Lcom/android/systemui/sensor/PickupController;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/sensor/SensorController;->sensorInfos:Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/sensor/SensorController;->unregister$1()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/sensor/SensorController;->sensorInfos:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v2, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensor:Landroid/hardware/Sensor;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 v2, 0x0

    .line 35
    :goto_1
    const-string v3, "SensorController"

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    const-string/jumbo p0, "register - not supported sensor type=1"

    .line 40
    .line 41
    .line 42
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    iget-boolean v2, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    .line 47
    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    const-string/jumbo p0, "register - already registered sensor type=1"

    .line 51
    .line 52
    .line 53
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/sensor/SensorController;->sensorManager:Landroid/hardware/SensorManager;

    .line 58
    .line 59
    iget-object v4, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensor:Landroid/hardware/Sensor;

    .line 60
    .line 61
    const/4 v5, 0x3

    .line 62
    invoke-virtual {v2, p0, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_5

    .line 67
    .line 68
    const-string/jumbo p0, "register - requestTriggerSensor return false"

    .line 69
    .line 70
    .line 71
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    const-string/jumbo p0, "register"

    .line 76
    .line 77
    .line 78
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iput-boolean v1, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    .line 82
    .line 83
    :goto_2
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "   PickupController Dump"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "      addedMonitorCallback="

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-lez p2, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance p2, Lcom/android/systemui/sensor/PickupController$dump$1;

    .line 26
    .line 27
    invoke-direct {p2, p1}, Lcom/android/systemui/sensor/PickupController$dump$1;-><init>(Ljava/io/PrintWriter;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final onTrigger()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/sensor/PickupController;->phoneState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "PickupController"

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const-string p0, "onTrigger return cause by CALL_STATE_OFFHOOK"

    .line 9
    .line 10
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, "onTrigger Listener.size()="

    .line 21
    .line 22
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    if-ltz v0, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/android/systemui/sensor/SensorController$SensorListener;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/android/systemui/sensor/SensorController$SensorListener;->isEnabled()V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lcom/android/systemui/sensor/SensorController$SensorListener;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/sensor/SensorController$SensorListener;->onExecute()V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method
