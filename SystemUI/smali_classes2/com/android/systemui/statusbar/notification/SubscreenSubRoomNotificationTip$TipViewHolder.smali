.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0a0f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;->mSettingsBtn:Landroid/widget/TextView;

    .line 16
    .line 17
    const v0, 0x7f0a0342

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;->mDismissBtn:Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;->mSettingsBtn:Landroid/widget/TextView;

    .line 29
    .line 30
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$1;

    .line 31
    .line 32
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;->mDismissBtn:Landroid/widget/TextView;

    .line 39
    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$2;

    .line 41
    .line 42
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
