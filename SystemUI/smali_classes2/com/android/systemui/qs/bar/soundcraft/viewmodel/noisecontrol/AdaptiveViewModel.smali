.class public final Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;
.super Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlIconViewModel;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final bluetoothDeviceManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

.field public final modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlIconViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;->bluetoothDeviceManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getBluetoothDeviceManager()Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;->bluetoothDeviceManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDrawableOff()I
    .locals 0

    .line 1
    const p0, 0x7f0810f5

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getDrawableOn()I
    .locals 0

    .line 1
    const p0, 0x7f0810f4

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getItemName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;->bluetoothDeviceManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getAdaptiveTitle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getModelProvider()Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 2
    .line 3
    return-object p0
.end method
