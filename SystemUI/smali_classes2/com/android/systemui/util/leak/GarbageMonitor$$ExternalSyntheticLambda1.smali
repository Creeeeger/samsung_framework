.class public final synthetic Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/leak/GarbageMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/leak/GarbageMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/util/leak/GarbageMonitor;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/systemui/util/leak/TrackedGarbage;->countOldGarbage()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x5

    .line 12
    if-le v1, v2, :cond_0

    .line 13
    .line 14
    const-string v2, "leak"

    .line 15
    .line 16
    const-string v3, "LeakReporter"

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/util/leak/GarbageMonitor;->mLeakReporter:Lcom/android/systemui/util/leak/LeakReporter;

    .line 19
    .line 20
    iget-object v4, v0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    :try_start_0
    new-instance v5, Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 32
    .line 33
    .line 34
    new-instance v6, Ljava/io/File;

    .line 35
    .line 36
    const-string v7, "leak.hprof"

    .line 37
    .line 38
    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-static {v7}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v7, Ljava/io/File;

    .line 49
    .line 50
    const-string v8, "leak.dump"

    .line 51
    .line 52
    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v5, Ljava/io/FileOutputStream;

    .line 56
    .line 57
    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :try_start_1
    new-instance v8, Ljava/io/PrintWriter;

    .line 61
    .line 62
    invoke-direct {v8, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 63
    .line 64
    .line 65
    const-string v9, "Build: "

    .line 66
    .line 67
    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v9, "ro.build.description"

    .line 71
    .line 72
    .line 73
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    .line 84
    .line 85
    .line 86
    iget-object v9, v0, Lcom/android/systemui/util/leak/LeakReporter;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    .line 87
    .line 88
    const/4 v10, 0x0

    .line 89
    new-array v11, v10, [Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v9, v8, v11}, Lcom/android/systemui/util/leak/LeakDetector;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    .line 97
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 98
    .line 99
    .line 100
    const-class v5, Landroid/app/NotificationManager;

    .line 101
    .line 102
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Landroid/app/NotificationManager;

    .line 107
    .line 108
    new-instance v8, Landroid/app/NotificationChannel;

    .line 109
    .line 110
    const-string v9, "Leak Alerts"

    .line 111
    .line 112
    const/4 v11, 0x4

    .line 113
    invoke-direct {v8, v2, v9, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 114
    .line 115
    .line 116
    const/4 v2, 0x1

    .line 117
    invoke-virtual {v8, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 121
    .line 122
    .line 123
    new-instance v9, Landroid/app/Notification$Builder;

    .line 124
    .line 125
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-direct {v9, v4, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    const-string v8, "Memory Leak Detected"

    .line 141
    .line 142
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    const-string v8, "SystemUI has detected %d leaked objects. Tap to send"

    .line 147
    .line 148
    new-array v2, v2, [Ljava/lang/Object;

    .line 149
    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    aput-object v1, v2, v10

    .line 155
    .line 156
    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const v2, 0x1080a9b

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iget-object v11, v0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    .line 172
    .line 173
    const/4 v12, 0x0

    .line 174
    invoke-virtual {v0, v6, v7}, Lcom/android/systemui/util/leak/LeakReporter;->getIntent(Ljava/io/File;Ljava/io/File;)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    const/high16 v14, 0xc000000

    .line 179
    .line 180
    const/4 v15, 0x0

    .line 181
    iget-object v0, v0, Lcom/android/systemui/util/leak/LeakReporter;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 182
    .line 183
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 186
    .line 187
    .line 188
    move-result-object v16

    .line 189
    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v5, v3, v10, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :catchall_0
    move-exception v0

    .line 206
    move-object v1, v0

    .line 207
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :catchall_1
    move-exception v0

    .line 212
    move-object v2, v0

    .line 213
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string v1, "Couldn\'t dump heap for leak"

    .line 219
    .line 220
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .line 222
    .line 223
    :cond_0
    :goto_1
    return-void
.end method
