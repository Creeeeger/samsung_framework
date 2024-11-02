.class public final Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;
.super Lcom/android/systemui/bixby2/controller/volume/VolumeType;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final audioManagerWrapper$delegate:Lkotlin/Lazy;

.field private final streamTypeToString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController$audioManagerWrapper$2;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController$audioManagerWrapper$2;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;->audioManagerWrapper$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    const-string p1, "Media"

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;->streamTypeToString:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private final getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;->audioManagerWrapper$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public getStatus()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isCurrentDeviceTypeBluetooth()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x4

    .line 14
    :goto_0
    return p0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isCurrentDeviceTypeBluetooth()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-string/jumbo p0, "success"

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p0, "BluetoothNotConnected"

    .line 16
    .line 17
    :goto_0
    return-object p0
.end method

.method public getStreamType()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
.end method

.method public getStreamTypeToString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;->streamTypeToString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
