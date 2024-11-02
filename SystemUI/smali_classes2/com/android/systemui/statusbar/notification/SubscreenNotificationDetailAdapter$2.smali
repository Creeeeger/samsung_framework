.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field public final synthetic val$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$2;->val$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SubscreenNotificationDetailAdapter"

    .line 4
    .line 5
    const-string v2, "OutSide Touch Popup Dismiss"

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->dismissReplyButtons(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$2;->val$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 17
    .line 18
    move v1, v2

    .line 19
    :goto_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ge v1, v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 32
    .line 33
    sget-object v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->REGULAR:Landroid/graphics/Typeface;

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    const v9, 0x3e4ccccd    # 0.2f

    .line 37
    .line 38
    .line 39
    const/high16 v10, 0x3f800000    # 1.0f

    .line 40
    .line 41
    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->setReplyWordTextStyle(Landroid/view/View;Landroid/graphics/Typeface;ZFF)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 48
    .line 49
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    :goto_1
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-ge v2, v4, :cond_1

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    sget-object v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 64
    .line 65
    const v5, 0x3e4ccccd    # 0.2f

    .line 66
    .line 67
    .line 68
    const/high16 v6, 0x3f800000    # 1.0f

    .line 69
    .line 70
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->setSmartReplyWordTextStyle(Landroid/view/View;FF)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 77
    .line 78
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mDetailButtonLayout:Landroid/widget/LinearLayout;

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    const-wide/16 v7, 0xfa

    .line 82
    .line 83
    const v9, 0x3e4ccccd    # 0.2f

    .line 84
    .line 85
    .line 86
    const/high16 v10, 0x3f800000    # 1.0f

    .line 87
    .line 88
    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;JFF)Landroid/animation/Animator;

    .line 89
    .line 90
    .line 91
    iget-object v11, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 92
    .line 93
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mEditButton:Landroid/widget/TextView;

    .line 94
    .line 95
    const/4 v13, 0x0

    .line 96
    const-wide/16 v14, 0xfa

    .line 97
    .line 98
    const v16, 0x3e4ccccd    # 0.2f

    .line 99
    .line 100
    .line 101
    const/high16 v17, 0x3f800000    # 1.0f

    .line 102
    .line 103
    invoke-virtual/range {v11 .. v17}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;JFF)Landroid/animation/Animator;

    .line 104
    .line 105
    .line 106
    return-void
.end method
