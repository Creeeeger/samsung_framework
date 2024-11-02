.class public Lcom/android/wm/shell/freeform/SmartPopupViewService;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mEnabledList:Ljava/util/List;

.field public mPackageRemovedReceiver:Lcom/android/wm/shell/freeform/SmartPopupViewService$1;

.field public mSmartPopupViewPackageListObserver:Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;

.field public mZenMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mZenMode:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mPackageRemovedReceiver:Lcom/android/wm/shell/freeform/SmartPopupViewService$1;

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/freeform/SmartPopupViewService;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/freeform/SmartPopupViewService;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .line 1
    const-string v0, "FreeformContainer"

    .line 2
    .line 3
    const-string v1, "[SmartPopupViewService] onBind()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/content/ComponentName;

    .line 9
    .line 10
    const-class v1, Lcom/android/wm/shell/freeform/SmartPopupViewService;

    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, -0x2

    .line 16
    :try_start_0
    invoke-virtual {p0, p0, v0, v1}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    new-instance v0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;-><init>(Lcom/android/wm/shell/freeform/SmartPopupViewService;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mSmartPopupViewPackageListObserver:Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;

    .line 30
    .line 31
    new-instance v0, Lcom/android/wm/shell/freeform/SmartPopupViewService$1;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/SmartPopupViewService$1;-><init>(Lcom/android/wm/shell/freeform/SmartPopupViewService;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mPackageRemovedReceiver:Lcom/android/wm/shell/freeform/SmartPopupViewService$1;

    .line 37
    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v1, "package"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mPackageRemovedReceiver:Lcom/android/wm/shell/freeform/SmartPopupViewService$1;

    .line 55
    .line 56
    const/4 v2, 0x2

    .line 57
    invoke-virtual {p0, v1, v0, v2}, Landroid/service/notification/NotificationListenerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 65
    .line 66
    const/16 v1, 0x15

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    .line 69
    .line 70
    .line 71
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v4, "[SmartPopupViewService] onNotificationPosted: "

    .line 16
    .line 17
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "FreeformContainer"

    .line 28
    .line 29
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    new-instance v3, Landroid/service/notification/NotificationListenerService$Ranking;

    .line 33
    .line 34
    invoke-direct {v3}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p2, p1, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 42
    .line 43
    .line 44
    iget p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mZenMode:I

    .line 45
    .line 46
    const/4 p2, 0x1

    .line 47
    const/4 v5, 0x0

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->getSuppressedVisualEffects()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    and-int/lit8 p1, p1, 0x10

    .line 55
    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    move p1, p2

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move p1, v5

    .line 61
    :goto_0
    if-eqz p1, :cond_1

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string p2, "[SmartPopupViewService] SuppressedVisibleEffects now. mZenMode="

    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget p0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mZenMode:I

    .line 71
    .line 72
    invoke-static {p0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    if-eqz v0, :cond_9

    .line 88
    .line 89
    if-eqz v1, :cond_9

    .line 90
    .line 91
    if-nez v2, :cond_2

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    .line 95
    .line 96
    check-cast p1, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_3

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_3
    iget-object p1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 106
    .line 107
    if-eqz p1, :cond_8

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    iget-object p1, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 117
    .line 118
    if-eqz p1, :cond_5

    .line 119
    .line 120
    const-string/jumbo v3, "progress"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_a

    .line 128
    .line 129
    iget-object p1, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 130
    .line 131
    const-string/jumbo v3, "service"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_5

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_5
    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_6

    .line 146
    .line 147
    const-string p1, "[SmartPopupViewService] isSmartPopupViewTarget: group summary notification is not target"

    .line 148
    .line 149
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    invoke-virtual {v1}, Landroid/app/Notification;->isForegroundService()Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_7

    .line 158
    .line 159
    const-string p1, "[SmartPopupViewService] isSmartPopupViewTarget: forgroundservice notification is not target"

    .line 160
    .line 161
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_7
    invoke-virtual {v1}, Landroid/app/Notification;->isBubbleNotification()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_b

    .line 170
    .line 171
    const-string p1, "[SmartPopupViewService] isSmartPopupViewTarget: Freeform notification is not target"

    .line 172
    .line 173
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_8
    :goto_1
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_9
    :goto_2
    const-string p1, "[SmartPopupViewService] isSmartPopupViewTarget: there is empty parameter"

    .line 182
    .line 183
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    :cond_a
    :goto_3
    move p2, v5

    .line 187
    :cond_b
    if-eqz p2, :cond_c

    .line 188
    .line 189
    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    new-instance p1, Lcom/android/wm/shell/freeform/SmartPopupViewItem;

    .line 194
    .line 195
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    .line 196
    .line 197
    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/wm/shell/freeform/SmartPopupViewItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 201
    .line 202
    const/16 p2, 0x17

    .line 203
    .line 204
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :cond_c
    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[SmartPopupViewService] onNotificationRemoved: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "FreeformContainer"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 25
    .line 26
    const/16 v0, 0x18

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    const-string v0, "FreeformContainer"

    .line 2
    .line 3
    const-string v1, "[SmartPopupViewService] onUnbind()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mSmartPopupViewPackageListObserver:Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mPackageRemovedReceiver:Lcom/android/wm/shell/freeform/SmartPopupViewService$1;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 27
    .line 28
    const/16 v1, 0x16

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onUnbind(Landroid/content/Intent;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0
.end method
