.class public Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;
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
    const-string v5, "QSBackupRestoreManager"

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
    const-string v1, "com.samsung.android.intent.action.REQUEST_BACKUP_QUICKPANEL2"

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    if-ne v3, v1, :cond_0

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    const-string/jumbo v1, "stop backup working thread for quickpanel"

    .line 75
    .line 76
    .line 77
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 83
    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    .line 87
    .line 88
    const-class v0, Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 95
    .line 96
    const-string v7, "com.samsung.android.intent.action.RESPONSE_BACKUP_QUICKPANEL2"

    .line 97
    .line 98
    const/4 v8, 0x1

    .line 99
    sget-object v9, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    move-object v6, p1

    .line 105
    invoke-static/range {v6 .. v11}, Lcom/android/systemui/qs/QSBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    new-instance v8, Ljava/lang/Thread;

    .line 110
    .line 111
    new-instance v9, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$1;

    .line 112
    .line 113
    move-object v1, v9

    .line 114
    move-object v2, p0

    .line 115
    move-object v3, p1

    .line 116
    move-object v5, v10

    .line 117
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$1;-><init>(Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v1, "REQUEST_BACKUP_QUICKPANEL"

    .line 121
    .line 122
    invoke-direct {v8, v9, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iput-object v8, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    .line 126
    .line 127
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    const-string v1, "com.samsung.android.intent.action.REQUEST_RESTORE_QUICKPANEL2"

    .line 132
    .line 133
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_2

    .line 138
    .line 139
    new-instance v8, Ljava/lang/Thread;

    .line 140
    .line 141
    new-instance v9, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;

    .line 142
    .line 143
    move-object v1, v9

    .line 144
    move-object v2, p0

    .line 145
    move-object v3, p1

    .line 146
    move-object v5, v10

    .line 147
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;-><init>(Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v0, "REQUEST_RESTORE_QUICKPANEL"

    .line 151
    .line 152
    invoke-direct {v8, v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    :cond_2
    :goto_0
    return-void
.end method
