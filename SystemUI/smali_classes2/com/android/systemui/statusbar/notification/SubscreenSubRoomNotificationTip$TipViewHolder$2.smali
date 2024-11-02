.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "SubscreenSubRoomNotificationTip"

    .line 2
    .line 3
    const-string v0, "dismiss button click"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->onTipButtonClicked()V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->notifyClockSubRoomRequest()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
