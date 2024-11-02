.class public final Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$audioCastProfileListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/bluetooth/SemBluetoothCastProfile$BluetoothCastProfileListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$audioCastProfileListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Lcom/samsung/android/bluetooth/SemBluetoothCastProfile;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$audioCastProfileListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    .line 2
    .line 3
    check-cast p1, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->service:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    .line 6
    .line 7
    return-void
.end method

.method public final onServiceDisconnected()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$audioCastProfileListener$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->service:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->closeProxy()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->service:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    .line 12
    .line 13
    :cond_0
    return-void
.end method
