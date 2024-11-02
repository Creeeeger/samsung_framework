.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardStats()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->$context:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showBouncer(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->$context:Landroid/content/Context;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    iput v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    .line 36
    .line 37
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mDetailAdapterItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 38
    .line 39
    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->$context:Landroid/content/Context;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 47
    .line 48
    invoke-static {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->access$showReplyActivity(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method
