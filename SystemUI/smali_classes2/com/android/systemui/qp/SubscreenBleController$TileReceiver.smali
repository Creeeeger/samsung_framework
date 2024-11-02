.class public final Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBleController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenBleController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenBleController;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/systemui/qp/SubscreenBleController;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "SBC onReceive action: "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ",enabled = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "SubscreenBleController"

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const-string v0, "BLUETOOTH_STATE_CHANGE"

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    iget-object p2, p0, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenBleController;

    .line 54
    .line 55
    iget-object v0, p2, Lcom/android/systemui/qp/SubscreenBleController;->mBleView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/android/systemui/qp/SubscreenBleController;->isTransient()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_1

    .line 64
    .line 65
    iget-object p2, p0, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenBleController;

    .line 66
    .line 67
    xor-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    iget-object p2, p2, Lcom/android/systemui/qp/SubscreenBleController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 70
    .line 71
    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBleController$TileReceiver;->this$0:Lcom/android/systemui/qp/SubscreenBleController;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBleView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

    .line 77
    .line 78
    invoke-interface {p0, p1}, Lcom/android/systemui/qp/SubscreenQSControllerContract$View;->updateView(Z)V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method
