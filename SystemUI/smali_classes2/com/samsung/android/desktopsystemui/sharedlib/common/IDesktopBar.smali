.class public interface abstract Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar$Stub;,
        Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBar"


# virtual methods
.method public abstract closePanel(Ljava/lang/String;)V
.end method

.method public abstract notifyPrivacyItemsChanged(Z)V
.end method

.method public abstract onDismiss()V
.end method

.method public abstract onKeyguardWallpaperChanged()V
.end method

.method public abstract onShow(I)V
.end method

.method public abstract onUpdate(ILandroid/os/Bundle;)V
.end method

.method public abstract openPanel(Ljava/lang/String;)V
.end method

.method public abstract setAirplaneMode(ZI)V
.end method

.method public abstract setBtTetherIcon(ZI)V
.end method

.method public abstract setConnectedDeviceListForGroup(Landroid/os/Bundle;)V
.end method

.method public abstract setDesktopBarCallback(Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;)V
.end method

.method public abstract setLockout(ZLandroid/os/Bundle;)V
.end method

.method public abstract setMPTCPIcon(ZIII)V
.end method

.method public abstract setMobileIcon(Landroid/os/Bundle;)V
.end method

.method public abstract setOccluded(Z)V
.end method

.method public abstract setSubs()V
.end method

.method public abstract setWifiIcon(ZII)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
