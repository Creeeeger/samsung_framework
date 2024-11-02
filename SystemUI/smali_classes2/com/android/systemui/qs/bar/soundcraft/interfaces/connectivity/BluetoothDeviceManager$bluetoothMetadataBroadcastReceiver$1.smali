.class public final Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

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
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "action: "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "SoundCraft.BluetoothDeviceManager"

    .line 29
    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    .line 44
    .line 45
    iget-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->callback:Lkotlin/jvm/functions/Function1;

    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getNoiseControlList(Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method
