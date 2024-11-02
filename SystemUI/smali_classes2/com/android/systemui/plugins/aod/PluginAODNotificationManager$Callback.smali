.class public interface abstract Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract animateExpandLockedShadePanel(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract clickNotification(Ljava/lang/String;)V
.end method

.method public abstract getNotificationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
.end method

.method public abstract requestActiveNotifications()V
.end method

.method public abstract requestVisibleNotifications()V
.end method

.method public abstract showSubScreenNotification(Ljava/lang/String;)V
.end method
