.class public Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBackupThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    const-string v3, "onReceive ( action = "

    .line 6
    .line 7
    const-string v4, ")"

    .line 8
    .line 9
    const-string v5, "NotifBnRManager"

    .line 10
    .line 11
    invoke-static {v3, v2, v4, v5}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    :try_start_0
    const-string v3, "SAVE_PATH"

    .line 17
    .line 18
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-string v3, "SOURCE"

    .line 23
    .line 24
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    const-string v3, "SESSION_KEY"

    .line 29
    .line 30
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    const-string v3, "EXPORT_SESSION_TIME"

    .line 35
    .line 36
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v11

    .line 40
    const-string v3, "ACTION"

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const-string v8, "SECURITY_LEVEL"

    .line 48
    .line 49
    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const-string v8, "NOTIFICATION_BLOCK_LIST"

    .line 54
    .line 55
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    move-object v8, v1

    .line 60
    check-cast v8, Ljava/util/List;

    .line 61
    .line 62
    const-string v1, "com.samsung.android.intent.action.REQUEST_BACKUP_NOTIFICATION"

    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    const/4 v1, 0x2

    .line 71
    if-ne v3, v1, :cond_0

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    const-string/jumbo v1, "stop backup working thread for quickpanel"

    .line 84
    .line 85
    .line 86
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 92
    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    iput-object v1, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    .line 96
    .line 97
    const-class v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;

    .line 104
    .line 105
    const-string v7, "com.samsung.android.intent.action.RESPONSE_BACKUP_NOTIFICATION"

    .line 106
    .line 107
    const/4 v8, 0x1

    .line 108
    sget-object v9, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    move-object v6, p1

    .line 114
    invoke-static/range {v6 .. v11}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_0
    new-instance v9, Ljava/lang/Thread;

    .line 119
    .line 120
    new-instance v11, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;

    .line 121
    .line 122
    move-object v1, v11

    .line 123
    move-object v2, p0

    .line 124
    move-object v3, p1

    .line 125
    move-object v5, v10

    .line 126
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;-><init>(Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    const-string v1, "REQUEST_BACKUP_NOTIFICATION"

    .line 130
    .line 131
    invoke-direct {v9, v11, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iput-object v9, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    .line 135
    .line 136
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_1
    const-string v1, "com.samsung.android.intent.action.REQUEST_RESTORE_NOTIFICATION"

    .line 141
    .line 142
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    new-instance v9, Ljava/lang/Thread;

    .line 149
    .line 150
    new-instance v11, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$2;

    .line 151
    .line 152
    move-object v1, v11

    .line 153
    move-object v2, p0

    .line 154
    move-object v3, p1

    .line 155
    move-object v5, v10

    .line 156
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$2;-><init>(Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 157
    .line 158
    .line 159
    const-string v0, "REQUEST_RESTORE_NOTIFICATION"

    .line 160
    .line 161
    invoke-direct {v9, v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    :cond_2
    :goto_0
    return-void
.end method
