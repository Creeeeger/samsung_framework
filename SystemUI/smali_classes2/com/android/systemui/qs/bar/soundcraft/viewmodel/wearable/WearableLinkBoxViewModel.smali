.class public final Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;
.super Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseViewModel;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final bluetoothDeviceManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

.field public final context:Landroid/content/Context;

.field public final localBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;->bluetoothDeviceManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;->localBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 9
    .line 10
    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
