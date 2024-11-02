.class public final Lcom/android/systemui/qp/SubscreenBleController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qp/SubscreenQSControllerContract$Presenter;


# static fields
.field public static mContext:Landroid/content/Context;

.field public static sInstance:Lcom/android/systemui/qp/SubscreenBleController;


# instance fields
.field public mBleReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

.field public mBleView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

.field public mBleViewReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

.field public final mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field public final mCallback:Lcom/android/systemui/qp/SubscreenBleController$1;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/qp/SubscreenBleController$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBleController$1;-><init>(Lcom/android/systemui/qp/SubscreenBleController;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mCallback:Lcom/android/systemui/qp/SubscreenBleController$1;

    .line 10
    .line 11
    const-class v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 20
    .line 21
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 30
    .line 31
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 40
    .line 41
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/SubscreenBleController;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qp/SubscreenBleController;->sInstance:Lcom/android/systemui/qp/SubscreenBleController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sput-object p0, Lcom/android/systemui/qp/SubscreenBleController;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    new-instance p0, Lcom/android/systemui/qp/SubscreenBleController;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/android/systemui/qp/SubscreenBleController;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object p0, Lcom/android/systemui/qp/SubscreenBleController;->sInstance:Lcom/android/systemui/qp/SubscreenBleController;

    .line 13
    .line 14
    :cond_0
    sget-object p0, Lcom/android/systemui/qp/SubscreenBleController;->sInstance:Lcom/android/systemui/qp/SubscreenBleController;

    .line 15
    .line 16
    return-object p0
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const-string v0, "SBC isEnabled enabled: "

    .line 8
    .line 9
    const-string v1, "SubscreenBleController"

    .line 10
    .line 11
    invoke-static {v0, p0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return p0
.end method

.method public final isTransient()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "isTransient "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 9
    .line 10
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "SubscreenBleController"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/16 v1, 0xb

    .line 31
    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/16 v0, 0xd

    .line 39
    .line 40
    if-ne p0, v0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 46
    :goto_1
    return p0
.end method

.method public final registerReceiver(Z)V
    .locals 8

    .line 1
    const-string v0, "BLUETOOTH_STATE_CHANGE"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;-><init>(Lcom/android/systemui/qp/SubscreenBleController;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleViewReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;-><init>(Lcom/android/systemui/qp/SubscreenBleController;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    .line 23
    .line 24
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "SBC registerBleReceiver mBleViewReceiver: "

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleViewReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "mBleReceiver: "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "SubscreenBleController"

    .line 51
    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v1, v0

    .line 62
    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleViewReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    .line 70
    .line 71
    :goto_1
    move-object v2, p1

    .line 72
    const/4 v4, 0x0

    .line 73
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 74
    .line 75
    const/4 v6, 0x2

    .line 76
    const-string v7, "com.samsung.systemui.permission.BLUETOOTH_STATE_CHANGE"

    .line 77
    .line 78
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mCallback:Lcom/android/systemui/qp/SubscreenBleController$1;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 84
    .line 85
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final unRegisterReceiver(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 3
    .line 4
    const-string v2, "SubscreenBleController"

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleViewReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "SBC unRegisterReceiver mBleViewReceiver: "

    .line 15
    .line 16
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleViewReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleViewReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleViewReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v3, "SBC unRegisterReceiver mBleReceiver: "

    .line 52
    .line 53
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    .line 57
    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleReceiver:Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;

    .line 80
    .line 81
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController;->mCallback:Lcom/android/systemui/qp/SubscreenBleController$1;

    .line 82
    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 86
    .line 87
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    return-void
.end method
