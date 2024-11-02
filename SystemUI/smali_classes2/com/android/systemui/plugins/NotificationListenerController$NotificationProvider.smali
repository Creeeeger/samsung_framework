.class public interface abstract Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/NotificationListenerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationProvider"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
.end method

.method public abstract getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;
.end method

.method public abstract removeNotification(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract updateRanking()V
.end method
