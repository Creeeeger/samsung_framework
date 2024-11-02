.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field public static final mLockscreenNotificationInfoArray:Ljava/util/ArrayList;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mGroupDataArray:Ljava/util/ArrayList;

.field public mIsShownGroup:Z

.field public final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field public final mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field public final mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

.field public final mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

.field public final mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

.field public final mReplyWordList:Ljava/util/ArrayList;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

.field public final mUiHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)V
    .locals 2

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
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mUiHandler:Landroid/os/Handler;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 39
    .line 40
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 41
    .line 42
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 43
    .line 44
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;

    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;I)V

    .line 48
    .line 49
    .line 50
    const-class p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 51
    .line 52
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const-class p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 70
    .line 71
    const-class p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 80
    .line 81
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 88
    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 90
    .line 91
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 98
    .line 99
    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 100
    .line 101
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setReplyWordList()V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public static canViewBeCleared(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSensitiveHiddenInGeneral:Z

    .line 20
    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :cond_2
    :goto_0
    return v0
.end method

.method public static checkRemoveNotification()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    sget-object v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 16
    .line 17
    iget-object v3, v3, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 18
    .line 19
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->canViewBeCleared(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v1
.end method

.method public static getNotificationInfoArraySize()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public static removeLockscreenNotificationInfoItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "removeLockscreenNotificationInfoItem entry : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " >>>>> currentThread : "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "SubscreenNotificationInfoManager"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ge v1, v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    return v1

    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 p0, -0x1

    .line 72
    return p0
.end method

.method public static setEntryDismissState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setDismissState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-ge v1, v0, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 34
    .line 35
    check-cast v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 44
    .line 45
    sget-object v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setDismissState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public final addRecyclerViewItemView(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final clearAllRecyclerViewItem()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 17
    .line 18
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mPkg:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    .line 37
    .line 38
    .line 39
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v3, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 46
    .line 47
    const-class v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 48
    .line 49
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mNeedsOnePhoneIcon:Z

    .line 57
    .line 58
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mNeedsTwoPhoneIcon:Z

    .line 59
    .line 60
    const-string v6, "MESSAGE_KT_TWO_PHONE_OPPOSITE_RECEIVED"

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const/4 v8, 0x1

    .line 71
    if-nez v6, :cond_0

    .line 72
    .line 73
    const-string/jumbo v6, "two_phone_missed_call_group"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_4

    .line 85
    .line 86
    :cond_0
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 87
    .line 88
    if-eqz v6, :cond_1

    .line 89
    .line 90
    iget v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentUserId:I

    .line 91
    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    const/4 v6, 0x0

    .line 98
    :goto_0
    iget-object v9, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 99
    .line 100
    if-eqz v9, :cond_2

    .line 101
    .line 102
    iget v9, v9, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->bModeUserId:I

    .line 103
    .line 104
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    const/4 v9, 0x0

    .line 110
    :goto_1
    if-ne v6, v9, :cond_3

    .line 111
    .line 112
    iput-boolean v8, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mNeedsOnePhoneIcon:Z

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    iput-boolean v8, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mNeedsTwoPhoneIcon:Z

    .line 116
    .line 117
    :cond_4
    :goto_2
    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    iput-boolean v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mGroupSummary:Z

    .line 122
    .line 123
    if-eqz v6, :cond_5

    .line 124
    .line 125
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 126
    .line 127
    if-eqz v6, :cond_5

    .line 128
    .line 129
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 130
    .line 131
    iget v6, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUntruncatedChildCount:I

    .line 132
    .line 133
    iput v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mChildCount:I

    .line 134
    .line 135
    :cond_5
    iget-object v6, v2, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v6, :cond_7

    .line 138
    .line 139
    const-string v9, "missed_call"

    .line 140
    .line 141
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    iput-boolean v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMissedCall:Z

    .line 146
    .line 147
    const-string v6, "call"

    .line 148
    .line 149
    iget-object v9, v2, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_6

    .line 156
    .line 157
    const-class v6, Landroid/app/Notification$CallStyle;

    .line 158
    .line 159
    invoke-virtual {v2, v6}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-eqz v6, :cond_6

    .line 164
    .line 165
    move v6, v8

    .line 166
    goto :goto_3

    .line 167
    :cond_6
    move v6, v5

    .line 168
    :goto_3
    iput-boolean v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsCall:Z

    .line 169
    .line 170
    :cond_7
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    .line 171
    .line 172
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mHasSemanticCall:Z

    .line 173
    .line 174
    iget-object v6, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 175
    .line 176
    const-string v9, ""

    .line 177
    .line 178
    if-eqz v6, :cond_c

    .line 179
    .line 180
    array-length v6, v6

    .line 181
    move v10, v5

    .line 182
    :goto_4
    if-ge v10, v6, :cond_c

    .line 183
    .line 184
    iget-object v11, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 185
    .line 186
    aget-object v11, v11, v10

    .line 187
    .line 188
    if-nez v11, :cond_8

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_8
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    if-eqz v12, :cond_a

    .line 196
    .line 197
    iput-boolean v8, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    .line 198
    .line 199
    array-length v13, v12

    .line 200
    move v14, v5

    .line 201
    :goto_5
    if-ge v14, v13, :cond_a

    .line 202
    .line 203
    aget-object v15, v12, v14

    .line 204
    .line 205
    invoke-virtual {v15}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    .line 206
    .line 207
    .line 208
    move-result v16

    .line 209
    if-eqz v16, :cond_9

    .line 210
    .line 211
    invoke-virtual {v15}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    const-string v8, "maxLength"

    .line 216
    .line 217
    const/16 v5, 0xc8

    .line 218
    .line 219
    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    iput v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputMaxLength:I

    .line 224
    .line 225
    invoke-virtual {v15}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    const-string v7, "isSms"

    .line 230
    .line 231
    const/4 v8, 0x0

    .line 232
    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputIsSms:Z

    .line 237
    .line 238
    invoke-virtual {v15}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    const-string/jumbo v7, "signature"

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputSignature:Ljava/lang/String;

    .line 250
    .line 251
    iget-object v5, v11, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 252
    .line 253
    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputActionIntent:Landroid/app/PendingIntent;

    .line 254
    .line 255
    :cond_9
    add-int/lit8 v14, v14, 0x1

    .line 256
    .line 257
    const/4 v5, 0x0

    .line 258
    const/4 v8, 0x1

    .line 259
    goto :goto_5

    .line 260
    :cond_a
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getSemanticAction()I

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    const/16 v7, 0xa

    .line 265
    .line 266
    if-ne v5, v7, :cond_b

    .line 267
    .line 268
    const/4 v5, 0x1

    .line 269
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mHasSemanticCall:Z

    .line 270
    .line 271
    iget-object v5, v11, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 272
    .line 273
    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSemanticCallPendingIntent:Landroid/app/PendingIntent;

    .line 274
    .line 275
    :cond_b
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 276
    .line 277
    const/4 v5, 0x0

    .line 278
    const/4 v8, 0x1

    .line 279
    goto :goto_4

    .line 280
    :cond_c
    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    .line 285
    .line 286
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 291
    .line 292
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 293
    .line 294
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    iget v6, v6, Landroid/app/Notification;->color:I

    .line 299
    .line 300
    const/4 v7, 0x2

    .line 301
    if-nez v5, :cond_d

    .line 302
    .line 303
    const/4 v5, 0x0

    .line 304
    goto/16 :goto_a

    .line 305
    .line 306
    :cond_d
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 307
    .line 308
    .line 309
    instance-of v8, v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 310
    .line 311
    if-eqz v8, :cond_f

    .line 312
    .line 313
    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 314
    .line 315
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 316
    .line 317
    .line 318
    move-result v8

    .line 319
    new-array v10, v8, [Landroid/graphics/drawable/Drawable;

    .line 320
    .line 321
    const/4 v11, 0x0

    .line 322
    :goto_7
    if-ge v11, v8, :cond_e

    .line 323
    .line 324
    invoke-virtual {v5, v11}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    .line 325
    .line 326
    .line 327
    move-result-object v12

    .line 328
    aput-object v12, v10, v11

    .line 329
    .line 330
    add-int/lit8 v11, v11, 0x1

    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_e
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    .line 334
    .line 335
    invoke-direct {v5, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 336
    .line 337
    .line 338
    :cond_f
    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    .line 339
    .line 340
    invoke-static {v8}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    .line 341
    .line 342
    .line 343
    move-result-object v8

    .line 344
    invoke-virtual {v8, v5}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    if-eqz v8, :cond_13

    .line 349
    .line 350
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    .line 355
    .line 356
    .line 357
    move-result v10

    .line 358
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    .line 359
    .line 360
    .line 361
    move-result v11

    .line 362
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    .line 363
    .line 364
    .line 365
    move-result v12

    .line 366
    if-nez v12, :cond_10

    .line 367
    .line 368
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    .line 369
    .line 370
    .line 371
    move-result v12

    .line 372
    if-nez v12, :cond_10

    .line 373
    .line 374
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    .line 375
    .line 376
    .line 377
    move-result v6

    .line 378
    if-nez v6, :cond_10

    .line 379
    .line 380
    const/4 v6, 0x1

    .line 381
    goto :goto_8

    .line 382
    :cond_10
    const/4 v6, 0x0

    .line 383
    :goto_8
    if-eqz v6, :cond_11

    .line 384
    .line 385
    iget v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppPrimaryDefaultColor:I

    .line 386
    .line 387
    goto/16 :goto_9

    .line 388
    .line 389
    :cond_11
    const/4 v6, 0x3

    .line 390
    new-array v6, v6, [F

    .line 391
    .line 392
    invoke-static {v8, v10, v11, v6}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 393
    .line 394
    .line 395
    const/4 v8, 0x1

    .line 396
    aget v10, v6, v8

    .line 397
    .line 398
    const v11, 0x3e19999a    # 0.15f

    .line 399
    .line 400
    .line 401
    sub-float/2addr v10, v11

    .line 402
    aput v10, v6, v8

    .line 403
    .line 404
    const/high16 v11, 0x3f800000    # 1.0f

    .line 405
    .line 406
    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    .line 407
    .line 408
    .line 409
    move-result v10

    .line 410
    const/4 v12, 0x0

    .line 411
    invoke-static {v12, v10}, Ljava/lang/Math;->max(FF)F

    .line 412
    .line 413
    .line 414
    move-result v10

    .line 415
    aput v10, v6, v8

    .line 416
    .line 417
    aget v8, v6, v7

    .line 418
    .line 419
    const v10, 0x3e4ccccd    # 0.2f

    .line 420
    .line 421
    .line 422
    add-float/2addr v8, v10

    .line 423
    aput v8, v6, v7

    .line 424
    .line 425
    invoke-static {v11, v8}, Ljava/lang/Math;->min(FF)F

    .line 426
    .line 427
    .line 428
    move-result v8

    .line 429
    invoke-static {v12, v8}, Ljava/lang/Math;->max(FF)F

    .line 430
    .line 431
    .line 432
    move-result v8

    .line 433
    aput v8, v6, v7

    .line 434
    .line 435
    const/16 v8, 0xff

    .line 436
    .line 437
    invoke-static {v8, v6}, Landroid/graphics/Color;->HSVToColor(I[F)I

    .line 438
    .line 439
    .line 440
    move-result v6

    .line 441
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    .line 442
    .line 443
    .line 444
    move-result v10

    .line 445
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    .line 446
    .line 447
    .line 448
    move-result v11

    .line 449
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    .line 450
    .line 451
    .line 452
    move-result v12

    .line 453
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    .line 454
    .line 455
    .line 456
    move-result v11

    .line 457
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    .line 458
    .line 459
    .line 460
    move-result v10

    .line 461
    int-to-float v10, v10

    .line 462
    int-to-float v8, v8

    .line 463
    const/high16 v11, 0x437f0000    # 255.0f

    .line 464
    .line 465
    div-float/2addr v8, v11

    .line 466
    mul-float/2addr v8, v10

    .line 467
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 468
    .line 469
    .line 470
    move-result v8

    .line 471
    const/16 v10, 0xcc

    .line 472
    .line 473
    if-le v8, v10, :cond_12

    .line 474
    .line 475
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    .line 476
    .line 477
    .line 478
    move-result v8

    .line 479
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    .line 480
    .line 481
    .line 482
    move-result v12

    .line 483
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    .line 484
    .line 485
    .line 486
    move-result v13

    .line 487
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    .line 488
    .line 489
    .line 490
    move-result v6

    .line 491
    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    .line 492
    .line 493
    .line 494
    move-result v14

    .line 495
    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    .line 496
    .line 497
    .line 498
    move-result v14

    .line 499
    int-to-float v14, v14

    .line 500
    int-to-float v15, v8

    .line 501
    div-float/2addr v15, v11

    .line 502
    mul-float/2addr v15, v14

    .line 503
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 504
    .line 505
    .line 506
    move-result v11

    .line 507
    int-to-float v10, v10

    .line 508
    int-to-float v11, v11

    .line 509
    div-float/2addr v10, v11

    .line 510
    int-to-float v11, v12

    .line 511
    mul-float/2addr v11, v10

    .line 512
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 513
    .line 514
    .line 515
    move-result v11

    .line 516
    int-to-float v12, v13

    .line 517
    mul-float/2addr v12, v10

    .line 518
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 519
    .line 520
    .line 521
    move-result v12

    .line 522
    int-to-float v6, v6

    .line 523
    mul-float/2addr v10, v6

    .line 524
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 525
    .line 526
    .line 527
    move-result v6

    .line 528
    invoke-static {v8, v11, v12, v6}, Landroid/graphics/Color;->argb(IIII)I

    .line 529
    .line 530
    .line 531
    move-result v6

    .line 532
    :cond_12
    :goto_9
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 533
    .line 534
    invoke-virtual {v5, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 535
    .line 536
    .line 537
    :cond_13
    :goto_a
    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 538
    .line 539
    const-string v5, "android.conversationIcon"

    .line 540
    .line 541
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    check-cast v5, Landroid/graphics/drawable/Icon;

    .line 546
    .line 547
    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mConversationIcon:Landroid/graphics/drawable/Icon;

    .line 548
    .line 549
    const-string v5, "android.largeIcon"

    .line 550
    .line 551
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    check-cast v5, Landroid/graphics/drawable/Icon;

    .line 556
    .line 557
    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 558
    .line 559
    const-class v5, Landroid/app/Notification$MessagingStyle;

    .line 560
    .line 561
    invoke-virtual {v2}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    move-result-object v6

    .line 565
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v5

    .line 569
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 570
    .line 571
    const/4 v6, 0x0

    .line 572
    iput v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mUnreadMessageCnt:I

    .line 573
    .line 574
    if-eqz v5, :cond_14

    .line 575
    .line 576
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 577
    .line 578
    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->getUnreadCount(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 579
    .line 580
    .line 581
    move-result v6

    .line 582
    iput v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mUnreadMessageCnt:I

    .line 583
    .line 584
    const-string v6, "android.isGroupConversation"

    .line 585
    .line 586
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 587
    .line 588
    .line 589
    move-result v6

    .line 590
    iput-boolean v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsGroupConversation:Z

    .line 591
    .line 592
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 593
    .line 594
    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->findConversationTitle(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;

    .line 595
    .line 596
    .line 597
    move-result-object v6

    .line 598
    goto :goto_b

    .line 599
    :cond_14
    const-string v6, "android.title"

    .line 600
    .line 601
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 602
    .line 603
    .line 604
    move-result-object v6

    .line 605
    :goto_b
    sget-boolean v8, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY:Z

    .line 606
    .line 607
    if-eqz v8, :cond_23

    .line 608
    .line 609
    const-class v8, Lcom/android/systemui/util/SettingsHelper;

    .line 610
    .line 611
    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v8

    .line 615
    check-cast v8, Lcom/android/systemui/util/SettingsHelper;

    .line 616
    .line 617
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    .line 619
    .line 620
    sget-boolean v10, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    .line 621
    .line 622
    if-nez v10, :cond_15

    .line 623
    .line 624
    goto :goto_c

    .line 625
    :cond_15
    iget-object v8, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 626
    .line 627
    const-string v10, "notification_history_enabled"

    .line 628
    .line 629
    invoke-virtual {v8, v10}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 630
    .line 631
    .line 632
    move-result-object v8

    .line 633
    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 634
    .line 635
    .line 636
    move-result v8

    .line 637
    const/4 v10, 0x1

    .line 638
    if-ne v8, v10, :cond_16

    .line 639
    .line 640
    const/4 v8, 0x1

    .line 641
    goto :goto_d

    .line 642
    :cond_16
    :goto_c
    const/4 v8, 0x0

    .line 643
    :goto_d
    if-eqz v8, :cond_23

    .line 644
    .line 645
    iget-boolean v8, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    .line 646
    .line 647
    if-nez v8, :cond_18

    .line 648
    .line 649
    if-eqz v5, :cond_17

    .line 650
    .line 651
    goto :goto_e

    .line 652
    :cond_17
    move-object/from16 v19, v2

    .line 653
    .line 654
    goto/16 :goto_15

    .line 655
    .line 656
    :cond_18
    :goto_e
    const/16 v5, 0x32

    .line 657
    .line 658
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getHistories(I)Ljava/util/List;

    .line 659
    .line 660
    .line 661
    move-result-object v5

    .line 662
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 663
    .line 664
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 665
    .line 666
    .line 667
    instance-of v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 668
    .line 669
    if-eqz v4, :cond_19

    .line 670
    .line 671
    move-object v4, v5

    .line 672
    check-cast v4, Ljava/util/ArrayList;

    .line 673
    .line 674
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 675
    .line 676
    .line 677
    move-result v4

    .line 678
    if-lez v4, :cond_19

    .line 679
    .line 680
    const/4 v4, 0x1

    .line 681
    goto :goto_f

    .line 682
    :cond_19
    const/4 v4, 0x0

    .line 683
    :goto_f
    check-cast v5, Ljava/util/ArrayList;

    .line 684
    .line 685
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 686
    .line 687
    .line 688
    move-result v8

    .line 689
    if-lez v8, :cond_1a

    .line 690
    .line 691
    iget-boolean v8, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 692
    .line 693
    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    .line 694
    .line 695
    or-int/2addr v8, v10

    .line 696
    iput-boolean v8, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 697
    .line 698
    :cond_1a
    if-eqz v4, :cond_22

    .line 699
    .line 700
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 701
    .line 702
    .line 703
    move-result-object v4

    .line 704
    const/4 v8, 0x0

    .line 705
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 706
    .line 707
    .line 708
    move-result v0

    .line 709
    if-eqz v0, :cond_21

    .line 710
    .line 711
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    check-cast v0, Landroid/os/Bundle;

    .line 716
    .line 717
    const-string/jumbo v5, "type"

    .line 718
    .line 719
    .line 720
    const/4 v10, 0x0

    .line 721
    invoke-virtual {v0, v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 722
    .line 723
    .line 724
    move-result v5

    .line 725
    const-string/jumbo v10, "title"

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v10

    .line 732
    const-string/jumbo v11, "text"

    .line 733
    .line 734
    .line 735
    invoke-virtual {v0, v11, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v11

    .line 739
    const-string/jumbo v12, "uri"

    .line 740
    .line 741
    .line 742
    invoke-virtual {v0, v12, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v12

    .line 746
    const-string/jumbo v13, "sbnKey"

    .line 747
    .line 748
    .line 749
    invoke-virtual {v0, v13, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v13

    .line 753
    const-string/jumbo v14, "postedTime"

    .line 754
    .line 755
    .line 756
    move/from16 p1, v8

    .line 757
    .line 758
    const-wide/16 v7, 0x0

    .line 759
    .line 760
    invoke-virtual {v0, v14, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 761
    .line 762
    .line 763
    move-result-wide v14

    .line 764
    move-object/from16 v17, v4

    .line 765
    .line 766
    const-string/jumbo v4, "when"

    .line 767
    .line 768
    .line 769
    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 770
    .line 771
    .line 772
    move-result-wide v7

    .line 773
    const-string v4, "isChecked"

    .line 774
    .line 775
    move-object/from16 v18, v9

    .line 776
    .line 777
    const/4 v9, 0x0

    .line 778
    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 779
    .line 780
    .line 781
    move-result v0

    .line 782
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 783
    .line 784
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 785
    .line 786
    .line 787
    move-result v4

    .line 788
    if-eqz v4, :cond_1f

    .line 789
    .line 790
    const/16 v4, 0x19

    .line 791
    .line 792
    move/from16 v13, p1

    .line 793
    .line 794
    if-lt v13, v4, :cond_1b

    .line 795
    .line 796
    goto :goto_14

    .line 797
    :cond_1b
    const/4 v4, 0x1

    .line 798
    if-ne v5, v4, :cond_1c

    .line 799
    .line 800
    goto :goto_11

    .line 801
    :cond_1c
    move v4, v9

    .line 802
    :goto_11
    new-instance v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    .line 803
    .line 804
    invoke-direct {v9}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;-><init>()V

    .line 805
    .line 806
    .line 807
    iput-object v11, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    .line 808
    .line 809
    move-object/from16 v19, v2

    .line 810
    .line 811
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    .line 812
    .line 813
    if-nez v2, :cond_1d

    .line 814
    .line 815
    iput-object v11, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    .line 816
    .line 817
    :cond_1d
    iput-object v10, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    .line 818
    .line 819
    iput-wide v7, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mTimeStamp:J

    .line 820
    .line 821
    iput-wide v14, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mPostedTime:J

    .line 822
    .line 823
    iput-boolean v4, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    .line 824
    .line 825
    iput-boolean v0, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsChecked:Z

    .line 826
    .line 827
    const/4 v2, 0x2

    .line 828
    if-ne v5, v2, :cond_1e

    .line 829
    .line 830
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    .line 831
    .line 832
    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->queryContentUriInternal(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    if-eqz v0, :cond_20

    .line 837
    .line 838
    iput-object v0, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mUriImage:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    .line 840
    goto :goto_12

    .line 841
    :catch_0
    move-exception v0

    .line 842
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 843
    .line 844
    .line 845
    :cond_1e
    :goto_12
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 846
    .line 847
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    .line 849
    .line 850
    add-int/lit8 v8, v13, 0x1

    .line 851
    .line 852
    goto :goto_13

    .line 853
    :cond_1f
    move/from16 v13, p1

    .line 854
    .line 855
    move-object/from16 v19, v2

    .line 856
    .line 857
    const/4 v2, 0x2

    .line 858
    :cond_20
    move v8, v13

    .line 859
    :goto_13
    move v7, v2

    .line 860
    move-object/from16 v4, v17

    .line 861
    .line 862
    move-object/from16 v9, v18

    .line 863
    .line 864
    move-object/from16 v2, v19

    .line 865
    .line 866
    goto/16 :goto_10

    .line 867
    .line 868
    :cond_21
    :goto_14
    move-object/from16 v19, v2

    .line 869
    .line 870
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 871
    .line 872
    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$2;

    .line 873
    .line 874
    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 875
    .line 876
    .line 877
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 878
    .line 879
    .line 880
    goto :goto_15

    .line 881
    :cond_22
    move-object/from16 v19, v2

    .line 882
    .line 883
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->makeConversation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 884
    .line 885
    .line 886
    goto :goto_15

    .line 887
    :cond_23
    move-object/from16 v19, v2

    .line 888
    .line 889
    if-eqz v5, :cond_24

    .line 890
    .line 891
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->makeConversation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 892
    .line 893
    .line 894
    :cond_24
    :goto_15
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mTitle:Ljava/lang/String;

    .line 895
    .line 896
    if-nez v0, :cond_26

    .line 897
    .line 898
    if-nez v6, :cond_25

    .line 899
    .line 900
    const/4 v0, 0x0

    .line 901
    goto :goto_16

    .line 902
    :cond_25
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v0

    .line 906
    :cond_26
    :goto_16
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mTitle:Ljava/lang/String;

    .line 907
    .line 908
    const-string v0, "android.text"

    .line 909
    .line 910
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    .line 915
    .line 916
    if-nez v2, :cond_28

    .line 917
    .line 918
    if-nez v0, :cond_27

    .line 919
    .line 920
    const/4 v2, 0x0

    .line 921
    goto :goto_17

    .line 922
    :cond_27
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v2

    .line 926
    :cond_28
    :goto_17
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    .line 927
    .line 928
    const-string v0, "android.bigText"

    .line 929
    .line 930
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 931
    .line 932
    .line 933
    move-result-object v0

    .line 934
    if-nez v0, :cond_29

    .line 935
    .line 936
    const/4 v0, 0x0

    .line 937
    goto :goto_18

    .line 938
    :cond_29
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    :goto_18
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBigText:Ljava/lang/String;

    .line 943
    .line 944
    const-string v0, "android.title.big"

    .line 945
    .line 946
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    if-nez v0, :cond_2a

    .line 951
    .line 952
    const/4 v0, 0x0

    .line 953
    goto :goto_19

    .line 954
    :cond_2a
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    :goto_19
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBigTitle:Ljava/lang/String;

    .line 959
    .line 960
    const-string v0, "android.subText"

    .line 961
    .line 962
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    if-nez v0, :cond_2b

    .line 967
    .line 968
    goto :goto_1a

    .line 969
    :cond_2b
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    :goto_1a
    const-string v0, "android.picture"

    .line 973
    .line 974
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 975
    .line 976
    .line 977
    move-result-object v0

    .line 978
    check-cast v0, Landroid/graphics/Bitmap;

    .line 979
    .line 980
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 981
    .line 982
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    .line 983
    .line 984
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    :try_start_1
    const-string v2, "android.substName"

    .line 989
    .line 990
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 991
    .line 992
    .line 993
    move-result-object v2

    .line 994
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 995
    .line 996
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v4

    .line 1000
    const v5, 0x402080

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v4

    .line 1007
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    .line 1008
    .line 1009
    const v6, 0x7f060863

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    .line 1013
    .line 1014
    .line 1015
    move-result v5

    .line 1016
    iput v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppPrimaryDefaultColor:I

    .line 1017
    .line 1018
    const/16 v5, 0x21

    .line 1019
    .line 1020
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v5

    .line 1024
    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 1025
    .line 1026
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 1027
    .line 1028
    if-nez v5, :cond_2c

    .line 1029
    .line 1030
    const/4 v8, 0x1

    .line 1031
    goto :goto_1b

    .line 1032
    :cond_2c
    const/4 v8, 0x0

    .line 1033
    :goto_1b
    iput-boolean v8, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mUseSmallIcon:Z

    .line 1034
    .line 1035
    if-nez v2, :cond_2d

    .line 1036
    .line 1037
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    goto :goto_1c

    .line 1046
    :cond_2d
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v0

    .line 1050
    :goto_1c
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    .line 1051
    .line 1052
    const-string v2, "\n"

    .line 1053
    .line 1054
    const-string v4, " "

    .line 1055
    .line 1056
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1061
    .line 1062
    goto :goto_1d

    .line 1063
    :catch_1
    move-exception v0

    .line 1064
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1065
    .line 1066
    .line 1067
    :goto_1d
    const-string v0, "android.textLines"

    .line 1068
    .line 1069
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    if-eqz v0, :cond_2f

    .line 1074
    .line 1075
    const/4 v8, 0x0

    .line 1076
    :goto_1e
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mInBox:[Ljava/lang/String;

    .line 1077
    .line 1078
    array-length v2, v2

    .line 1079
    array-length v4, v0

    .line 1080
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 1081
    .line 1082
    .line 1083
    move-result v2

    .line 1084
    if-ge v8, v2, :cond_2f

    .line 1085
    .line 1086
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mInBox:[Ljava/lang/String;

    .line 1087
    .line 1088
    aget-object v4, v0, v8

    .line 1089
    .line 1090
    if-nez v4, :cond_2e

    .line 1091
    .line 1092
    const/4 v4, 0x0

    .line 1093
    goto :goto_1f

    .line 1094
    :cond_2e
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v4

    .line 1098
    :goto_1f
    aput-object v4, v2, v8

    .line 1099
    .line 1100
    add-int/lit8 v8, v8, 0x1

    .line 1101
    .line 1102
    goto :goto_1e

    .line 1103
    :cond_2f
    move-object/from16 v2, v19

    .line 1104
    .line 1105
    iget-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1106
    .line 1107
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentIntent:Landroid/app/PendingIntent;

    .line 1108
    .line 1109
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 1110
    .line 1111
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1116
    .line 1117
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 1118
    .line 1119
    iget-wide v4, v2, Landroid/app/Notification;->when:J

    .line 1120
    .line 1121
    iput-wide v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mWhen:J

    .line 1122
    .line 1123
    const-string v0, "android.showWhen"

    .line 1124
    .line 1125
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 1126
    .line 1127
    .line 1128
    move-result v0

    .line 1129
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mShowWhen:Z

    .line 1130
    .line 1131
    const/4 v2, 0x0

    .line 1132
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKnoxBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 1133
    .line 1134
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1135
    .line 1136
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 1137
    .line 1138
    .line 1139
    move-result v0

    .line 1140
    const/4 v5, 0x0

    .line 1141
    :goto_20
    if-ge v5, v0, :cond_32

    .line 1142
    .line 1143
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1144
    .line 1145
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v2

    .line 1149
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 1150
    .line 1151
    if-eqz v3, :cond_31

    .line 1152
    .line 1153
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 1154
    .line 1155
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 1156
    .line 1157
    if-nez v3, :cond_30

    .line 1158
    .line 1159
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 1160
    .line 1161
    :cond_30
    if-eqz v3, :cond_31

    .line 1162
    .line 1163
    const v0, 0x10204bd

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v0

    .line 1170
    check-cast v0, Landroid/widget/ImageView;

    .line 1171
    .line 1172
    if-eqz v0, :cond_32

    .line 1173
    .line 1174
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v2

    .line 1178
    if-eqz v2, :cond_32

    .line 1179
    .line 1180
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v0

    .line 1184
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v0

    .line 1188
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKnoxBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 1189
    .line 1190
    goto :goto_21

    .line 1191
    :cond_31
    add-int/lit8 v5, v5, 0x1

    .line 1192
    .line 1193
    goto :goto_20

    .line 1194
    :cond_32
    :goto_21
    return-object v1
.end method

.method public final getGroupDataArraySize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setReplyWordList()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final removeGroupDataArrayItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v0, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    instance-of p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 41
    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, -0x1

    .line 51
    :cond_2
    :goto_1
    return v0
.end method

.method public final removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->performDismiss(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-lez v3, :cond_3

    .line 34
    .line 35
    move v4, v1

    .line 36
    :goto_0
    if-ge v1, v3, :cond_2

    .line 37
    .line 38
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 39
    .line 40
    check-cast v5, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 47
    .line 48
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 49
    .line 50
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->canBubble()Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_1

    .line 55
    .line 56
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->removeMainHashItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 59
    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    if-eqz v4, :cond_3

    .line 66
    .line 67
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->removeMainHashItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->canBubble()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->removeMainHashItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->removeLockscreenNotificationInfoItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-ltz v0, :cond_5

    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->removeGroupDataArrayItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-ltz v0, :cond_6

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 103
    .line 104
    .line 105
    :cond_6
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setEntryDismissState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final setReplyWordList()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v2, 0x7f030072

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-boolean v2, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    move-object v4, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 38
    .line 39
    const-string v5, "cover_screen_quick_reply_text"

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 56
    .line 57
    const-string v2, "cover_screen_quick_reply_text_pos_for_translation"

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :goto_1
    if-nez v3, :cond_3

    .line 68
    .line 69
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_3
    :try_start_0
    new-instance p0, Lorg/json/JSONArray;

    .line 78
    .line 79
    invoke-direct {p0, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lorg/json/JSONArray;

    .line 83
    .line 84
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-ge v3, v4, :cond_5

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-nez v5, :cond_4

    .line 103
    .line 104
    const-string v5, "-1"

    .line 105
    .line 106
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_4

    .line 111
    .line 112
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    aget-object v4, v1, v4

    .line 117
    .line 118
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 134
    .line 135
    .line 136
    :cond_5
    :goto_4
    return-void
.end method

.method public final setShownGroup(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setShownGroup : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "SubscreenNotificationInfoManager"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    .line 22
    .line 23
    return-void
.end method
