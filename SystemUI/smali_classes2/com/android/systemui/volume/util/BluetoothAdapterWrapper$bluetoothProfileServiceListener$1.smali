.class public final Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/16 v0, 0x15

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x16

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 17
    .line 18
    check-cast p2, Landroid/bluetooth/BluetoothLeAudio;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->leAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 24
    .line 25
    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->hearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 31
    .line 32
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 38
    .line 39
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->hfp:Landroid/bluetooth/BluetoothHeadset;

    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    const/16 v0, 0x15

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x16

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->leAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->hearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->hfp:Landroid/bluetooth/BluetoothHeadset;

    .line 35
    .line 36
    :goto_0
    return-void
.end method
