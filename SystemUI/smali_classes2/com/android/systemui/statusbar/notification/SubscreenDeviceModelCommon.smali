.class public Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;
.super Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public isNightMode:Ljava/lang/Boolean;

.field public mPopUpViewLayout:Landroid/view/View;

.field public final mSettingsListener:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mSettingsListener$1;

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public needsRedaction:Z

.field public popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/settings/UserContextProvider;",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            "Lcom/android/systemui/log/LogBuffer;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;",
            "Lcom/android/systemui/bixby2/controller/NotificationController;",
            "Landroid/os/UserManager;",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct/range {p0 .. p16}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 14
    .line 15
    and-int/lit8 v1, v1, 0x30

    .line 16
    .line 17
    const/16 v2, 0x20

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->isNightMode:Ljava/lang/Boolean;

    .line 29
    .line 30
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mUpdateMonitorCallback$1;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 36
    .line 37
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mSettingsListener$1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mSettingsListener$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mSettingsListener:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mSettingsListener$1;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final dimissTopPopupNotification()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationShowing:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->useTopPresentation()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public foldStateChanged(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "FOLD "

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "UNFOLD "

    .line 7
    .line 8
    :goto_0
    const-string v1, " FOLD STATE common- "

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "S.S.N."

    .line 15
    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->foldStateChanged(Z)V

    .line 20
    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 25
    .line 26
    if-eqz v0, :cond_5

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->updateNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 31
    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 45
    .line 46
    const-string v1, "cover_screen_show_notification_tip"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-ne v0, v2, :cond_2

    .line 57
    .line 58
    move v0, v2

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v0, 0x0

    .line 61
    :goto_1
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    const-string v1, "SubscreenSubRoomNotification"

    .line 68
    .line 69
    const-string v3, "initTipData"

    .line 70
    .line 71
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubRoomNotificationTipAdapter:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initData()V

    .line 87
    .line 88
    .line 89
    :cond_4
    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsChangedToFoldState:Z

    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->isNightMode:Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_5

    .line 116
    .line 117
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->isNightMode:Ljava/lang/Boolean;

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->enableGoToTopButton()V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 127
    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    .line 135
    .line 136
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initMainHeaderView(Landroid/widget/LinearLayout;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    :goto_3
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFolded:Z

    .line 140
    .line 141
    return-void
.end method

.method public final getTopPopupLp()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 1
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    const/16 v3, 0x7e5

    .line 6
    .line 7
    const v4, 0x1020120

    .line 8
    .line 9
    .line 10
    const/4 v5, -0x3

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 24
    .line 25
    or-int/lit8 p0, p0, 0x8

    .line 26
    .line 27
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 28
    .line 29
    :cond_0
    const-string p0, "SubscreenNotification"

    .line 30
    .line 31
    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    const/16 p0, 0x30

    .line 35
    .line 36
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 37
    .line 38
    return-object v6
.end method

.method public hideDetailNotificationIfCallback()V
    .locals 0

    .line 1
    return-void
.end method

.method public final initDetailAdapterBackButton(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 1

    .line 1
    const v0, 0x7f0a0119

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/widget/ImageView;

    .line 9
    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterBackButton$1;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterBackButton$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public initDetailAdapterItemViewHolder(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initDetailAdapterItemViewHolder(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterItemViewHolder$1;

    .line 5
    .line 6
    invoke-direct {p1, p2, p3, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterItemViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mCallBackButton:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final initGroupAdapterHeaderViewHolder(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initGroupAdapterHeaderViewHolder(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0119

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object p2, p4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mBackButton:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const p2, 0x7f1310d3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p2, p4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mBackButton:Landroid/widget/ImageView;

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mBackButton:Landroid/widget/ImageView;

    .line 32
    .line 33
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initGroupAdapterHeaderViewHolder$1;

    .line 34
    .line 35
    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initGroupAdapterHeaderViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final initialize()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initialize()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->updateShowNotificationTip()V

    .line 12
    .line 13
    .line 14
    const-string v0, "lock_screen_show_notifications"

    .line 15
    .line 16
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string/jumbo v1, "turn_on_cover_screen_for_notification"

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "cover_screen_show_notification"

    .line 28
    .line 29
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    filled-new-array {v0, v1, v2}, [Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mSettingsListener:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mSettingsListener$1;

    .line 40
    .line 41
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 42
    .line 43
    .line 44
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 51
    .line 52
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final isProper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isProper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFolded:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final makePopupDetailView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLandroid/widget/FrameLayout;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object v1, v0

    .line 8
    :goto_0
    const-string v2, "makePopupDetailView Common- "

    .line 9
    .line 10
    const-string v3, "S.S.N."

    .line 11
    .line 12
    invoke-static {v2, v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 26
    .line 27
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 32
    .line 33
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setPopupViewLayout(Landroid/content/Context;ZLandroid/widget/FrameLayout;)V

    .line 34
    .line 35
    .line 36
    const/4 p4, 0x0

    .line 37
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setPopupItemInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZ)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onBindDetailAdapterItemViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 0

    .line 1
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMissedCall:Z

    .line 4
    .line 5
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mCallBackButton:Landroid/view/View;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mHasSemanticCall:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 p0, 0x8

    .line 19
    .line 20
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTipButtonClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "NotiShowCoverScreenTip"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->updateShowNotificationTip()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final panelsEnabled()Z
    .locals 0

    .line 1
    const-class p0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final setDetailAdapterItemHolderButtonContentDescription(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setDetailAdapterItemHolderButtonContentDescription(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const v0, 0x7f1310d3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v1, 0x7f1310dd

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const v0, 0x7f130052

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBackButton:Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final setDetailAdapterTextHolderButtonContentDescription(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setDetailAdapterTextHolderButtonContentDescription(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const p2, 0x7f1310d3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBackButton:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final setEditButton(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mEditButton:Landroid/widget/TextView;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$setEditButton$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$setEditButton$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setKeyguardStateWhenAddLockscreenNotificationInfoArray(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsKeyguardStateWhenAddLockscreenNotificationInfoArray:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMarqueeItem(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setPopupItemInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZ)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 12
    .line 13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    :goto_0
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 20
    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v4, 0x0

    .line 27
    :goto_1
    const/4 v5, 0x0

    .line 28
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    .line 29
    .line 30
    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/4 v7, 0x1

    .line 38
    if-eqz v6, :cond_3

    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isKeyguardStats()Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 47
    .line 48
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isKnoxSecurity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_3

    .line 60
    .line 61
    iget-boolean v6, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mUserPublic:Z

    .line 62
    .line 63
    if-eqz v6, :cond_3

    .line 64
    .line 65
    iput-boolean v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    .line 66
    .line 67
    :cond_3
    :goto_2
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 68
    .line 69
    if-eqz v6, :cond_4

    .line 70
    .line 71
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 72
    .line 73
    if-eqz v6, :cond_4

    .line 74
    .line 75
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    if-eqz v6, :cond_4

    .line 80
    .line 81
    iget-object v6, v6, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    const/4 v6, 0x0

    .line 85
    :goto_3
    const-string v7, "call"

    .line 86
    .line 87
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_6

    .line 92
    .line 93
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 94
    .line 95
    if-eqz v6, :cond_5

    .line 96
    .line 97
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 98
    .line 99
    if-eqz v6, :cond_5

    .line 100
    .line 101
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    if-eqz v6, :cond_5

    .line 106
    .line 107
    iget-object v6, v6, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_5
    const/4 v6, 0x0

    .line 111
    :goto_4
    if-eqz v6, :cond_6

    .line 112
    .line 113
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    .line 114
    .line 115
    if-eqz v6, :cond_6

    .line 116
    .line 117
    if-nez p3, :cond_6

    .line 118
    .line 119
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    .line 120
    .line 121
    :cond_6
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 122
    .line 123
    if-eqz v5, :cond_7

    .line 124
    .line 125
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mConversationIcon:Landroid/graphics/drawable/Icon;

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_7
    const/4 v6, 0x0

    .line 129
    :goto_5
    if-eqz v5, :cond_8

    .line 130
    .line 131
    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_8
    const/4 v7, 0x0

    .line 135
    :goto_6
    if-eqz v5, :cond_9

    .line 136
    .line 137
    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_9
    const/4 v8, 0x0

    .line 141
    :goto_7
    if-eqz v5, :cond_a

    .line 142
    .line 143
    iget-object v9, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    .line 144
    .line 145
    goto :goto_8

    .line 146
    :cond_a
    const/4 v9, 0x0

    .line 147
    :goto_8
    if-eqz v5, :cond_b

    .line 148
    .line 149
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    goto :goto_9

    .line 154
    :cond_b
    const/4 v5, 0x0

    .line 155
    :goto_9
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 156
    .line 157
    if-eqz v10, :cond_c

    .line 158
    .line 159
    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    .line 160
    .line 161
    goto :goto_a

    .line 162
    :cond_c
    const/4 v10, 0x0

    .line 163
    :goto_a
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    .line 164
    .line 165
    if-eqz v11, :cond_d

    .line 166
    .line 167
    const v12, 0x7f0a0b3f

    .line 168
    .line 169
    .line 170
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    check-cast v11, Landroid/widget/TextView;

    .line 175
    .line 176
    goto :goto_b

    .line 177
    :cond_d
    const/4 v11, 0x0

    .line 178
    :goto_b
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    .line 179
    .line 180
    if-eqz v12, :cond_e

    .line 181
    .line 182
    const v13, 0x7f0a0b35

    .line 183
    .line 184
    .line 185
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    check-cast v12, Landroid/widget/TextView;

    .line 190
    .line 191
    goto :goto_c

    .line 192
    :cond_e
    const/4 v12, 0x0

    .line 193
    :goto_c
    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    .line 194
    .line 195
    if-eqz v13, :cond_f

    .line 196
    .line 197
    const v14, 0x7f0a0b38

    .line 198
    .line 199
    .line 200
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    check-cast v13, Landroid/widget/ImageView;

    .line 205
    .line 206
    goto :goto_d

    .line 207
    :cond_f
    const/4 v13, 0x0

    .line 208
    :goto_d
    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    .line 209
    .line 210
    if-eqz v14, :cond_10

    .line 211
    .line 212
    const v15, 0x7f0a0b37

    .line 213
    .line 214
    .line 215
    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v14

    .line 219
    check-cast v14, Landroid/widget/ImageView;

    .line 220
    .line 221
    goto :goto_e

    .line 222
    :cond_10
    const/4 v14, 0x0

    .line 223
    :goto_e
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    .line 224
    .line 225
    move-object/from16 p4, v5

    .line 226
    .line 227
    if-eqz v15, :cond_11

    .line 228
    .line 229
    const v5, 0x7f0a0b39

    .line 230
    .line 231
    .line 232
    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    check-cast v5, Landroid/widget/ImageView;

    .line 237
    .line 238
    goto :goto_f

    .line 239
    :cond_11
    const/4 v5, 0x0

    .line 240
    :goto_f
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    .line 241
    .line 242
    if-eqz v15, :cond_12

    .line 243
    .line 244
    const v1, 0x7f0a09ba

    .line 245
    .line 246
    .line 247
    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    check-cast v1, Landroid/widget/ImageView;

    .line 252
    .line 253
    goto :goto_10

    .line 254
    :cond_12
    const/4 v1, 0x0

    .line 255
    :goto_10
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    .line 256
    .line 257
    move-object/from16 v16, v1

    .line 258
    .line 259
    if-eqz v15, :cond_13

    .line 260
    .line 261
    const v1, 0x7f0a0c60

    .line 262
    .line 263
    .line 264
    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    check-cast v1, Landroid/widget/ImageView;

    .line 269
    .line 270
    goto :goto_11

    .line 271
    :cond_13
    const/4 v1, 0x0

    .line 272
    :goto_11
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    .line 273
    .line 274
    move-object/from16 v17, v1

    .line 275
    .line 276
    if-eqz v15, :cond_14

    .line 277
    .line 278
    const v1, 0x7f0a0b31

    .line 279
    .line 280
    .line 281
    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    check-cast v1, Landroid/widget/FrameLayout;

    .line 286
    .line 287
    goto :goto_12

    .line 288
    :cond_14
    const/4 v1, 0x0

    .line 289
    :goto_12
    iget-boolean v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    .line 290
    .line 291
    if-eqz v15, :cond_15

    .line 292
    .line 293
    move-object v15, v9

    .line 294
    goto :goto_13

    .line 295
    :cond_15
    move-object/from16 v15, p4

    .line 296
    .line 297
    :goto_13
    if-eqz v11, :cond_16

    .line 298
    .line 299
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    .line 301
    .line 302
    :cond_16
    if-eqz v12, :cond_17

    .line 303
    .line 304
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .line 306
    .line 307
    :cond_17
    if-eqz v15, :cond_1a

    .line 308
    .line 309
    invoke-static {v15}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 310
    .line 311
    .line 312
    move-result-object v15

    .line 313
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v15

    .line 317
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 318
    .line 319
    .line 320
    move-result v15

    .line 321
    if-nez v15, :cond_18

    .line 322
    .line 323
    const/4 v15, 0x1

    .line 324
    goto :goto_14

    .line 325
    :cond_18
    const/4 v15, 0x0

    .line 326
    :goto_14
    if-eqz v15, :cond_19

    .line 327
    .line 328
    goto :goto_15

    .line 329
    :cond_19
    const/4 v15, 0x0

    .line 330
    goto :goto_16

    .line 331
    :cond_1a
    :goto_15
    const/4 v15, 0x1

    .line 332
    :goto_16
    if-eqz v10, :cond_1d

    .line 333
    .line 334
    invoke-static {v10}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 335
    .line 336
    .line 337
    move-result-object v18

    .line 338
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v18

    .line 342
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    .line 343
    .line 344
    .line 345
    move-result v18

    .line 346
    if-nez v18, :cond_1b

    .line 347
    .line 348
    const/16 v18, 0x1

    .line 349
    .line 350
    goto :goto_17

    .line 351
    :cond_1b
    const/16 v18, 0x0

    .line 352
    .line 353
    :goto_17
    if-eqz v18, :cond_1c

    .line 354
    .line 355
    goto :goto_18

    .line 356
    :cond_1c
    const/16 v18, 0x0

    .line 357
    .line 358
    goto :goto_19

    .line 359
    :cond_1d
    :goto_18
    const/16 v18, 0x1

    .line 360
    .line 361
    :goto_19
    move-object/from16 p4, v1

    .line 362
    .line 363
    const/16 v1, 0x8

    .line 364
    .line 365
    if-eqz v15, :cond_20

    .line 366
    .line 367
    if-eqz v12, :cond_1e

    .line 368
    .line 369
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    .line 371
    .line 372
    :cond_1e
    if-eqz v11, :cond_1f

    .line 373
    .line 374
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    .line 376
    .line 377
    :cond_1f
    if-eqz v18, :cond_20

    .line 378
    .line 379
    if-eqz v11, :cond_20

    .line 380
    .line 381
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    .line 383
    .line 384
    :cond_20
    if-eqz v18, :cond_22

    .line 385
    .line 386
    if-nez v12, :cond_21

    .line 387
    .line 388
    goto :goto_1a

    .line 389
    :cond_21
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    .line 391
    .line 392
    :cond_22
    :goto_1a
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    .line 393
    .line 394
    if-eqz v9, :cond_26

    .line 395
    .line 396
    if-nez v12, :cond_23

    .line 397
    .line 398
    goto :goto_1b

    .line 399
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 400
    .line 401
    .line 402
    move-result-object v9

    .line 403
    const v10, 0x7f1310e4

    .line 404
    .line 405
    .line 406
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v9

    .line 410
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    .line 412
    .line 413
    :goto_1b
    if-nez v12, :cond_24

    .line 414
    .line 415
    goto :goto_1d

    .line 416
    :cond_24
    if-eqz p3, :cond_25

    .line 417
    .line 418
    move v9, v1

    .line 419
    goto :goto_1c

    .line 420
    :cond_25
    const/4 v9, 0x0

    .line 421
    :goto_1c
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    .line 423
    .line 424
    :cond_26
    :goto_1d
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    .line 425
    .line 426
    if-nez v9, :cond_2d

    .line 427
    .line 428
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 429
    .line 430
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v3

    .line 434
    if-eqz v3, :cond_2d

    .line 435
    .line 436
    if-nez v6, :cond_27

    .line 437
    .line 438
    if-eqz v7, :cond_2d

    .line 439
    .line 440
    :cond_27
    if-nez v5, :cond_28

    .line 441
    .line 442
    goto :goto_1e

    .line 443
    :cond_28
    const/4 v3, 0x0

    .line 444
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    .line 446
    .line 447
    :goto_1e
    if-nez v13, :cond_29

    .line 448
    .line 449
    goto :goto_1f

    .line 450
    :cond_29
    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    .line 452
    .line 453
    :goto_1f
    if-nez v14, :cond_2a

    .line 454
    .line 455
    goto :goto_20

    .line 456
    :cond_2a
    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    .line 458
    .line 459
    :goto_20
    if-eqz v6, :cond_2b

    .line 460
    .line 461
    if-eqz v5, :cond_2c

    .line 462
    .line 463
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 464
    .line 465
    .line 466
    goto :goto_21

    .line 467
    :cond_2b
    if-eqz v5, :cond_2c

    .line 468
    .line 469
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 470
    .line 471
    .line 472
    :cond_2c
    :goto_21
    const/4 v1, 0x1

    .line 473
    move-object/from16 v14, p1

    .line 474
    .line 475
    move-object/from16 p4, v12

    .line 476
    .line 477
    goto/16 :goto_33

    .line 478
    .line 479
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShowNotificationAppIcon()Z

    .line 480
    .line 481
    .line 482
    move-result v3

    .line 483
    if-eqz v3, :cond_35

    .line 484
    .line 485
    if-eqz v8, :cond_31

    .line 486
    .line 487
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 488
    .line 489
    if-eqz v3, :cond_2e

    .line 490
    .line 491
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->useSmallIcon()Z

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    if-nez v3, :cond_2e

    .line 496
    .line 497
    const/4 v3, 0x1

    .line 498
    goto :goto_22

    .line 499
    :cond_2e
    const/4 v3, 0x0

    .line 500
    :goto_22
    if-eqz v3, :cond_31

    .line 501
    .line 502
    if-nez v13, :cond_2f

    .line 503
    .line 504
    goto :goto_23

    .line 505
    :cond_2f
    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    .line 507
    .line 508
    :goto_23
    if-nez v14, :cond_30

    .line 509
    .line 510
    goto :goto_24

    .line 511
    :cond_30
    const/4 v1, 0x0

    .line 512
    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    .line 514
    .line 515
    :goto_24
    if-eqz v14, :cond_3a

    .line 516
    .line 517
    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    .line 519
    .line 520
    goto :goto_2a

    .line 521
    :cond_31
    const/4 v3, 0x0

    .line 522
    if-nez v13, :cond_32

    .line 523
    .line 524
    goto :goto_25

    .line 525
    :cond_32
    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    .line 527
    .line 528
    :goto_25
    if-nez v14, :cond_33

    .line 529
    .line 530
    goto :goto_26

    .line 531
    :cond_33
    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    .line 533
    .line 534
    :goto_26
    if-eqz v13, :cond_34

    .line 535
    .line 536
    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    .line 538
    .line 539
    :cond_34
    xor-int/lit8 v1, p3, 0x1

    .line 540
    .line 541
    const/4 v3, 0x0

    .line 542
    invoke-virtual {v0, v13, v3, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateSmallIconSquircleBg(Landroid/widget/ImageView;ZZ)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0, v13, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 546
    .line 547
    .line 548
    goto :goto_2a

    .line 549
    :cond_35
    const/4 v3, 0x0

    .line 550
    if-nez v13, :cond_36

    .line 551
    .line 552
    goto :goto_27

    .line 553
    :cond_36
    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    .line 555
    .line 556
    :goto_27
    if-nez v14, :cond_37

    .line 557
    .line 558
    goto :goto_28

    .line 559
    :cond_37
    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 560
    .line 561
    .line 562
    :goto_28
    if-nez p3, :cond_38

    .line 563
    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->useTopPresentation()Z

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    if-nez v1, :cond_38

    .line 569
    .line 570
    const/4 v1, 0x1

    .line 571
    goto :goto_29

    .line 572
    :cond_38
    const/4 v1, 0x0

    .line 573
    :goto_29
    const/4 v3, 0x0

    .line 574
    invoke-virtual {v0, v13, v3, v1, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateSmallIconBg(Landroid/widget/ImageView;ZZZ)V

    .line 575
    .line 576
    .line 577
    if-eqz v13, :cond_39

    .line 578
    .line 579
    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    .line 581
    .line 582
    :cond_39
    invoke-virtual {v0, v13, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 583
    .line 584
    .line 585
    :cond_3a
    :goto_2a
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 586
    .line 587
    if-eqz v1, :cond_3b

    .line 588
    .line 589
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsCall:Z

    .line 590
    .line 591
    const/4 v5, 0x1

    .line 592
    if-ne v3, v5, :cond_3b

    .line 593
    .line 594
    const/4 v3, 0x1

    .line 595
    goto :goto_2b

    .line 596
    :cond_3b
    const/4 v3, 0x0

    .line 597
    :goto_2b
    if-eqz v3, :cond_44

    .line 598
    .line 599
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 600
    .line 601
    .line 602
    if-nez p4, :cond_3c

    .line 603
    .line 604
    move-object/from16 v5, p4

    .line 605
    .line 606
    goto :goto_2c

    .line 607
    :cond_3c
    const/4 v3, 0x0

    .line 608
    move-object/from16 v5, p4

    .line 609
    .line 610
    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 611
    .line 612
    .line 613
    :goto_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShowNotificationAppIcon()Z

    .line 614
    .line 615
    .line 616
    move-result v3

    .line 617
    if-eqz v3, :cond_3d

    .line 618
    .line 619
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 620
    .line 621
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 622
    .line 623
    .line 624
    move-result v6

    .line 625
    goto :goto_2d

    .line 626
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    const v6, 0x7f080cd0

    .line 635
    .line 636
    .line 637
    const/4 v7, 0x0

    .line 638
    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 639
    .line 640
    .line 641
    move-result-object v3

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 643
    .line 644
    .line 645
    move-result-object v6

    .line 646
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 647
    .line 648
    .line 649
    move-result-object v6

    .line 650
    const v7, 0x7f071356

    .line 651
    .line 652
    .line 653
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 654
    .line 655
    .line 656
    move-result v6

    .line 657
    :goto_2d
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 658
    .line 659
    invoke-static {v6, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 660
    .line 661
    .line 662
    move-result-object v7

    .line 663
    new-instance v9, Landroid/graphics/Canvas;

    .line 664
    .line 665
    invoke-direct {v9, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    .line 669
    .line 670
    .line 671
    move-result v10

    .line 672
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    .line 673
    .line 674
    .line 675
    move-result v11

    .line 676
    const/4 v13, 0x0

    .line 677
    invoke-virtual {v3, v13, v13, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 681
    .line 682
    .line 683
    new-instance v10, Landroid/graphics/Paint;

    .line 684
    .line 685
    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 686
    .line 687
    .line 688
    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    .line 689
    .line 690
    iget-object v13, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mPkg:Ljava/lang/String;

    .line 691
    .line 692
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 693
    .line 694
    move-object/from16 v14, p1

    .line 695
    .line 696
    invoke-static {v14, v13}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadAppCustomColor(Landroid/content/Context;Ljava/lang/String;)I

    .line 697
    .line 698
    .line 699
    move-result v15

    .line 700
    if-nez v15, :cond_3e

    .line 701
    .line 702
    invoke-static {v1}, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils;->processDominantColorInImage(Landroid/graphics/drawable/Drawable;)I

    .line 703
    .line 704
    .line 705
    move-result v15

    .line 706
    invoke-static {v14, v13, v15}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->saveAppCustomColor(Landroid/content/Context;Ljava/lang/String;I)V

    .line 707
    .line 708
    .line 709
    :cond_3e
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 710
    .line 711
    invoke-direct {v11, v15, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 715
    .line 716
    .line 717
    const/4 v1, 0x0

    .line 718
    invoke-virtual {v9, v7, v1, v1, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 719
    .line 720
    .line 721
    if-eqz v5, :cond_3f

    .line 722
    .line 723
    const v9, 0x7f0a0b32

    .line 724
    .line 725
    .line 726
    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 727
    .line 728
    .line 729
    move-result-object v9

    .line 730
    check-cast v9, Landroid/widget/ImageView;

    .line 731
    .line 732
    goto :goto_2e

    .line 733
    :cond_3f
    const/4 v9, 0x0

    .line 734
    :goto_2e
    if-nez v9, :cond_40

    .line 735
    .line 736
    goto :goto_2f

    .line 737
    :cond_40
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 738
    .line 739
    .line 740
    move-result-object v10

    .line 741
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 742
    .line 743
    invoke-direct {v11, v10, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 747
    .line 748
    .line 749
    :goto_2f
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 750
    .line 751
    invoke-static {v6, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 752
    .line 753
    .line 754
    move-result-object v6

    .line 755
    new-instance v7, Landroid/graphics/Canvas;

    .line 756
    .line 757
    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    .line 761
    .line 762
    .line 763
    move-result v9

    .line 764
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    .line 765
    .line 766
    .line 767
    move-result v10

    .line 768
    const/4 v11, 0x0

    .line 769
    invoke-virtual {v3, v11, v11, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 773
    .line 774
    .line 775
    new-instance v3, Landroid/graphics/Paint;

    .line 776
    .line 777
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 778
    .line 779
    .line 780
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    .line 781
    .line 782
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 783
    .line 784
    const/4 v11, -0x1

    .line 785
    invoke-direct {v9, v11, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v7, v6, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 792
    .line 793
    .line 794
    if-eqz v5, :cond_41

    .line 795
    .line 796
    const v3, 0x7f0a0b33

    .line 797
    .line 798
    .line 799
    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 800
    .line 801
    .line 802
    move-result-object v3

    .line 803
    check-cast v3, Landroid/widget/ImageView;

    .line 804
    .line 805
    goto :goto_30

    .line 806
    :cond_41
    const/4 v3, 0x0

    .line 807
    :goto_30
    if-nez v3, :cond_42

    .line 808
    .line 809
    goto :goto_31

    .line 810
    :cond_42
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 811
    .line 812
    .line 813
    move-result-object v7

    .line 814
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 815
    .line 816
    invoke-direct {v9, v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 820
    .line 821
    .line 822
    :goto_31
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    .line 823
    .line 824
    const/high16 v19, 0x3f800000    # 1.0f

    .line 825
    .line 826
    const/high16 v20, 0x40200000    # 2.5f

    .line 827
    .line 828
    const/high16 v21, 0x3f800000    # 1.0f

    .line 829
    .line 830
    const/high16 v22, 0x40200000    # 2.5f

    .line 831
    .line 832
    const/16 v23, 0x1

    .line 833
    .line 834
    const/high16 v24, 0x3f000000    # 0.5f

    .line 835
    .line 836
    const/16 v25, 0x1

    .line 837
    .line 838
    const/high16 v26, 0x3f000000    # 0.5f

    .line 839
    .line 840
    move-object/from16 v18, v3

    .line 841
    .line 842
    invoke-direct/range {v18 .. v26}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 843
    .line 844
    .line 845
    const-wide/16 v6, 0x7d0

    .line 846
    .line 847
    invoke-virtual {v3, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 848
    .line 849
    .line 850
    new-instance v6, Landroid/view/animation/PathInterpolator;

    .line 851
    .line 852
    const v7, 0x3e6147ae    # 0.22f

    .line 853
    .line 854
    .line 855
    const/high16 v9, 0x3e800000    # 0.25f

    .line 856
    .line 857
    const/high16 v10, 0x3f800000    # 1.0f

    .line 858
    .line 859
    invoke-direct {v6, v7, v9, v1, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v3, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v3, v11}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 866
    .line 867
    .line 868
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    .line 869
    .line 870
    invoke-direct {v6, v10, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 871
    .line 872
    .line 873
    move-object/from16 p4, v12

    .line 874
    .line 875
    const-wide/16 v11, 0x3e8

    .line 876
    .line 877
    invoke-virtual {v6, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 878
    .line 879
    .line 880
    invoke-virtual {v6, v11, v12}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 881
    .line 882
    .line 883
    new-instance v9, Landroid/view/animation/PathInterpolator;

    .line 884
    .line 885
    const v11, 0x3ea8f5c3    # 0.33f

    .line 886
    .line 887
    .line 888
    const v12, 0x3f2b851f    # 0.67f

    .line 889
    .line 890
    .line 891
    invoke-direct {v9, v11, v1, v12, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v6, v9}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 895
    .line 896
    .line 897
    const/4 v1, -0x1

    .line 898
    invoke-virtual {v6, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 899
    .line 900
    .line 901
    new-instance v1, Landroid/view/animation/AnimationSet;

    .line 902
    .line 903
    const/4 v7, 0x0

    .line 904
    invoke-direct {v1, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 905
    .line 906
    .line 907
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 911
    .line 912
    .line 913
    if-eqz v5, :cond_43

    .line 914
    .line 915
    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 916
    .line 917
    .line 918
    :cond_43
    iput-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mCallFullPopupBacgroundView:Landroid/widget/FrameLayout;

    .line 919
    .line 920
    goto :goto_32

    .line 921
    :cond_44
    move-object/from16 v14, p1

    .line 922
    .line 923
    move-object/from16 p4, v12

    .line 924
    .line 925
    :goto_32
    const/4 v1, 0x0

    .line 926
    :goto_33
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    .line 927
    .line 928
    if-eqz v3, :cond_45

    .line 929
    .line 930
    const v5, 0x7f0a0b3d

    .line 931
    .line 932
    .line 933
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 934
    .line 935
    .line 936
    move-result-object v3

    .line 937
    check-cast v3, Landroid/widget/ImageView;

    .line 938
    .line 939
    goto :goto_34

    .line 940
    :cond_45
    const/4 v3, 0x0

    .line 941
    :goto_34
    if-eqz v1, :cond_4a

    .line 942
    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShowNotificationAppIcon()Z

    .line 944
    .line 945
    .line 946
    move-result v5

    .line 947
    if-eqz v5, :cond_47

    .line 948
    .line 949
    if-eqz v3, :cond_46

    .line 950
    .line 951
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 952
    .line 953
    .line 954
    :cond_46
    const/4 v4, 0x0

    .line 955
    goto :goto_35

    .line 956
    :cond_47
    const/4 v5, 0x0

    .line 957
    const/4 v6, 0x1

    .line 958
    invoke-virtual {v0, v3, v5, v5, v6}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateSmallIconBg(Landroid/widget/ImageView;ZZZ)V

    .line 959
    .line 960
    .line 961
    if-eqz v3, :cond_48

    .line 962
    .line 963
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 964
    .line 965
    .line 966
    :cond_48
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 967
    .line 968
    .line 969
    move v4, v5

    .line 970
    :goto_35
    if-nez v3, :cond_49

    .line 971
    .line 972
    goto :goto_36

    .line 973
    :cond_49
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 974
    .line 975
    .line 976
    goto :goto_36

    .line 977
    :cond_4a
    const/4 v4, 0x0

    .line 978
    if-nez v3, :cond_4b

    .line 979
    .line 980
    goto :goto_36

    .line 981
    :cond_4b
    const/16 v5, 0x8

    .line 982
    .line 983
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 984
    .line 985
    .line 986
    :goto_36
    if-eqz v1, :cond_4e

    .line 987
    .line 988
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 989
    .line 990
    .line 991
    move-result-object v1

    .line 992
    if-eqz v1, :cond_4c

    .line 993
    .line 994
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 995
    .line 996
    .line 997
    move-result v1

    .line 998
    const/4 v2, 0x1

    .line 999
    if-ne v1, v2, :cond_4d

    .line 1000
    .line 1001
    move v1, v2

    .line 1002
    goto :goto_37

    .line 1003
    :cond_4c
    const/4 v2, 0x1

    .line 1004
    :cond_4d
    move v1, v2

    .line 1005
    move v2, v4

    .line 1006
    :goto_37
    if-eqz v2, :cond_4e

    .line 1007
    .line 1008
    move v4, v1

    .line 1009
    :cond_4e
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    .line 1010
    .line 1011
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateImportBadgeIconRing(Landroid/view/View;Z)V

    .line 1012
    .line 1013
    .line 1014
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 1015
    .line 1016
    move-object/from16 v2, v16

    .line 1017
    .line 1018
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 1019
    .line 1020
    .line 1021
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 1022
    .line 1023
    move-object/from16 v2, v17

    .line 1024
    .line 1025
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateTwoPhoneIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 1026
    .line 1027
    .line 1028
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    .line 1029
    .line 1030
    if-nez v1, :cond_4f

    .line 1031
    .line 1032
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 1033
    .line 1034
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1035
    .line 1036
    .line 1037
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    .line 1038
    .line 1039
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v0, v14, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setRightIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V

    .line 1043
    .line 1044
    .line 1045
    :cond_4f
    if-eqz p3, :cond_50

    .line 1046
    .line 1047
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    .line 1048
    .line 1049
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v0, v14, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setListItemTextLayout(Landroid/content/Context;Landroid/view/View;)V

    .line 1053
    .line 1054
    .line 1055
    :cond_50
    move-object/from16 v12, p4

    .line 1056
    .line 1057
    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setMarqueeItem(Landroid/widget/TextView;)V

    .line 1058
    .line 1059
    .line 1060
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    .line 1061
    .line 1062
    const-string/jumbo v1, "setPopupItemInfo Common - needsRedaction : "

    .line 1063
    .line 1064
    .line 1065
    const-string v2, "S.S.N."

    .line 1066
    .line 1067
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    return-void
.end method

.method public setPopupViewLayout(Landroid/content/Context;ZLandroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setRightIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V
    .locals 1

    .line 1
    const p0, 0x7f0a0b49

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/widget/ImageView;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p3, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    if-lez p3, :cond_1

    .line 24
    .line 25
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 26
    .line 27
    add-int/lit8 p3, p3, -0x1

    .line 28
    .line 29
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mUriImage:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    :goto_0
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/16 p1, 0x8

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :goto_1
    return-void
.end method

.method public showUnlockIconAnim()V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateShowNotificationTip()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "NotiShowCoverScreenTip"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationOnKeyguard()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v3, v1

    .line 31
    :goto_0
    const/4 v4, 0x1

    .line 32
    if-eqz p0, :cond_4

    .line 33
    .line 34
    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CLEAR_COVER:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 43
    .line 44
    const-string v5, "cover_screen_show_notification"

    .line 45
    .line 46
    invoke-virtual {v1, v5}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-ne v1, v4, :cond_3

    .line 55
    .line 56
    :cond_2
    move v1, v4

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move v1, v2

    .line 59
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_4
    if-eqz p0, :cond_7

    .line 64
    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    move v2, v4

    .line 86
    :cond_5
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    .line 87
    .line 88
    if-nez v0, :cond_6

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const/4 v1, -0x2

    .line 98
    const-string v3, "cover_screen_show_notification_tip"

    .line 99
    .line 100
    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 104
    .line 105
    invoke-virtual {p0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    iput v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    .line 110
    .line 111
    :cond_7
    :goto_2
    return-void
.end method
