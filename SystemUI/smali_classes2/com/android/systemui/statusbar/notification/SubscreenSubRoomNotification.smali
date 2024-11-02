.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/subscreen/SubRoom;


# static fields
.field public static mContext:Landroid/content/Context;

.field public static sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;


# instance fields
.field public final linearLayoutManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;

.field public mHasUnreadNoti:Z

.field public mIsInNotiRoom:Z

.field public mIsScrollByMe:Z

.field public mIsShownDetail:Z

.field public mIsShownGroup:Z

.field public final mLockscreenNotiCallback:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$3;

.field public mMainView:Landroid/view/View;

.field public mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

.field public mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field public mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

.field public mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

.field public mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

.field public mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

.field public mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

.field public mRecyclerViewFirstVisibleItemPosition:I

.field public mRecyclerViewItemSelectKey:Ljava/lang/String;

.field public mRecyclerViewLastVisibleItemPosition:I

.field public final mRecyclerViewScrollListener:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;

.field public final mRemoteInputEmojiActionBroadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$4;

.field public final mRemoteInputVoiceActionBroadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$5;

.field public mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

.field public mSubRoomNotificationTipAdapter:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

.field public mSubscreenMainLayout:Landroid/widget/LinearLayout;

.field public final mUnreadNotificationList:Ljava/util/ArrayList;

.field public mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static -$$Nest$mreturnRemoteInput(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "open"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-class p3, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 19
    .line 20
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 25
    .line 26
    check-cast p3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 27
    .line 28
    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->checkRemoteInputRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_0
    const-string/jumbo v0, "send"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    const-class p3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 49
    .line 50
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    check-cast p3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 55
    .line 56
    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->replyNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 60
    .line 61
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    .line 62
    .line 63
    const-string p3, "SubscreenNotificationDetailAdapter"

    .line 64
    .line 65
    if-eqz p2, :cond_2

    .line 66
    .line 67
    iget-boolean p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSvoiceEmojiClicked:Z

    .line 68
    .line 69
    const/16 v0, 0x12c

    .line 70
    .line 71
    if-eqz p2, :cond_1

    .line 72
    .line 73
    const-string p2, " hide notification after svoice/emoji reply"

    .line 74
    .line 75
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    const-class p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 84
    .line 85
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 90
    .line 91
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 92
    .line 93
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotificationAnimated(IZ)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 99
    .line 100
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 101
    .line 102
    const-string p2, ""

    .line 103
    .line 104
    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    const-string p2, " remove notification by call back"

    .line 108
    .line 109
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    .line 113
    .line 114
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 115
    .line 116
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 117
    .line 118
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 123
    .line 124
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 125
    .line 126
    .line 127
    const-class p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 128
    .line 129
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 136
    .line 137
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotificationAnimated(IZ)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_2
    const-string p1, " remove notification, but selection holder is null."

    .line 142
    .line 143
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_3
    const-string/jumbo p1, "permissionCheck"

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_4

    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 162
    .line 163
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mNeedToUnlock:Z

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_4
    const-string p1, "dismiss"

    .line 167
    .line 168
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_5

    .line 173
    .line 174
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    .line 177
    .line 178
    .line 179
    :cond_5
    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsScrollByMe:Z

    .line 21
    .line 22
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewScrollListener:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;

    .line 28
    .line 29
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;

    .line 30
    .line 31
    sget-object v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;Landroid/content/Context;IZ)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->linearLayoutManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;

    .line 38
    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$3;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$3;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$3;

    .line 45
    .line 46
    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$4;

    .line 47
    .line 48
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$4;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V

    .line 49
    .line 50
    .line 51
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRemoteInputEmojiActionBroadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$4;

    .line 52
    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$5;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$5;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRemoteInputVoiceActionBroadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$5;

    .line 59
    .line 60
    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const v3, 0x7f0d046d

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mMainView:Landroid/view/View;

    .line 75
    .line 76
    const v3, 0x7f0a0b29

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/widget/LinearLayout;

    .line 84
    .line 85
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    .line 86
    .line 87
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initMainHeaderView(Landroid/widget/LinearLayout;)V

    .line 94
    .line 95
    .line 96
    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    .line 97
    .line 98
    if-nez v1, :cond_0

    .line 99
    .line 100
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    .line 101
    .line 102
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;-><init>()V

    .line 103
    .line 104
    .line 105
    sput-object v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    .line 106
    .line 107
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    .line 108
    .line 109
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubRoomNotificationTipAdapter:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    .line 110
    .line 111
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->getInstance()Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 116
    .line 117
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->getInstance()Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 122
    .line 123
    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 124
    .line 125
    if-nez v1, :cond_1

    .line 126
    .line 127
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 128
    .line 129
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;-><init>()V

    .line 130
    .line 131
    .line 132
    sput-object v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 133
    .line 134
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 135
    .line 136
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 137
    .line 138
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 139
    .line 140
    sget-object v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 143
    .line 144
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 145
    .line 146
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 147
    .line 148
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)V

    .line 149
    .line 150
    .line 151
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 152
    .line 153
    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 154
    .line 155
    const-string/jumbo v3, "vibrator_manager"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Landroid/os/VibratorManager;

    .line 163
    .line 164
    invoke-virtual {v1}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mVibrator:Landroid/os/Vibrator;

    .line 169
    .line 170
    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    .line 171
    .line 172
    sget-object v4, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 175
    .line 176
    invoke-direct {v3, v4, v5, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;Landroid/os/Vibrator;)V

    .line 177
    .line 178
    .line 179
    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    .line 180
    .line 181
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 182
    .line 183
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 184
    .line 185
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mVibrator:Landroid/os/Vibrator;

    .line 186
    .line 187
    invoke-direct {v1, v3, v4}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;Landroid/os/Vibrator;)V

    .line 188
    .line 189
    .line 190
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initRecyclerView()V

    .line 193
    .line 194
    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubRoomNotificationTipAdapter:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    .line 196
    .line 197
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    .line 198
    .line 199
    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 201
    .line 202
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 206
    .line 207
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    .line 208
    .line 209
    .line 210
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 211
    .line 212
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    .line 213
    .line 214
    .line 215
    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 216
    .line 217
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 218
    .line 219
    new-instance v4, Landroid/content/IntentFilter;

    .line 220
    .line 221
    const-string p0, "com.samsung.android.action.RETURN_REMOTE_INPUT"

    .line 222
    .line 223
    invoke-direct {v4, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string v5, "com.samsung.android.permission.RETURN_REMOTE_INPUT"

    .line 227
    .line 228
    const/4 v6, 0x0

    .line 229
    const/4 v7, 0x2

    .line 230
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 231
    .line 232
    .line 233
    sget-object v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 234
    .line 235
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 236
    .line 237
    new-instance v6, Landroid/content/IntentFilter;

    .line 238
    .line 239
    const-string p0, "com.samsung.android.action.RETURN_REMOTE_INPUT_VOICE"

    .line 240
    .line 241
    invoke-direct {v6, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const-string v7, "com.samsung.android.permission.RETURN_REMOTE_INPUT_VOICE"

    .line 245
    .line 246
    const/4 v8, 0x0

    .line 247
    const/4 v9, 0x2

    .line 248
    move-object v4, v0

    .line 249
    invoke-virtual/range {v3 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method public static getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 10
    .line 11
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sput-object p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    new-instance p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 13
    .line 14
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 15
    .line 16
    return-object p0
.end method


# virtual methods
.method public final getBixbyNotificationVisible(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewFirstVisibleItemPosition:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq v0, v2, :cond_3

    .line 6
    .line 7
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewLastVisibleItemPosition:I

    .line 8
    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    move v0, v1

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-gt v0, v2, :cond_3

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    return v4

    .line 53
    :cond_1
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 60
    .line 61
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    return v4

    .line 70
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    :goto_1
    return v1
.end method

.method public final getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mMainView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hideDetailNotification()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "hideDetailNotification mIsShownGroup: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "SubscreenSubRoomNotification"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArraySize()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-gt v1, v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->hideGroupNotification()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sget-object v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 65
    .line 66
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 67
    .line 68
    invoke-virtual {v1, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initMainHeaderViewItems(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Z)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateMainHeaderViewVisibility(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setListAdpater()V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const/16 v3, 0x8

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateMainHeaderViewVisibility(I)V

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->scrollToSelectedPosition()V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    .line 95
    .line 96
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemViewSwipeEnabled:Z

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    .line 101
    .line 102
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mIsSendedQuickReply:Z

    .line 103
    .line 104
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->dismissReplyButtons(Z)V

    .line 105
    .line 106
    .line 107
    :cond_2
    return-void
.end method

.method public final hideGroupNotification()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "SubscreenSubRoomNotification"

    .line 10
    .line 11
    const-string v1, "hideGroupNotification"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->clearAllRecyclerViewItem()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setListAdpater()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setShownGroup(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->scrollToSelectedPosition()V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const/16 v0, 0x8

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateMainHeaderViewVisibility(I)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public final initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 13
    .line 14
    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 17
    .line 18
    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 21
    .line 22
    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 25
    .line 26
    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 27
    .line 28
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 29
    .line 30
    sget-object p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    return-void
.end method

.method public final initData()V
    .locals 5

    .line 1
    const-string v0, "SubscreenSubRoomNotification"

    .line 2
    .line 3
    const-string v1, "initData"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_GHOST_NOTIFICATION:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->hideDetailNotif()V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->clearMainList()V

    .line 32
    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->buildList()V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setShownGroup(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->clearAllRecyclerViewItem()V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 59
    .line 60
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    .line 61
    .line 62
    iput-boolean v0, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mIsSendedQuickReply:Z

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    .line 71
    .line 72
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    invoke-static {v2}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    iput v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mLayoutDirection:I

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemViewSwipeEnabled:Z

    .line 82
    .line 83
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSimpleItemTouchCallBack:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;

    .line 84
    .line 85
    const/16 v4, 0x8

    .line 86
    .line 87
    if-ne v2, v3, :cond_1

    .line 88
    .line 89
    const/4 v2, 0x4

    .line 90
    iput v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iput v4, v1, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 94
    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setListAdpater()V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 101
    .line 102
    .line 103
    const/4 v1, -0x1

    .line 104
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewFirstVisibleItemPosition:I

    .line 105
    .line 106
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewLastVisibleItemPosition:I

    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->dismissReplyButtons(Z)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateMainHeaderViewVisibility(I)V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateContentScroll()V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    .line 128
    .line 129
    const/high16 v2, 0x3f800000    # 1.0f

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 132
    .line 133
    .line 134
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final initRecyclerView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewScrollListener:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    .line 19
    .line 20
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mOnItemTouchListener:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;

    .line 21
    .line 22
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 28
    .line 29
    if-ne v4, v3, :cond_0

    .line 30
    .line 31
    iput-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mMainView:Landroid/view/View;

    .line 41
    .line 42
    const v2, 0x7f0a076c

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->linearLayoutManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    .line 68
    .line 69
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 70
    .line 71
    const/4 v4, 0x7

    .line 72
    iput v4, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 73
    .line 74
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->enableGoToTopButton()V

    .line 82
    .line 83
    .line 84
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget-boolean v4, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    .line 96
    .line 97
    if-eqz v4, :cond_2

    .line 98
    .line 99
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 100
    .line 101
    const-string v4, "cover_screen_show_notification_tip"

    .line 102
    .line 103
    invoke-virtual {v0, v4}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-ne v0, v3, :cond_2

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    move v3, v2

    .line 115
    :goto_0
    if-eqz v3, :cond_3

    .line 116
    .line 117
    const-string v0, "SubscreenSubRoomNotification"

    .line 118
    .line 119
    const-string v3, "initTipData"

    .line 120
    .line 121
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 125
    .line 126
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubRoomNotificationTipAdapter:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setListAdpater()V

    .line 133
    .line 134
    .line 135
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 136
    .line 137
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    .line 138
    .line 139
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mOnItemTouchListener:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;

    .line 140
    .line 141
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 152
    .line 153
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 154
    .line 155
    instance-of v3, v1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    .line 156
    .line 157
    if-eqz v3, :cond_4

    .line 158
    .line 159
    check-cast v1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    .line 160
    .line 161
    iput-boolean v2, v1, Landroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    .line 162
    .line 163
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    .line 164
    .line 165
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 168
    .line 169
    .line 170
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 175
    .line 176
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setItemDecoration(Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final notifyClockSubRoomRequest()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SubscreenSubRoomNotification"

    .line 6
    .line 7
    const-string v1, "notifyClockSubRoomRequest"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "focusRequired"

    .line 18
    .line 19
    const-string v2, "clock"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 25
    .line 26
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final notifyNotificationSubRoomRequest()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SubscreenSubRoomNotification"

    .line 6
    .line 7
    const-string v1, "notifyNotificationSubRoomRequest"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "focusRequired"

    .line 18
    .line 19
    const-string v2, "notification"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 25
    .line 26
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final onCloseFinished()V
    .locals 4

    .line 1
    const-string v0, "onCloseFinished"

    .line 2
    .line 3
    const-string v1, "SubscreenSubRoomNotification"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    .line 10
    .line 11
    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-boolean v3, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 27
    .line 28
    const-string v3, "cover_screen_show_notification_tip"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x1

    .line 39
    if-ne v2, v3, :cond_0

    .line 40
    .line 41
    move v0, v3

    .line 42
    :cond_0
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string v0, "initTipData"

    .line 45
    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubRoomNotificationTipAdapter:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initData()V

    .line 58
    .line 59
    .line 60
    :goto_0
    const-class p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 61
    .line 62
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->replyActivity:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    .line 69
    .line 70
    if-eqz p0, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public final onOpenStarted()V
    .locals 3

    .line 1
    const-string v0, "SubscreenSubRoomNotification"

    .line 2
    .line 3
    const-string v1, "onOpenStarted"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->clearMainList()V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->buildList()V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 42
    .line 43
    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const v2, 0x7f130c36

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    const/4 v1, 0x2

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->updateNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final removeListener()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 3
    .line 4
    return-void
.end method

.method public final request(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 1
    const-string v0, "STATE_UNREAD_NOTIFICATION"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string p2, "hasUnread"

    .line 15
    .line 16
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    .line 17
    .line 18
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const-string v0, "STATE_POPUP_DISMISSED"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v1, "SubscreenSubRoomNotification"

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string/jumbo p1, "request() STATE_POPUP_DISMISSED "

    .line 33
    .line 34
    .line 35
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "STATE_BIO_POPUP_CANCELED"

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    const-string/jumbo p1, "request() STATE_BIO_POPUP_CANCELED "

    .line 53
    .line 54
    .line 55
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initKeyguardActioninfo()V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_0
    return-object p2
.end method

.method public final scrollToSelectedPosition()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsScrollByMe:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewItemSelectKey:Ljava/lang/String;

    .line 7
    .line 8
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    .line 9
    .line 10
    sget-object v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v3, v6

    .line 30
    :goto_0
    move v7, v6

    .line 31
    :goto_1
    if-ge v7, v3, :cond_5

    .line 32
    .line 33
    iget-boolean v8, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    .line 34
    .line 35
    if-eqz v8, :cond_2

    .line 36
    .line 37
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    check-cast v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 42
    .line 43
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 51
    .line 52
    iget-object v8, v8, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 53
    .line 54
    :goto_2
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_4

    .line 59
    .line 60
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 61
    .line 62
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    instance-of v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 68
    .line 69
    xor-int/2addr v0, v2

    .line 70
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    add-int/2addr v7, v0

    .line 75
    :cond_3
    move v6, v7

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 81
    .line 82
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final setListAdpater()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 18
    .line 19
    const-string v1, "cover_screen_show_notification_tip"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v1, v2

    .line 34
    :goto_0
    if-eqz v1, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final setListener(Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public final showDetailNotification(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v1, "showDetailNotification key : "

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "SubscreenSubRoomNotification"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->dismissReplyButtons(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 38
    .line 39
    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    .line 52
    .line 53
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemViewSwipeEnabled:Z

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 57
    .line 58
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewItemSelectKey:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initSmartReplyStatus()V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sget-object v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v0, v2, p1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initMainHeaderViewItems(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Z)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateMainHeaderViewVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 86
    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    .line 97
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_1

    .line 110
    .line 111
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 120
    .line 121
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 122
    .line 123
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    .line 124
    .line 125
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    .line 128
    .line 129
    sget-object v3, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;

    .line 130
    .line 131
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 135
    .line 136
    if-eqz p1, :cond_1

    .line 137
    .line 138
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->resetBadgeUi(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 144
    .line 145
    .line 146
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    .line 151
    .line 152
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setDimOnMainBackground(Landroid/view/View;)V

    .line 153
    .line 154
    .line 155
    :cond_2
    return-void
.end method

.method public final startReplyActivity(ILcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "display"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 10
    .line 11
    const-string v1, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    array-length v1, v0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    const/4 v3, 0x1

    .line 20
    if-ge v2, v1, :cond_1

    .line 21
    .line 22
    aget-object v4, v0, v2

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-ne v5, v3, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v4, 0x0

    .line 35
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "display: "

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "SubscreenSubRoomNotification"

    .line 50
    .line 51
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 61
    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-virtual {v5, v4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 75
    .line 76
    .line 77
    new-instance v4, Landroid/content/Intent;

    .line 78
    .line 79
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 80
    .line 81
    .line 82
    if-ne p1, v3, :cond_2

    .line 83
    .line 84
    const-string/jumbo p1, "samsung.honeyboard.honeyvoice.action.RECOGNIZE_SPEECH"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v6, "locale"

    .line 99
    .line 100
    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    iget p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputMaxLength:I

    .line 104
    .line 105
    const-string v6, "maxLength"

    .line 106
    .line 107
    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    iget-boolean p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputIsSms:Z

    .line 111
    .line 112
    const-string v6, "isSms"

    .line 113
    .line 114
    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputSignature:Ljava/lang/String;

    .line 118
    .line 119
    const-string/jumbo v6, "signature"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string/jumbo v6, "voice started  ml : "

    .line 128
    .line 129
    .line 130
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget v6, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputMaxLength:I

    .line 134
    .line 135
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v6, " is : "

    .line 139
    .line 140
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-boolean v6, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputIsSms:Z

    .line 144
    .line 145
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v6, " s : "

    .line 149
    .line 150
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputSignature:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_2
    const/4 p2, 0x2

    .line 160
    if-ne p1, p2, :cond_3

    .line 161
    .line 162
    new-instance v4, Landroid/content/Intent;

    .line 163
    .line 164
    const-string p1, "honeyboard://cover-emoticon"

    .line 165
    .line 166
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const-string p2, "com.samsung.android.honeyboard.intent.action.COVER_EMOTICON"

    .line 171
    .line 172
    invoke-direct {v4, p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    .line 174
    .line 175
    const-string p1, "emoji started "

    .line 176
    .line 177
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    :cond_3
    :goto_2
    move-object v8, v4

    .line 181
    const/high16 p1, 0x10800000

    .line 182
    .line 183
    invoke-virtual {v8, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    const-string p1, "key"

    .line 187
    .line 188
    invoke-virtual {v8, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    sget-object v6, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 192
    .line 193
    const/4 v7, 0x0

    .line 194
    const/high16 v9, 0xc000000

    .line 195
    .line 196
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 201
    .line 202
    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    new-instance p2, Landroid/content/Intent;

    .line 207
    .line 208
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string/jumbo v1, "runOnCover"

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    .line 216
    .line 217
    const-string v1, "afterKeyguardGone"

    .line 218
    .line 219
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    .line 221
    .line 222
    const-string v1, "ignoreKeyguardState"

    .line 223
    .line 224
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    .line 226
    .line 227
    invoke-interface {v0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchStartSubscreenBiometric(Landroid/content/Intent;)V

    .line 228
    .line 229
    .line 230
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 231
    .line 232
    if-eqz p0, :cond_4

    .line 233
    .line 234
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->requestCoverPopup(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 235
    .line 236
    .line 237
    :cond_4
    return-void
.end method

.method public final updateNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-class v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 12
    .line 13
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    move v2, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v0

    .line 22
    :goto_0
    const-string v3, "SubscreenSubRoomNotification"

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    const-string/jumbo p0, "updateNotificationState -  Filter out notification"

    .line 27
    .line 28
    .line 29
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const-string/jumbo v2, "updateNotificationState -  action = "

    .line 34
    .line 35
    .line 36
    const-string v4, " list size = "

    .line 37
    .line 38
    invoke-static {v2, p2, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    if-eqz p2, :cond_4

    .line 60
    .line 61
    if-eq p2, v1, :cond_3

    .line 62
    .line 63
    if-eq p2, v2, :cond_2

    .line 64
    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_3
    if-eqz p1, :cond_8

    .line 73
    .line 74
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :cond_4
    if-eqz p1, :cond_8

    .line 82
    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string/jumbo v6, "updateNotificationState - mIsInNotiRoom = "

    .line 86
    .line 87
    .line 88
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    .line 92
    .line 93
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v6, " isOngoing = "

    .line 97
    .line 98
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v6, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 102
    .line 103
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v6, " importance = "

    .line 111
    .line 112
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v6, " isGroupSummary = "

    .line 123
    .line 124
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v6, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 128
    .line 129
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v6}, Landroid/app/Notification;->isGroupSummary()Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    .line 148
    .line 149
    if-nez p2, :cond_8

    .line 150
    .line 151
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 152
    .line 153
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    if-nez p2, :cond_8

    .line 158
    .line 159
    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    .line 160
    .line 161
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    .line 166
    .line 167
    iget-object p2, p2, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 168
    .line 169
    const-string v6, "lock_screen_show_silent_notifications"

    .line 170
    .line 171
    invoke-virtual {p2, v6}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-ne p2, v1, :cond_5

    .line 180
    .line 181
    move p2, v1

    .line 182
    goto :goto_1

    .line 183
    :cond_5
    move p2, v0

    .line 184
    :goto_1
    if-eqz p2, :cond_6

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    if-lt p2, v2, :cond_7

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    const/4 v2, 0x3

    .line 198
    if-lt p2, v2, :cond_7

    .line 199
    .line 200
    :goto_2
    move p2, v1

    .line 201
    goto :goto_3

    .line 202
    :cond_7
    move p2, v0

    .line 203
    :goto_3
    if-eqz p2, :cond_8

    .line 204
    .line 205
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 206
    .line 207
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    if-nez p2, :cond_8

    .line 216
    .line 217
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p2

    .line 223
    if-nez p2, :cond_8

    .line 224
    .line 225
    const-string/jumbo p2, "updateNotificationState - key is added"

    .line 226
    .line 227
    .line 228
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    :cond_8
    :goto_4
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    .line 235
    .line 236
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 237
    .line 238
    .line 239
    move-result p2

    .line 240
    xor-int/2addr p2, v1

    .line 241
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    .line 242
    .line 243
    if-eq p1, p2, :cond_9

    .line 244
    .line 245
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 246
    .line 247
    if-eqz v1, :cond_9

    .line 248
    .line 249
    new-instance v1, Landroid/os/Bundle;

    .line 250
    .line 251
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 252
    .line 253
    .line 254
    const-string v2, "hasUnread"

    .line 255
    .line 256
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    .line 258
    .line 259
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 260
    .line 261
    invoke-interface {p2, v1}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    .line 262
    .line 263
    .line 264
    :cond_9
    const-string/jumbo p2, "updateNotificationState - prevHasUnreadNoti = "

    .line 265
    .line 266
    .line 267
    const-string v1, " mHasUnreadNoti = "

    .line 268
    .line 269
    invoke-static {p2, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    .line 274
    .line 275
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 282
    .line 283
    .line 284
    move-result p0

    .line 285
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 296
    .line 297
    .line 298
    move-result p0

    .line 299
    if-ge v0, p0, :cond_a

    .line 300
    .line 301
    new-instance p0, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    const-string/jumbo p1, "updateNotificationState - mUnreadNotificationList = "

    .line 304
    .line 305
    .line 306
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    check-cast p1, Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    add-int/lit8 v0, v0, 0x1

    .line 326
    .line 327
    goto :goto_5

    .line 328
    :cond_a
    return-void
.end method
