.class public final Lcom/android/systemui/pluginlock/component/PluginLockNotification;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCallBack:Lcom/android/systemui/pluginlock/component/PluginLockNotification$$ExternalSyntheticLambda0;

.field public mIsDlsData:Z

.field public final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final mUris:[Landroid/net/Uri;

.field public mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mIsDlsData:Z

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    .line 9
    .line 10
    const-string p1, "lockscreen_minimizing_notification"

    .line 11
    .line 12
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string p2, "lock_screen_show_notifications"

    .line 17
    .line 18
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    filled-new-array {p1, p2}, [Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mUris:[Landroid/net/Uri;

    .line 27
    .line 28
    new-instance p1, Lcom/android/systemui/pluginlock/component/PluginLockNotification$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockNotification;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mCallBack:Lcom/android/systemui/pluginlock/component/PluginLockNotification$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 7

    .line 1
    const-string v0, "PluginLockNotification"

    .line 2
    .line 3
    const-string v1, "apply()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mIsDlsData:Z

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/NotificationData;->getNotiType()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/NotificationData;->getVisibility()Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationState()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-string v4, "apply() state:"

    .line 43
    .line 44
    const-string v5, ", notiType:"

    .line 45
    .line 46
    const-string v6, ", notiVisibility:"

    .line 47
    .line 48
    invoke-static {v4, v3, v5, v1, v6}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {v4, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v4, -0x2

    .line 56
    if-ne v3, v4, :cond_0

    .line 57
    .line 58
    const-string p0, "apply() skip!"

    .line 59
    .line 60
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v4, -0x3

    .line 65
    if-ne v3, v4, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 p1, -0x1

    .line 72
    if-eq v2, p1, :cond_2

    .line 73
    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->getCurrentNotificationType()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const-string p2, "lock_screen_show_notifications"

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    invoke-virtual {p0, v3, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(ILjava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationBackup(II)V

    .line 88
    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v4, "apply() Backup curType: "

    .line 93
    .line 94
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p1, ", curVisibility: "

    .line 101
    .line 102
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p1, ", Set notiType: "

    .line 109
    .line 110
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p1, ", notiVisibility: "

    .line 117
    .line 118
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationVisibility(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationType(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->registerCallback(II)V

    .line 138
    .line 139
    .line 140
    :cond_2
    :goto_0
    return-void
.end method

.method public final getCurrentNotificationType()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "lockscreen_minimizing_notification"

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const-string v1, "getCurrentNotificationType() getSettings: "

    .line 9
    .line 10
    const-string v2, ", Type : "

    .line 11
    .line 12
    invoke-static {v1, p0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    add-int/2addr p0, v0

    .line 17
    const-string v0, "PluginLockNotification"

    .line 18
    .line 19
    invoke-static {v1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return p0
.end method

.method public final registerCallback(II)V
    .locals 3

    .line 1
    const-string/jumbo v0, "registerCallback() type: "

    .line 2
    .line 3
    .line 4
    const-string v1, ", visibility: "

    .line 5
    .line 6
    const-string v2, "PluginLockNotification"

    .line 7
    .line 8
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    .line 12
    .line 13
    iput p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    iput-wide p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mUris:[Landroid/net/Uri;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mCallBack:Lcom/android/systemui/pluginlock/component/PluginLockNotification$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final setNotificationType(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setNotificationType() value: "

    .line 2
    .line 3
    .line 4
    const-string v1, ", putSettings : "

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "PluginLockNotification"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-string v0, "lockscreen_minimizing_notification"

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final setNotificationVisibility(I)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const-string/jumbo v0, "setNotificationVisibility: "

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const-string v2, "PluginLockNotification"

    .line 15
    .line 16
    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "lock_screen_show_notifications"

    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 5

    .line 1
    const-string v0, "PluginLockNotification"

    .line 2
    .line 3
    const-string/jumbo v1, "update()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mIsDlsData:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationState()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string/jumbo v2, "update() state: "

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, -0x2

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mIsDlsData:Z

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const-string/jumbo p0, "update() skip!"

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_0
    const/4 v2, -0x1

    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_1
    const-string/jumbo p1, "unregisterCallback()"

    .line 49
    .line 50
    .line 51
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    .line 55
    .line 56
    iput v2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 57
    .line 58
    const-wide/16 v3, 0x0

    .line 59
    .line 60
    iput-wide v3, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mCallBack:Lcom/android/systemui/pluginlock/component/PluginLockNotification$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 65
    .line 66
    invoke-virtual {v1, p1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData;->getVisibility()Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/NotificationData;->getNotiType()Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    const-string/jumbo v1, "update() notiType: "

    .line 94
    .line 95
    .line 96
    const-string v3, ", visibility: "

    .line 97
    .line 98
    invoke-static {v1, p2, v3, p1, v0}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    if-eq p1, v2, :cond_2

    .line 102
    .line 103
    if-eqz p2, :cond_2

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationVisibility(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationType(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->registerCallback(II)V

    .line 112
    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_2
    const-string p1, "disable & restore backup value "

    .line 116
    .line 117
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 121
    .line 122
    if-nez p1, :cond_3

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_4

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getNotificationBackupVisibility()Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    goto :goto_1

    .line 140
    :cond_4
    :goto_0
    move p1, v2

    .line 141
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 145
    .line 146
    if-nez p1, :cond_5

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-eqz p1, :cond_6

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getNotificationBackupType()Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    goto :goto_3

    .line 164
    :cond_6
    :goto_2
    move p1, v2

    .line 165
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationType(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationBackup(II)V

    .line 169
    .line 170
    .line 171
    :goto_4
    return-void
.end method
