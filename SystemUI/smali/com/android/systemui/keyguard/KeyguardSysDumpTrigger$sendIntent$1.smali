.class public final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $currentUser:I

.field public final synthetic $reason:I

.field public final synthetic $timestamp:J

.field public final synthetic $userUnlocked:Z

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method public constructor <init>(IZLcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$currentUser:I

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$userUnlocked:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 6
    .line 7
    iput p4, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$reason:I

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$timestamp:J

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$currentUser:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$userUnlocked:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    if-ne v0, v2, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    .line 19
    .line 20
    new-instance v2, Landroid/content/Intent;

    .line 21
    .line 22
    const-string v3, "com.sec.android.ISSUE_TRACKER_ACTION"

    .line 23
    .line 24
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 28
    .line 29
    iget v4, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$reason:I

    .line 30
    .line 31
    iget-wide v5, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$timestamp:J

    .line 32
    .line 33
    const-string v7, "com.salab.issuetracker"

    .line 34
    .line 35
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const-string v7, "ERRCODE"

    .line 39
    .line 40
    const/16 v8, -0x7d

    .line 41
    .line 42
    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->getTriggerMsg(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    const-string v8, "ERRNAME"

    .line 50
    .line 51
    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    const-string v7, "ERRPKG"

    .line 55
    .line 56
    const-string v8, "com.android.systemui"

    .line 57
    .line 58
    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->getTriggerMsg(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v5, v6}, Lcom/android/systemui/util/LogUtil;->makeDateTimeStr(J)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v4, " / "

    .line 78
    .line 79
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const-string v5, "ERRMSG"

    .line 90
    .line 91
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->dumpPath:Ljava/lang/String;

    .line 95
    .line 96
    const-string v4, "EXTLOG"

    .line 97
    .line 98
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 102
    .line 103
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    .line 109
    .line 110
    const-string v2, "dump in progress"

    .line 111
    .line 112
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 117
    .line 118
    .line 119
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$reason:I

    .line 120
    .line 121
    const/4 v1, 0x2

    .line 122
    if-eq v0, v1, :cond_1

    .line 123
    .line 124
    const/4 v1, 0x3

    .line 125
    if-ne v0, v1, :cond_3

    .line 126
    .line 127
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 128
    .line 129
    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->dumpPath:Ljava/lang/String;

    .line 131
    .line 132
    const-wide/16 v0, 0x0

    .line 133
    .line 134
    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->viewCount:J

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    if-nez v0, :cond_3

    .line 138
    .line 139
    new-instance v6, Landroid/content/Intent;

    .line 140
    .line 141
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 142
    .line 143
    .line 144
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->SYSDUMP_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 145
    .line 146
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    const/high16 v0, 0x14000000

    .line 150
    .line 151
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    const-string/jumbo v0, "occluded"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 174
    .line 175
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 182
    .line 183
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    .line 184
    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {v6, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    const/4 v8, 0x0

    .line 194
    const/4 v9, 0x0

    .line 195
    const/4 v10, 0x0

    .line 196
    const/high16 v11, 0x10000000

    .line 197
    .line 198
    const/4 v12, 0x0

    .line 199
    const/4 v13, 0x0

    .line 200
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 201
    .line 202
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 203
    .line 204
    .line 205
    move-result v14

    .line 206
    invoke-interface/range {v2 .. v14}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :catch_0
    move-exception p0

    .line 211
    const-string v0, "KeyguardSysDumpTrigger"

    .line 212
    .line 213
    const-string/jumbo v1, "unable to start activity"

    .line 214
    .line 215
    .line 216
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .line 218
    .line 219
    :cond_3
    :goto_1
    return-void
.end method
