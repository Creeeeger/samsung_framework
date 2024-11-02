.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static final sBluetoothService:Landroid/bluetooth/BluetoothManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;


# direct methods
.method public static synthetic $r8$lambda$fQW20P_J876MwDib4cyauMWNpUw(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;->lambda$getConnectedDevices$0(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;

    .line 7
    .line 8
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-class v1, Landroid/bluetooth/BluetoothManager;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 19
    .line 20
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;->sBluetoothService:Landroid/bluetooth/BluetoothManager;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 27
    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method private static synthetic lambda$getConnectedDevices$0(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper$$ExternalSyntheticLambda0;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/util/List;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method
