.class public Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sBlockChannelSet:Ljava/util/HashSet;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIsRegister:Z

.field public final mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v1, "CHANNEL_ID_RECORDING_SCREEN"

    .line 4
    .line 5
    const-string/jumbo v2, "voice_note_notification_channel"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->sBlockChannelSet:Ljava/util/HashSet;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mIsRegister:Z

    .line 13
    .line 14
    new-instance p0, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static getTargetActivity(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "CoverLauncher_NotificationListener"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string/jumbo v3, "semBadgeTarget"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/content/ComponentName;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, "/"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object p0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_1
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_2
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "Dump CoverLauncher_NotificationListener"

    .line 2
    .line 3
    const-string p3, "mIsRegister="

    .line 4
    .line 5
    invoke-static {p2, p1, p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mIsRegister:Z

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mItems:Ljava/util/HashMap;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/util/Map$Entry;

    .line 48
    .line 49
    new-instance p3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, "BadgeItem : "

    .line 52
    .line 53
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 2
    .line 3
    .line 4
    const-string p0, "CoverLauncher_NotificationListener"

    .line 5
    .line 6
    const-string v0, "NotificationListener onCreate"

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    const-string v0, "CoverLauncher_NotificationListener"

    .line 2
    .line 3
    const-string v1, "NotificationListener onDestroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onListenerConnected()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NotificationListener onListenerConnected mIsRegister="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mIsRegister:Z

    .line 9
    .line 10
    const-string v2, "CoverLauncher_NotificationListener"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mIsRegister:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->setOnNotificationPostedTrim(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->onNotificationFullRefresh()V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->notifyAppWidgetViewDataChanged()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onListenerDisconnected()V
    .locals 2

    .line 1
    const-string v0, "CoverLauncher_NotificationListener"

    .line 2
    .line 3
    const-string v1, "NotificationListener onListenerDisconnected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mItems:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onNotificationFullRefresh()V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onNotificationFullRefresh mIsRegister="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mIsRegister:Z

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ",forceNotify=true"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "CoverLauncher_NotificationListener"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mIsRegister:Z

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x1

    .line 34
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications(I)[Landroid/service/notification/StatusBarNotification;

    .line 35
    .line 36
    .line 37
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    const/4 v2, 0x0

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 46
    .line 47
    .line 48
    move v4, v2

    .line 49
    :goto_0
    array-length v5, v1

    .line 50
    if-ge v4, v5, :cond_3

    .line 51
    .line 52
    aget-object v5, v1, v4

    .line 53
    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v5}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 73
    .line 74
    array-length v5, v1

    .line 75
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    sub-int/2addr v5, v6

    .line 80
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .line 82
    .line 83
    move v5, v2

    .line 84
    :goto_1
    array-length v6, v1

    .line 85
    if-ge v5, v6, :cond_5

    .line 86
    .line 87
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-nez v6, :cond_4

    .line 96
    .line 97
    aget-object v6, v1, v5

    .line 98
    .line 99
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    move-object v1, v4

    .line 106
    :goto_2
    if-nez v1, :cond_6

    .line 107
    .line 108
    return-void

    .line 109
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_8

    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Landroid/service/notification/StatusBarNotification;

    .line 129
    .line 130
    if-eqz v4, :cond_7

    .line 131
    .line 132
    invoke-virtual {p0, v4}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-nez v5, :cond_7

    .line 137
    .line 138
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v5}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-static {v4}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->getTargetActivity(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v7, ":"

    .line 159
    .line 160
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    new-instance v7, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;

    .line 179
    .line 180
    iget v4, v4, Landroid/app/Notification;->number:I

    .line 181
    .line 182
    invoke-direct {v7, v6, v5, v4}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mContext:Landroid/content/Context;

    .line 190
    .line 191
    if-eqz p0, :cond_f

    .line 192
    .line 193
    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    iget-object v1, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mItems:Ljava/util/HashMap;

    .line 205
    .line 206
    new-instance v4, Ljava/util/HashMap;

    .line 207
    .line 208
    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    iget-object v6, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mItems:Ljava/util/HashMap;

    .line 220
    .line 221
    if-eqz v5, :cond_a

    .line 222
    .line 223
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    check-cast v5, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;

    .line 228
    .line 229
    iget-object v7, v5, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    check-cast v6, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    .line 236
    .line 237
    if-nez v6, :cond_9

    .line 238
    .line 239
    new-instance v6, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    .line 240
    .line 241
    iget-object v7, v5, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    .line 242
    .line 243
    invoke-direct {v6, v7}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object v7, v5, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->addItem(Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :cond_9
    invoke-virtual {v6, v5}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->addOrUpdateNotificationItem(Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;)Z

    .line 252
    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_a
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    :cond_b
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_e

    .line 268
    .line 269
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    check-cast v1, Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    check-cast v3, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    .line 280
    .line 281
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    check-cast v5, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    .line 286
    .line 287
    if-nez v3, :cond_c

    .line 288
    .line 289
    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_c
    iget-object v7, v5, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mInfo:Ljava/lang/String;

    .line 294
    .line 295
    iget-object v8, v3, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mInfo:Ljava/lang/String;

    .line 296
    .line 297
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    if-eqz v7, :cond_d

    .line 302
    .line 303
    iget v3, v3, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    .line 304
    .line 305
    const/16 v7, 0x3e7

    .line 306
    .line 307
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    iget v5, v5, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    .line 312
    .line 313
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    if-eq v3, v5, :cond_d

    .line 318
    .line 319
    move v3, v0

    .line 320
    goto :goto_6

    .line 321
    :cond_d
    move v3, v2

    .line 322
    :goto_6
    if-nez v3, :cond_b

    .line 323
    .line 324
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    goto :goto_5

    .line 328
    :cond_e
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 329
    .line 330
    .line 331
    :cond_f
    return-void

    .line 332
    :catch_0
    move-exception p0

    .line 333
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    .line 335
    .line 336
    return-void
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->sBlockChannelSet:Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->updateBadge(Landroid/service/notification/StatusBarNotification;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->notifyAppWidgetViewDataChanged()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "CoverLauncher_NotificationListener"

    .line 5
    .line 6
    const-string/jumbo v0, "onNotificationRankingUpdate"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p1, p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mItems:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->onNotificationFullRefresh()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->getTargetActivity(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ":"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;

    .line 48
    .line 49
    iget p1, p1, Landroid/app/Notification;->number:I

    .line 50
    .line 51
    invoke-direct {v2, v1, v0, p1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object v0, v2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v1, p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mItems:Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iget-object v1, v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mNotificationItems:Ljava/util/List;

    .line 82
    .line 83
    move-object v3, v1

    .line 84
    check-cast v3, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_1

    .line 91
    .line 92
    iget v4, v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    .line 93
    .line 94
    iget v5, v2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->count:I

    .line 95
    .line 96
    sub-int/2addr v4, v5

    .line 97
    iput v4, v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    .line 98
    .line 99
    :cond_1
    if-eqz v3, :cond_2

    .line 100
    .line 101
    check-cast v1, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_2

    .line 108
    .line 109
    iget-object v0, v2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    .line 110
    .line 111
    const-string/jumbo v1, "remove item, key : "

    .line 112
    .line 113
    .line 114
    const-string v2, "CoverLauncher_BadgeManager"

    .line 115
    .line 116
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mItems:Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    invoke-static {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->notifyAppWidgetViewDataChanged()V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public final shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

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
    iget-object v3, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->canShowBadge()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    return v0

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string/jumbo v1, "miscellaneous"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    iget p0, p1, Landroid/app/Notification;->flags:I

    .line 51
    .line 52
    and-int/lit8 p0, p0, 0x2

    .line 53
    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    return v0

    .line 57
    :cond_2
    iget p0, p1, Landroid/app/Notification;->flags:I

    .line 58
    .line 59
    and-int/lit16 p0, p0, 0x200

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    move p0, v0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    move p0, v1

    .line 67
    :goto_0
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 68
    .line 69
    const-string v3, "android.title"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 76
    .line 77
    const-string v3, "android.text"

    .line 78
    .line 79
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    move p1, v0

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    move p1, v1

    .line 98
    :goto_1
    if-nez p0, :cond_6

    .line 99
    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    move v0, v1

    .line 104
    :cond_6
    :goto_2
    return v0
.end method

.method public updateBadge(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->getTargetActivity(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ":"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v3, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;

    .line 46
    .line 47
    iget p1, p1, Landroid/app/Notification;->number:I

    .line 48
    .line 49
    invoke-direct {v3, v2, v1, p1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string/jumbo v1, "updateBadge item="

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v1, "CoverLauncher_NotificationListener"

    .line 68
    .line 69
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    iget-object v0, v3, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mItems:Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    .line 100
    .line 101
    if-nez v0, :cond_0

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_3

    .line 108
    .line 109
    new-instance p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    .line 110
    .line 111
    iget-object v0, v3, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    .line 112
    .line 113
    invoke-direct {p1, v0}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v3}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->addOrUpdateNotificationItem(Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;)Z

    .line 117
    .line 118
    .line 119
    iget-object v0, v3, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->addItem(Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    iget-object v1, v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mNotificationItems:Ljava/util/List;

    .line 130
    .line 131
    if-eqz p1, :cond_1

    .line 132
    .line 133
    move-object p1, v1

    .line 134
    check-cast p1, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_2

    .line 141
    .line 142
    iget p1, v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    .line 143
    .line 144
    iget v2, v3, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->count:I

    .line 145
    .line 146
    sub-int/2addr p1, v2

    .line 147
    iput p1, v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->addOrUpdateNotificationItem(Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;)Z

    .line 151
    .line 152
    .line 153
    :cond_2
    :goto_0
    check-cast v1, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_3

    .line 160
    .line 161
    iget-object p1, v3, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    .line 162
    .line 163
    const-string/jumbo v0, "remove item, key : "

    .line 164
    .line 165
    .line 166
    const-string v1, "CoverLauncher_BadgeManager"

    .line 167
    .line 168
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mItems:Ljava/util/HashMap;

    .line 172
    .line 173
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    :cond_3
    :goto_1
    return-void
.end method
