.class public final Lcom/android/systemui/ForegroundServiceNotificationListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ForegroundServiceNotificationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$1;->this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$1;->this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    new-instance v2, Lcom/android/systemui/ForegroundServiceNotificationListener$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/ForegroundServiceNotificationListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ForegroundServiceNotificationListener;Landroid/service/notification/StatusBarNotification;I)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 23
    .line 24
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/systemui/ForegroundServiceController;->updateUserState(ILcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$1;->this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    new-instance v0, Lcom/android/systemui/ForegroundServiceNotificationListener$2;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/ForegroundServiceNotificationListener$2;-><init>(Lcom/android/systemui/ForegroundServiceNotificationListener;Landroid/service/notification/StatusBarNotification;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 19
    .line 20
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/systemui/ForegroundServiceController;->updateUserState(ILcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$1;->this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    new-instance v2, Lcom/android/systemui/ForegroundServiceNotificationListener$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/ForegroundServiceNotificationListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ForegroundServiceNotificationListener;Landroid/service/notification/StatusBarNotification;I)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 23
    .line 24
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/systemui/ForegroundServiceController;->updateUserState(ILcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
