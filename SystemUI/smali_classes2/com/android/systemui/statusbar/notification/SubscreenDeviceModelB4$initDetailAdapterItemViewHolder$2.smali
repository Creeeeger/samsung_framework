.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field public final synthetic $holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$2;->$adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$2;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$2;->$adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSvoiceEmojiClicked:Z

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$2;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 9
    .line 10
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p1, "SubscreenNotificationDetailAdapter"

    .line 15
    .line 16
    const-string v1, "Click ReplyVoiceButton"

    .line 17
    .line 18
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$2;->$adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$2;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 24
    .line 25
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 30
    .line 31
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->startReplyActivity(ILcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const-string p0, "QPN102"

    .line 35
    .line 36
    const-string p1, "QPNE0205"

    .line 37
    .line 38
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
