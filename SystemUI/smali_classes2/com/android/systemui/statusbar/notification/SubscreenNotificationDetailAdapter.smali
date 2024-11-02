.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;
.super Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final MEDIUM:Landroid/graphics/Typeface;

.field public static final REGULAR:Landroid/graphics/Typeface;

.field public static sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;


# instance fields
.field public mCallbackClicked:Z

.field public mIsShownReplyButtonWindow:Z

.field public mItemPostionInGroup:I

.field public mNeedToUnlock:Z

.field public mPopupWindow:Landroid/widget/PopupWindow;

.field public final mPopupWindowKeyEventListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$1;

.field public mPrevSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

.field public mReplyButtonView:Landroid/view/View;

.field public mReplySendAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field public mReplyclicked:Z

.field public final mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

.field public mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

.field public mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

.field public mSvoiceEmojiClicked:Z

.field public mUpdatedInfo:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "roboto-regular"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->REGULAR:Landroid/graphics/Typeface;

    .line 10
    .line 11
    const-string/jumbo v0, "sec-roboto-light"

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->MEDIUM:Landroid/graphics/Typeface;

    .line 20
    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyclicked:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mCallbackClicked:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mNeedToUnlock:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSvoiceEmojiClicked:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplySendAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mUpdatedInfo:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    .line 19
    .line 20
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    .line 26
    .line 27
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$1;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindowKeyEventListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$1;

    .line 33
    .line 34
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final cleanAdapter()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyclicked:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mCallbackClicked:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mNeedToUnlock:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSvoiceEmojiClicked:Z

    .line 12
    .line 13
    return-void
.end method

.method public final dismissReplyButtons(Z)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    const-string p1, "SubscreenNotificationDetailAdapter"

    .line 13
    .line 14
    const-string v1, "dismissReplyButtons"

    .line 15
    .line 16
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplySendAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplySendAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplySendAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindowKeyEventListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$1;

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/view/View;->removeOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->cancelReplySendButtonAnimator()V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    .line 69
    .line 70
    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 73
    .line 74
    .line 75
    const/high16 v4, 0x3f800000    # 1.0f

    .line 76
    .line 77
    const v5, 0x3f4ccccd    # 0.8f

    .line 78
    .line 79
    .line 80
    const/high16 v6, 0x3f800000    # 1.0f

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->replyButtonAnimated(Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda0;FFFF)V

    .line 84
    .line 85
    .line 86
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mUpdatedInfo:Z

    .line 87
    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->runSmartReplyUncompletedOperation()V

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mUpdatedInfo:Z

    .line 99
    .line 100
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->enableGoToTopButton()V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final getItemCount()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mHasSemanticCall:Z

    .line 36
    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMissedCall:Z

    .line 40
    .line 41
    if-nez p0, :cond_3

    .line 42
    .line 43
    :cond_2
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_3
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1
    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 2
    .line 3
    const-wide/16 v0, 0x64

    .line 4
    .line 5
    if-eqz p2, :cond_7

    .line 6
    .line 7
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    const-string v2, "SubscreenNotificationDetailAdapter"

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const-string p0, "info is null"

    .line 17
    .line 18
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const-class p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 22
    .line 23
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotificationAnimated(IZ)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v4, -0x1

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    const-string v5, ":"

    .line 45
    .line 46
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v5, v4

    .line 52
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsGroupConversation:Z

    .line 53
    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    if-le v5, v4, :cond_2

    .line 57
    .line 58
    :try_start_0
    invoke-virtual {v3, p2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception p2

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v5, "StringIndexOutOfBoundsException: "

    .line 67
    .line 68
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string/jumbo p2, "title : "

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_1
    const-string p2, "\n"

    .line 91
    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    const-string v2, " "

    .line 95
    .line 96
    invoke-virtual {v3, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    :cond_3
    invoke-static {v3, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    .line 109
    .line 110
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 111
    .line 112
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAppName:Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    if-eqz v3, :cond_4

    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_5

    .line 135
    .line 136
    :cond_4
    const/16 v2, 0x8

    .line 137
    .line 138
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->setIconDrawable()V

    .line 142
    .line 143
    .line 144
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    .line 145
    .line 146
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-lez v2, :cond_6

    .line 151
    .line 152
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 153
    .line 154
    .line 155
    :cond_6
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 156
    .line 157
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 158
    .line 159
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setContentViewItem(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->updateShowInAppButtonVisibility()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->updateClearButtonVisibility()V

    .line 168
    .line 169
    .line 170
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 171
    .line 172
    invoke-virtual {v2, p2, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setDetailAdapterItemHolderButtonContentDescription(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 173
    .line 174
    .line 175
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mHandler:Landroid/os/Handler;

    .line 176
    .line 177
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInitFocusRunnable:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$2;

    .line 178
    .line 179
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    .line 181
    .line 182
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 183
    .line 184
    invoke-virtual {v0, p2, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->onBindDetailAdapterItemViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTwoPhoneIcon:Landroid/widget/ImageView;

    .line 193
    .line 194
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateTwoPhoneIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 195
    .line 196
    .line 197
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 198
    .line 199
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSecureIcon:Landroid/widget/ImageView;

    .line 203
    .line 204
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_7
    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    .line 209
    .line 210
    if-eqz p2, :cond_9

    .line 211
    .line 212
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    .line 213
    .line 214
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 215
    .line 216
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 217
    .line 218
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    if-eqz p2, :cond_8

    .line 223
    .line 224
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getContentHiddenText(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    goto :goto_2

    .line 229
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    .line 230
    .line 231
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    const v2, 0x7f1310db

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    :goto_2
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 243
    .line 244
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    .line 245
    .line 246
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAppName:Landroid/widget/TextView;

    .line 247
    .line 248
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 252
    .line 253
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->setIconDrawable()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->updateShowInAppButtonVisibility()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->updateClearButtonVisibility()V

    .line 263
    .line 264
    .line 265
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 266
    .line 267
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 268
    .line 269
    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setDetailAdapterTextHolderButtonContentDescription(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V

    .line 270
    .line 271
    .line 272
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mHandler:Landroid/os/Handler;

    .line 273
    .line 274
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInitFocusRunnable:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$2;

    .line 275
    .line 276
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    .line 278
    .line 279
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 280
    .line 281
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->onBindDetailAdapterTextViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;)V

    .line 282
    .line 283
    .line 284
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTwoPhoneIcon:Landroid/widget/ImageView;

    .line 290
    .line 291
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateTwoPhoneIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 292
    .line 293
    .line 294
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 295
    .line 296
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSecureIcon:Landroid/widget/ImageView;

    .line 300
    .line 301
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 302
    .line 303
    .line 304
    :cond_9
    :goto_3
    return-void
.end method

.method public final onCreateViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getDetailAdapterLayout(Landroidx/recyclerview/widget/RecyclerView;ILandroid/content/Context;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 12
    .line 13
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    return-object p2

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    if-ne p2, v0, :cond_1

    .line 19
    .line 20
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    .line 21
    .line 22
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p2, 0x0

    .line 27
    :goto_0
    return-object p2
.end method

.method public final setReplyWordTextStyle(Landroid/view/View;Landroid/graphics/Typeface;ZFF)V
    .locals 8

    .line 1
    const v0, 0x7f0a0b20

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const v1, 0x7f0a0b23

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    move-object v2, p1

    .line 18
    check-cast v2, Landroid/widget/TextView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 26
    .line 27
    invoke-virtual {p1, v2, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setReplyWordTextStyle(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 28
    .line 29
    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getSelectedReplyBGColor()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setQuickReplyFocusBackground(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getAlpha()F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    cmpl-float p1, p1, p5

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    const-wide/16 v4, 0xfa

    .line 65
    .line 66
    move v6, p4

    .line 67
    move v7, p5

    .line 68
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;JFF)Landroid/animation/Animator;

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_1
    return-void
.end method

.method public final setSmartReplyWordTextStyle(Landroid/view/View;FF)V
    .locals 7

    .line 1
    const v0, 0x7f0a0b21

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    move-object v1, p1

    .line 9
    check-cast v1, Landroid/widget/LinearLayout;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getAlpha()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    cmpl-float p1, p1, p3

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const-wide/16 v3, 0xfa

    .line 23
    .line 24
    move v5, p2

    .line 25
    move v6, p3

    .line 26
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;JFF)Landroid/animation/Animator;

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final showReplyButtons(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getReplyButtonView()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 16
    .line 17
    invoke-virtual {v2, v1, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showReplyButtonViewPopupWindow(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 22
    .line 23
    invoke-virtual {p3, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 24
    .line 25
    .line 26
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/widget/PopupWindow;->update()V

    .line 29
    .line 30
    .line 31
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    .line 34
    .line 35
    .line 36
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindowKeyEventListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$1;

    .line 39
    .line 40
    invoke-virtual {p3, v0}, Landroid/view/View;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 41
    .line 42
    .line 43
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 44
    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$2;

    .line 46
    .line 47
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    const v4, 0x3f4ccccd    # 0.8f

    .line 59
    .line 60
    .line 61
    const/high16 v5, 0x3f800000    # 1.0f

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    const/high16 v7, 0x3f800000    # 1.0f

    .line 65
    .line 66
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->replyButtonAnimated(Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda0;FFFF)V

    .line 67
    .line 68
    .line 69
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    .line 70
    .line 71
    const v0, 0x7f0a0217

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    check-cast p3, Landroid/widget/TextView;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    .line 81
    .line 82
    const v1, 0x7f0a09d6

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$3;

    .line 90
    .line 91
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$3;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    new-instance p3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;

    .line 98
    .line 99
    invoke-direct {p3, p0, p1, p2, p4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method
