.class public interface abstract Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAODBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;
    }
.end annotation


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract lockscreenNotificationTypeChanged(I)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x41a
    .end annotation
.end method

.method public abstract removeNotification(Ljava/lang/String;)V
.end method

.method public abstract setCallback(Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;)V
.end method

.method public abstract setTagId(II)V
.end method

.method public abstract subLauncherUpdateNotification(Ljava/util/ArrayList;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x41a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateActiveNotifications(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateNotification(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract updateNotification(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateVisibleNotifications(Ljava/util/List;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;I)V"
        }
    .end annotation
.end method
