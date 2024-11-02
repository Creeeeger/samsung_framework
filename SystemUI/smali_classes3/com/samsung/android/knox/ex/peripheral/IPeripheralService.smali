.class public interface abstract Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/peripheral/IPeripheralService$Stub;,
        Lcom/samsung/android/knox/ex/peripheral/IPeripheralService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ex.peripheral.IPeripheralService"


# virtual methods
.method public abstract beep(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract check(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract clearMemory(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract connectPeripheral(Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract disable()I
.end method

.method public abstract disconnectPeripheral(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract displayText(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract enable(Landroid/os/Bundle;Z)I
.end method

.method public abstract getAvailablePeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract getBluetoothPeripherals(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract getConfiguration(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/ex/peripheral/IResultListener;",
            ")I"
        }
    .end annotation
.end method

.method public abstract getConnectionProfile(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract getInformation(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract getPairingBarcodeData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract getPluginsToSetup()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStoredData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract getSupportedPeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract registerDataListener(Lcom/samsung/android/knox/ex/peripheral/IDataListener;)I
.end method

.method public abstract registerInfoListener(Lcom/samsung/android/knox/ex/peripheral/IInfoListener;)I
.end method

.method public abstract registerStateListener(Lcom/samsung/android/knox/ex/peripheral/IStateListener;)I
.end method

.method public abstract resetPeripheral(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract setConfiguration(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract setConnectionProfile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract start(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract startAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract startBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract stop(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract stopAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract stopBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract stopPairingPeripheral(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract triggerVendorCommand(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract unregisterDataListener(Lcom/samsung/android/knox/ex/peripheral/IDataListener;)I
.end method

.method public abstract unregisterInfoListener(Lcom/samsung/android/knox/ex/peripheral/IInfoListener;)I
.end method

.method public abstract unregisterStateListener(Lcom/samsung/android/knox/ex/peripheral/IStateListener;)I
.end method

.method public abstract updateFirmware(Ljava/lang/String;[BIILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method

.method public abstract vibrate(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
.end method
