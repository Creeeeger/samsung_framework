.class public interface abstract Lcom/samsung/android/knox/kiosk/IKioskMode;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;,
        Lcom/samsung/android/knox/kiosk/IKioskMode$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.kiosk.IKioskMode"


# virtual methods
.method public abstract allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z
.end method

.method public abstract allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I
.end method

.method public abstract allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract disableKioskMode(Lcom/samsung/android/knox/ContextInfo;)V
.end method

.method public abstract enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
.end method

.method public abstract getAllBlockedHardwareKeys(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
.end method

.method public abstract getBlockedEdgeScreen(Lcom/samsung/android/knox/ContextInfo;)I
.end method

.method public abstract getBlockedHwKeysCache()Ljava/util/Map;
.end method

.method public abstract getHardwareKeyList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
.end method

.method public abstract getKioskHomePackage(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
.end method

.method public abstract getKioskHomePackageAsUser(I)Ljava/lang/String;
.end method

.method public abstract hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isEnableKioskModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isHardwareKeyAllowed(Lcom/samsung/android/knox/ContextInfo;IZ)Z
.end method

.method public abstract isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isKioskModeEnabledAsUser(I)Z
.end method

.method public abstract isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract isMultiWindowModeAllowedAsUser(I)Z
.end method

.method public abstract isNavigationBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isStatusBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isStatusBarHiddenAsUser(I)Z
.end method

.method public abstract isSystemBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isTaskManagerAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract isTaskManagerAllowedAsUser(ZI)Z
.end method

.method public abstract wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z
.end method
