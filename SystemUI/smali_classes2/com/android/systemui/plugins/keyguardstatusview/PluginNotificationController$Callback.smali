.class public interface abstract Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController$Callback;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract expandToNotifications()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7da
    .end annotation
.end method

.method public abstract getActiveNotificationSize()I
.end method

.method public abstract getAllNotifications()Ljava/util/List;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x402
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntryKey(I)Ljava/lang/String;
.end method

.method public abstract getNotificationPackageName(I)Ljava/lang/String;
.end method

.method public abstract getNotificationUid(I)I
.end method

.method public abstract getPluginLockDataGravity()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7d1
    .end annotation
.end method

.method public abstract getPluginLockDataMarginTop()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7d5
    .end annotation
.end method

.method public abstract getPluginLockDataPaddingEnd()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7d1
    .end annotation
.end method

.method public abstract getPluginLockDataPaddingStart()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7d1
    .end annotation
.end method

.method public abstract isPluginLockDataAvailable()Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7d1
    .end annotation
.end method

.method public abstract isTransformAnimating()Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x41a
    .end annotation
.end method

.method public abstract onClick()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x41a
    .end annotation
.end method

.method public abstract onTouchEvent(I)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x41a
    .end annotation
.end method

.method public abstract setNotificationIconsOnlyContainer()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x41a
    .end annotation
.end method
