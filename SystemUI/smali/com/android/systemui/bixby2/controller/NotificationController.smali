.class public Lcom/android/systemui/bixby2/controller/NotificationController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;,
        Lcom/android/systemui/bixby2/controller/NotificationController$DisplayContentObject;
    }
.end annotation


# static fields
.field static final NOTI_APPNAME:Ljava/lang/String; = "appName"

.field static final NOTI_FGS:Ljava/lang/String; = "fgs"

.field static final NOTI_ID:Ljava/lang/String; = "notiID"

.field static final NOTI_ITEM_COUNT:Ljava/lang/String; = "itemCount"

.field static final NOTI_LIST:Ljava/lang/String; = "notificationList"

.field static final NOTI_ONGOING:Ljava/lang/String; = "ongoing"

.field static final NOTI_REPLY:Ljava/lang/String; = "canReply"

.field static final NOTI_RESULT:Ljava/lang/String; = "result"

.field static final NOTI_TEXT:Ljava/lang/String; = "notiText"

.field static final NOTI_TITLE:Ljava/lang/String; = "notiTitle"

.field static final NOTI_WHEN:Ljava/lang/String; = "when"

.field public static final PARAMETER_INCLUDE_ONGOING:Ljava/lang/String; = "includeOngoing"

.field public static final RESULT_ALL_IS_NON_DISMISSABLE:I = 0x7

.field public static final RESULT_ALL_IS_ONGOING_NOTI:I = 0x4

.field public static final RESULT_FAIL:I = 0x0

.field public static final RESULT_NONBLOCKABLE_PACKAGE:I = 0x8

.field public static final RESULT_NOTIFICATION_ALREADY_TURNED_OFF:I = 0x9

.field public static final RESULT_NO_MATCHED_APP_NAME:I = 0x3

.field public static final RESULT_NO_NOTIFICATION_EXIST:I = 0x2

.field public static final RESULT_READOUT_ALL_WITH_ID:I = 0x5

.field public static final RESULT_READOUT_APP_WITH_ID:I = 0x6

.field public static final RESULT_SUCCESS:I = 0x1

.field static final TAG:Ljava/lang/String; = "NotificationController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDesktopManager:Lcom/android/systemui/util/DesktopManager;

.field private mDisplayDescription:Ljava/lang/StringBuffer;

.field private final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mItemCount:I

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field private mNotifManager:Landroid/app/INotificationManager;

.field private final mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field mRemoteInput:Landroid/app/RemoteInput;

.field mRemoteInputId:Ljava/lang/String;

.field mRemoteInputIntent:Landroid/app/PendingIntent;

.field mRemoteInputs:[Landroid/app/RemoteInput;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$cVLD5yIwbEl75XWn1mhDy3wPjI8(Lcom/android/systemui/bixby2/controller/NotificationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->lambda$deleteAllNotificationsDismissable$2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$d7PbLrmzx6XRWL7CyAVYsk6Rxvo(Lcom/android/systemui/bixby2/controller/NotificationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->lambda$deleteAllNotifications$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$oy8SKTs5ek_4V-5RLC-rhwmrJzE(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->lambda$getVisibleNotifications$0(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$pLZtlgU69qhFrn_ov5qIIR1suxM(Lcom/android/systemui/bixby2/controller/NotificationController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->lambda$deleteAppNotifications$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/keyguard/DisplayLifecycle;Landroid/app/KeyguardManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mEntries:Ljava/util/List;

    .line 9
    .line 10
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mUiHandler:Landroid/os/Handler;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mItemCount:I

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInput:Landroid/app/RemoteInput;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputIntent:Landroid/app/PendingIntent;

    .line 30
    .line 31
    const-string v0, "-1"

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputId:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 40
    .line 41
    iput-object p4, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 42
    .line 43
    iput-object p5, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 44
    .line 45
    iput-object p6, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 46
    .line 47
    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY:Z

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    const-string/jumbo p1, "notification"

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifManager:Landroid/app/INotificationManager;

    .line 63
    .line 64
    :cond_0
    return-void
.end method

.method private checkDismissableNotification(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    if-ge v1, p0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed$1()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v0
.end method

.method private checkNotificatoins(I)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 p0, 0x1

    .line 6
    return p0
.end method

.method private checkOngoingNotification(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    if-ge v1, p0, :cond_4

    .line 8
    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 16
    .line 17
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    :cond_0
    move v2, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSensitiveHiddenInGeneral:Z

    .line 35
    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    :cond_2
    move v2, v4

    .line 39
    :goto_1
    if-eqz v2, :cond_3

    .line 40
    .line 41
    return v4

    .line 42
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    return v0
.end method

.method private deleteAllNotifications(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->checkOngoingNotification(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mUiHandler:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v0, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/bixby2/controller/NotificationController;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x4

    .line 21
    return p0
.end method

.method private deleteAllNotificationsDismissable(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->checkDismissableNotification(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mUiHandler:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v0, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/bixby2/controller/NotificationController;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    const/4 p0, 0x7

    .line 20
    return p0
.end method

.method private deleteAppNotifications(Ljava/lang/String;Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    move v4, v3

    .line 13
    move v5, v4

    .line 14
    :goto_0
    const/4 v6, 0x1

    .line 15
    if-ge v3, v0, :cond_2

    .line 16
    .line 17
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 22
    .line 23
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 24
    .line 25
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    if-eqz v8, :cond_1

    .line 34
    .line 35
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed$1()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move v4, v6

    .line 47
    move v5, v4

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    move v4, v6

    .line 50
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    :goto_2
    if-ge v2, p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mUiHandler:Landroid/os/Handler;

    .line 66
    .line 67
    new-instance v3, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda2;

    .line 68
    .line 69
    invoke-direct {v3, p0, p2}, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/bixby2/controller/NotificationController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    if-nez v4, :cond_4

    .line 79
    .line 80
    const/4 v6, 0x3

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    if-nez v5, :cond_5

    .line 83
    .line 84
    const/4 v6, 0x4

    .line 85
    :cond_5
    :goto_3
    return v6
.end method

.method private getFocusedStack()Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 1

    .line 1
    const-string p0, "getFocusedPackageName() "

    .line 2
    .line 3
    const-string v0, "NotificationController"

    .line 4
    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    :goto_0
    return-object p0
.end method

.method private getVisibleNotifications()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mEntries:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v1, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method private isFolderClosed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 4
    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method private isRemoteInputNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInput:Landroid/app/RemoteInput;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputIntent:Landroid/app/PendingIntent;

    .line 13
    .line 14
    const-string v1, "-1"

    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputId:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    array-length v1, v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    move v3, v2

    .line 29
    :goto_0
    if-ge v3, v1, :cond_6

    .line 30
    .line 31
    iget-object v4, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 32
    .line 33
    aget-object v4, v4, v3

    .line 34
    .line 35
    if-nez v4, :cond_2

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    invoke-virtual {v4}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    if-nez v5, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    array-length v6, v5

    .line 46
    move v7, v2

    .line 47
    :goto_1
    if-ge v7, v6, :cond_5

    .line 48
    .line 49
    aget-object v8, v5, v7

    .line 50
    .line 51
    invoke-virtual {v8}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_4

    .line 56
    .line 57
    iget-object v9, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 58
    .line 59
    if-eqz v9, :cond_4

    .line 60
    .line 61
    iput-object v5, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 62
    .line 63
    iput-object v8, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInput:Landroid/app/RemoteInput;

    .line 64
    .line 65
    iput-object v9, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputIntent:Landroid/app/PendingIntent;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputId:Ljava/lang/String;

    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    return p0

    .line 73
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_6
    return v2
.end method

.method private lambda$deleteAllNotifications$1()V
    .locals 2

    .line 1
    const-string v0, "NotificationController"

    .line 2
    .line 3
    const-string v1, "clear Notifiations call by bixby"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissAllNotifications(IZ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private synthetic lambda$deleteAllNotificationsDismissable$2()V
    .locals 2

    .line 1
    const-string v0, "NotificationController"

    .line 2
    .line 3
    const-string v1, "clear Notifiations call by bixby"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissAllNotifications(IZ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private lambda$deleteAppNotifications$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    .line 4
    .line 5
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mEntries:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x1

    .line 24
    invoke-static {v2, v3, p0, v5, v4}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {v1, v2, v5, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private static lambda$getVisibleNotifications$0(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private readAllNotification(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;

    .line 11
    .line 12
    invoke-direct {v2}, Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuffer;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v3, v2, Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuffer;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v3, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mDisplayDescription:Ljava/lang/StringBuffer;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    move v4, v3

    .line 31
    :goto_0
    if-ge v4, v0, :cond_3

    .line 32
    .line 33
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 38
    .line 39
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 40
    .line 41
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0, v5}, Lcom/android/systemui/bixby2/controller/NotificationController;->filterReadOutNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    if-eqz v6, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    const/4 v7, 0x1

    .line 57
    if-eqz v5, :cond_1

    .line 58
    .line 59
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    add-int/2addr v5, v7

    .line 70
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v1, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v1, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_4

    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    if-eqz v0, :cond_5

    .line 96
    .line 97
    iget-object v4, v2, Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    .line 98
    .line 99
    const-string v5, "["

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    .line 103
    .line 104
    :cond_5
    :goto_2
    if-ge v3, v0, :cond_8

    .line 105
    .line 106
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 111
    .line 112
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 113
    .line 114
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    .line 115
    .line 116
    if-eqz v4, :cond_7

    .line 117
    .line 118
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_7

    .line 123
    .line 124
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    check-cast v5, Ljava/lang/Integer;

    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    invoke-direct {p0, v4}, Lcom/android/systemui/bixby2/controller/NotificationController;->stringValidater(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string/jumbo v7, "{\"appName\":\""

    .line 141
    .line 142
    .line 143
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v7, "\", \"notiCount\":\""

    .line 150
    .line 151
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v5, "\"}"

    .line 158
    .line 159
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    iget-object v6, v2, Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    .line 167
    .line 168
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-eqz v4, :cond_6

    .line 179
    .line 180
    iget-object v4, v2, Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    .line 181
    .line 182
    const-string v5, ","

    .line 183
    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_6
    iget-object v4, v2, Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    .line 189
    .line 190
    const-string v5, "]"

    .line 191
    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    .line 194
    .line 195
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_8
    iget-object p1, v2, Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    .line 199
    .line 200
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mDisplayDescription:Ljava/lang/StringBuffer;

    .line 201
    .line 202
    return-void
.end method

.method private readAppNotificationWithID(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const-string v4, "all"

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    const/4 v5, 0x5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v5, 0x6

    .line 27
    :goto_0
    new-instance v6, Ljava/lang/StringBuffer;

    .line 28
    .line 29
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v7, "result"

    .line 33
    .line 34
    .line 35
    const/4 v8, 0x2

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    return-object v2

    .line 42
    :cond_1
    const-string v8, "["

    .line 43
    .line 44
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v9, 0x0

    .line 49
    :goto_1
    if-ge v8, v3, :cond_f

    .line 50
    .line 51
    move-object/from16 v10, p2

    .line 52
    .line 53
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 58
    .line 59
    iget-object v12, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 60
    .line 61
    iget-object v13, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 62
    .line 63
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 64
    .line 65
    .line 66
    move-result-object v14

    .line 67
    if-eqz v1, :cond_e

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v15

    .line 73
    if-nez v15, :cond_2

    .line 74
    .line 75
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v15

    .line 79
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v15

    .line 83
    if-eqz v15, :cond_e

    .line 84
    .line 85
    :cond_2
    iget-object v15, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 86
    .line 87
    invoke-virtual {v0, v15}, Lcom/android/systemui/bixby2/controller/NotificationController;->filterReadOutNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    .line 88
    .line 89
    .line 90
    move-result v15

    .line 91
    if-eqz v15, :cond_3

    .line 92
    .line 93
    goto/16 :goto_b

    .line 94
    .line 95
    :cond_3
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v15

    .line 99
    move/from16 v16, v3

    .line 100
    .line 101
    iget-boolean v3, v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomNotification:Z

    .line 102
    .line 103
    const-string v17, "NULL"

    .line 104
    .line 105
    if-eqz v3, :cond_5

    .line 106
    .line 107
    new-instance v3, Ljava/lang/StringBuffer;

    .line 108
    .line 109
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .line 111
    .line 112
    move/from16 v18, v5

    .line 113
    .line 114
    iget-object v5, v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 115
    .line 116
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 117
    .line 118
    invoke-direct {v0, v5, v3}, Lcom/android/systemui/bixby2/controller/NotificationController;->searchForTextView(Landroid/view/View;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    if-nez v3, :cond_4

    .line 123
    .line 124
    move-object/from16 v3, v17

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    :goto_2
    move-object/from16 v5, v17

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_5
    move/from16 v18, v5

    .line 135
    .line 136
    const-class v3, Landroid/app/Notification$MessagingStyle;

    .line 137
    .line 138
    invoke-virtual {v14}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_8

    .line 147
    .line 148
    iget-object v3, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 149
    .line 150
    const-string v5, "android.messages"

    .line 151
    .line 152
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, [Landroid/os/Parcelable;

    .line 157
    .line 158
    invoke-static {v3}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-static {v3}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    if-nez v5, :cond_6

    .line 171
    .line 172
    move-object/from16 v5, v17

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_6
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    :goto_3
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    if-nez v3, :cond_7

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_7
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v17

    .line 190
    :goto_4
    move-object/from16 v3, v17

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_8
    iget-object v3, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 194
    .line 195
    const-string v5, "android.title"

    .line 196
    .line 197
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    if-nez v3, :cond_9

    .line 202
    .line 203
    move-object/from16 v3, v17

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_9
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    :goto_5
    iget-object v5, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 211
    .line 212
    move-object/from16 v19, v3

    .line 213
    .line 214
    const-string v3, "android.text"

    .line 215
    .line 216
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    if-nez v3, :cond_a

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_a
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v17

    .line 227
    :goto_6
    move-object/from16 v3, v17

    .line 228
    .line 229
    move-object/from16 v5, v19

    .line 230
    .line 231
    :goto_7
    invoke-direct {v0, v5}, Lcom/android/systemui/bixby2/controller/NotificationController;->stringValidater(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-direct {v0, v3}, Lcom/android/systemui/bixby2/controller/NotificationController;->stringValidater(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-direct {v0, v11}, Lcom/android/systemui/bixby2/controller/NotificationController;->isRemoteInputNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 240
    .line 241
    .line 242
    move-result v11

    .line 243
    const-string v17, "TRUE"

    .line 244
    .line 245
    const-string v19, "FALSE"

    .line 246
    .line 247
    if-eqz v11, :cond_b

    .line 248
    .line 249
    move-object/from16 v11, v17

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_b
    move-object/from16 v11, v19

    .line 253
    .line 254
    :goto_8
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 255
    .line 256
    .line 257
    move-result-wide v20

    .line 258
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v12

    .line 262
    iget v14, v14, Landroid/app/Notification;->flags:I

    .line 263
    .line 264
    and-int/lit8 v20, v14, 0x40

    .line 265
    .line 266
    if-eqz v20, :cond_c

    .line 267
    .line 268
    move-object/from16 v10, v17

    .line 269
    .line 270
    goto :goto_9

    .line 271
    :cond_c
    move-object/from16 v10, v19

    .line 272
    .line 273
    :goto_9
    and-int/lit8 v14, v14, 0x2

    .line 274
    .line 275
    if-eqz v14, :cond_d

    .line 276
    .line 277
    move-object/from16 v14, v17

    .line 278
    .line 279
    goto :goto_a

    .line 280
    :cond_d
    move-object/from16 v14, v19

    .line 281
    .line 282
    :goto_a
    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    .line 283
    .line 284
    invoke-direct {v0, v13}, Lcom/android/systemui/bixby2/controller/NotificationController;->stringValidater(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v13

    .line 288
    const-string/jumbo v0, "{\"notiID\":\""

    .line 289
    .line 290
    .line 291
    move-object/from16 v17, v2

    .line 292
    .line 293
    const-string v2, "\", \"notiTitle\":\""

    .line 294
    .line 295
    move-object/from16 v19, v7

    .line 296
    .line 297
    const-string v7, "\", \"notiText\":\""

    .line 298
    .line 299
    invoke-static {v0, v15, v2, v5, v7}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    const-string v2, "\", \"canReply\":\""

    .line 304
    .line 305
    const-string v5, "\", \"when\":\""

    .line 306
    .line 307
    invoke-static {v0, v3, v2, v11, v5}, Lcom/android/systemui/appops/AppOpItem$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const-string v2, "\", \"fgs\":\""

    .line 311
    .line 312
    const-string v3, "\", \"ongoing\":\""

    .line 313
    .line 314
    invoke-static {v0, v12, v2, v10, v3}, Lcom/android/systemui/appops/AppOpItem$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v2, "\", \"appName\":\""

    .line 321
    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v2, "\"},"

    .line 329
    .line 330
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    .line 339
    .line 340
    add-int/lit8 v9, v9, 0x1

    .line 341
    .line 342
    goto :goto_c

    .line 343
    :cond_e
    :goto_b
    move-object/from16 v17, v2

    .line 344
    .line 345
    move/from16 v16, v3

    .line 346
    .line 347
    move/from16 v18, v5

    .line 348
    .line 349
    move-object/from16 v19, v7

    .line 350
    .line 351
    :goto_c
    add-int/lit8 v8, v8, 0x1

    .line 352
    .line 353
    move-object/from16 v0, p0

    .line 354
    .line 355
    move/from16 v3, v16

    .line 356
    .line 357
    move-object/from16 v2, v17

    .line 358
    .line 359
    move/from16 v5, v18

    .line 360
    .line 361
    move-object/from16 v7, v19

    .line 362
    .line 363
    goto/16 :goto_1

    .line 364
    .line 365
    :cond_f
    move-object/from16 v17, v2

    .line 366
    .line 367
    move/from16 v18, v5

    .line 368
    .line 369
    move-object/from16 v19, v7

    .line 370
    .line 371
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    const/4 v2, 0x1

    .line 376
    if-le v0, v2, :cond_10

    .line 377
    .line 378
    sub-int/2addr v0, v2

    .line 379
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 380
    .line 381
    .line 382
    const-string v0, "]"

    .line 383
    .line 384
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    .line 386
    .line 387
    move/from16 v5, v18

    .line 388
    .line 389
    goto :goto_e

    .line 390
    :cond_10
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-eqz v0, :cond_11

    .line 395
    .line 396
    const/4 v0, 0x2

    .line 397
    goto :goto_d

    .line 398
    :cond_11
    const/4 v0, 0x3

    .line 399
    :goto_d
    move v5, v0

    .line 400
    new-instance v6, Ljava/lang/StringBuffer;

    .line 401
    .line 402
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    .line 404
    .line 405
    const/4 v9, 0x0

    .line 406
    :goto_e
    const-string/jumbo v0, "result: "

    .line 407
    .line 408
    .line 409
    const-string v1, " notiList:"

    .line 410
    .line 411
    invoke-static {v0, v5, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v1, " itemCount:"

    .line 423
    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    const-string v1, "NotificationController"

    .line 435
    .line 436
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    move-object/from16 v0, v17

    .line 440
    .line 441
    move-object/from16 v1, v19

    .line 442
    .line 443
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    .line 445
    .line 446
    const-string/jumbo v1, "notificationList"

    .line 447
    .line 448
    .line 449
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    const-string v1, "itemCount"

    .line 457
    .line 458
    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    .line 460
    .line 461
    return-object v0
.end method

.method private searchForTextView(Landroid/view/View;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    return-object p2

    .line 19
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    check-cast p1, Landroid/view/ViewGroup;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ge v0, v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->searchForTextView(Landroid/view/View;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-object p2
.end method

.method private stringValidater(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-lez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "\""

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string p1, "\r\n"

    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "\r"

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "\n\r"

    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_0
    return-object p1
.end method


# virtual methods
.method public checkNotificationSoundStatus(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "NotificationController"

    .line 2
    .line 3
    const-string v1, "checkNotificationSoundStatus : pkg = "

    .line 4
    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifManager:Landroid/app/INotificationManager;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getNotificationSoundStatus(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, " ret = 0x"

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return p0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    const-string p1, "fail to checkNotificationSoundStatus e = "

    .line 41
    .line 42
    invoke-static {p1, p0, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return p0
.end method

.method public checkNotificationStatusForPackage(Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, "NotificationController"

    .line 2
    .line 3
    const-string v1, "checkNotificationStatusForPackage : 0x"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifManager:Landroid/app/INotificationManager;

    .line 20
    .line 21
    invoke-interface {p0, p1, v3}, Landroid/app/INotificationManager;->isNotificationTurnedOff(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    return p0

    .line 45
    :catch_0
    return v2

    .line 46
    :catch_1
    move-exception p0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, "NameNotFoundException"

    .line 50
    .line 51
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return v2
.end method

.method public deleteNotification(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->getVisibleNotifications()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v1}, Lcom/android/systemui/bixby2/controller/NotificationController;->checkNotificatoins(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/NotificationController;->deleteAllNotifications(Ljava/util/List;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v1, "includeOngoing"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->deleteNotificationAllDismissable()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/NotificationController;->deleteAppNotifications(Ljava/lang/String;Ljava/util/List;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p0, 0x2

    .line 41
    :goto_0
    const-string p1, " deleteNotification : "

    .line 42
    .line 43
    const-string v0, "NotificationController"

    .line 44
    .line 45
    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return p0
.end method

.method public deleteNotificationAllDismissable()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->getVisibleNotifications()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v1}, Lcom/android/systemui/bixby2/controller/NotificationController;->checkNotificatoins(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/NotificationController;->deleteAllNotificationsDismissable(Ljava/util/List;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x2

    .line 21
    :goto_0
    const-string v0, " deleteNotificationAllDismissable : "

    .line 22
    .line 23
    const-string v1, "NotificationController"

    .line 24
    .line 25
    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return p0
.end method

.method public filterReadOutNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 1
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public getDisplayDescription()Ljava/lang/StringBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mDisplayDescription:Ljava/lang/StringBuffer;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFocusedPackageName()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->getFocusedStack()Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "topActivity = "

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", visible = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-boolean v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    .line 26
    .line 27
    const-string v2, "NotificationController"

    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-boolean v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, "focusedPackageName = "

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_0
    const/4 p0, 0x0

    .line 71
    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mItemCount:I

    .line 2
    .line 3
    return p0
.end method

.method public goToNotiSettings(Landroid/content/Context;)Z
    .locals 8

    .line 1
    new-instance v2, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "android.settings.NOTIFICATION_POPUP_STYLE_SETTINGS"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7
    .line 8
    .line 9
    const v0, 0x10008000

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->isFolderClosed()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance v7, Landroid/content/Intent;

    .line 27
    .line 28
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "showCoverToast"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const-string v0, "ignoreKeyguardState"

    .line 38
    .line 39
    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    const/high16 v3, 0xc000000

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    sget-object v5, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 47
    .line 48
    move-object v0, p1

    .line 49
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 54
    .line 55
    invoke-virtual {p0, p1, v7}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return v6
.end method

.method public openNotificationPanel()V
    .locals 1

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 12
    .line 13
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-class p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->notifyNotificationSubRoomRequest()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 40
    .line 41
    check-cast p0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    const/4 v0, 0x4

    .line 52
    if-ne p0, v0, :cond_2

    .line 53
    .line 54
    const/4 p0, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 p0, 0x0

    .line 57
    :goto_1
    const-string/jumbo v0, "statusbar"

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanelToType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catch_0
    const-string p0, "NotificationController"

    .line 75
    .line 76
    const-string v0, "error while expandNotificationsPanel"

    .line 77
    .line 78
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_2
    return-void
.end method

.method public readNotificationWithID(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->getVisibleNotifications()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "all"

    .line 8
    .line 9
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/NotificationController;->readAppNotificationWithID(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/NotificationController;->readAllNotification(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/NotificationController;->readAppNotificationWithID(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    const-string/jumbo p0, "result"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method public replyNotification(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    .line 1
    const-string/jumbo v0, "send remote input result by others : "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "NotificationController"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p0, "Unable to send remote input result, entry is null : "

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return v3

    .line 25
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/bixby2/controller/NotificationController;->isRemoteInputNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    const-string p0, "Unable to send remote input result, not remote input : "

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return v3

    .line 41
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v5, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInput:Landroid/app/RemoteInput;

    .line 47
    .line 48
    invoke-virtual {v5}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v5, Landroid/content/Intent;

    .line 56
    .line 57
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 58
    .line 59
    .line 60
    const/high16 v6, 0x10000000

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    iget-object v6, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 67
    .line 68
    invoke-static {v6, v5, v4}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    iput-object p2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    iput-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputUri:Landroid/net/Uri;

    .line 75
    .line 76
    iput-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputMimeType:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v5, v3}, Landroid/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    .line 79
    .line 80
    .line 81
    :try_start_0
    sget-boolean v4, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY:Z

    .line 82
    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    iget-object v6, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifManager:Landroid/app/INotificationManager;

    .line 86
    .line 87
    const/4 v7, 0x1

    .line 88
    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 91
    .line 92
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    const-string v11, "NOUI_2023"

    .line 107
    .line 108
    move-object v12, p2

    .line 109
    invoke-interface/range {v6 .. v12}, Landroid/app/INotificationManager;->addReplyHistory(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputIntent:Landroid/app/PendingIntent;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {p2, p0, v3, v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    const/4 p0, 0x1

    .line 127
    return p0

    .line 128
    :catch_0
    return v3

    .line 129
    :catch_1
    move-exception p0

    .line 130
    const-string p1, "Unable to send remote input result"

    .line 131
    .line 132
    invoke-static {v2, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .line 134
    .line 135
    return v3
.end method

.method public setNotificationEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mEntries:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setNotificationTurnOffForPackage(Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, "Package ("

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v2, p1}, Lcom/android/settingslib/SecNotificationBlockManager;->isBlockablePackage(Landroid/content/Context;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "NotificationController"

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    const-string p0, "Non-blockable package : "

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/16 p0, 0x8

    .line 27
    .line 28
    return p0

    .line 29
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifManager:Landroid/app/INotificationManager;

    .line 40
    .line 41
    invoke-interface {p0, p1, v2}, Landroid/app/INotificationManager;->setNotificationTurnOff(Ljava/lang/String;I)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, ") notification is already turned off"

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    const/16 p0, 0x9

    .line 70
    .line 71
    return p0

    .line 72
    :catch_0
    return v1

    .line 73
    :catch_1
    move-exception p0

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v0, "NameNotFoundException"

    .line 77
    .line 78
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    return v1
.end method
