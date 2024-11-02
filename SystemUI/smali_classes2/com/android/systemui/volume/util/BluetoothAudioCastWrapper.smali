.class public final Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final audioCastProfileListener:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$audioCastProfileListener$1;

.field public service:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$audioCastProfileListener$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$audioCastProfileListener$1;-><init>(Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->audioCastProfileListener:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper$audioCastProfileListener$1;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getProxy(Landroid/content/Context;Lcom/samsung/android/bluetooth/SemBluetoothCastProfile$BluetoothCastProfileListener;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getCastDeviceConnectedName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->service:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectedDevices()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getDeviceName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    if-nez p0, :cond_1

    .line 26
    .line 27
    const-string p0, ""

    .line 28
    .line 29
    :cond_1
    return-object p0
.end method
