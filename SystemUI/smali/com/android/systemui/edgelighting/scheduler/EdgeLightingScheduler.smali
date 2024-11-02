.class public final Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

.field public mContext:Landroid/content/Context;

.field public final mEdgeLightingObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;

.field public final mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

.field public final mHandler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;

.field public mIsScreenOnReceived:Z

.field public mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

.field public mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

.field public mPm:Landroid/os/PowerManager;

.field public mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

.field public mScreenStatusChecker:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

.field public mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static -$$Nest$misNeedToBlockedByPolicy(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Ljava/lang/String;I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 4
    .line 5
    const-class v1, Landroid/app/SemStatusBarManager;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/SemStatusBarManager;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    const/4 v2, 0x1

    .line 23
    const-string v3, "EdgeLightingScheduler"

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string p0, "isNeedToBlockedByPolicy: not work on statusbar"

    .line 28
    .line 29
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-boolean v4, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_AOD:Z

    .line 42
    .line 43
    xor-int/2addr v4, v2

    .line 44
    const/4 v5, -0x2

    .line 45
    const-string v6, "edge_lighting_show_condition"

    .line 46
    .line 47
    invoke-static {v0, v6, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ne v0, v2, :cond_2

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    const-string v0, "com.samsung.android.messaging"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mIsScreenOnReceived:Z

    .line 64
    .line 65
    if-nez p0, :cond_2

    .line 66
    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v0, "isNeedToBlockedByPolicy: skip by screen on order policy "

    .line 70
    .line 71
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p2, " "

    .line 78
    .line 79
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-static {}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->getInstance()Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSwitchState:Z

    .line 98
    .line 99
    if-nez p0, :cond_3

    .line 100
    .line 101
    const-string p0, "isNeedToBlockedByPolicy: not work when cover"

    .line 102
    .line 103
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :goto_1
    move v1, v2

    .line 107
    :cond_3
    return v1
.end method

.method public static -$$Nest$mstartNotiEffect(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuffer;

    .line 6
    .line 7
    const-string/jumbo v3, "startNotiEffect:  dur="

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 16
    .line 17
    const-string v4, "EdgeLightingScheduler"

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    const-string/jumbo v0, "startNotiEffect: noti info empty"

    .line 22
    .line 23
    .line 24
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    goto/16 :goto_f

    .line 28
    .line 29
    :cond_0
    invoke-static {}, Lcom/android/systemui/edgelighting/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/4 v6, 0x1

    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 37
    .line 38
    iget-object v7, v5, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 39
    .line 40
    :try_start_0
    iget-object v8, v7, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    .line 41
    .line 42
    if-eqz v8, :cond_1

    .line 43
    .line 44
    invoke-virtual {v5}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_1

    .line 49
    .line 50
    iget-object v5, v7, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    .line 51
    .line 52
    invoke-interface {v5, v6}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->requestDozeStateSubScreen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/systemui/edgelighting/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const/4 v7, 0x0

    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mPm:Landroid/os/PowerManager;

    .line 71
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v8

    .line 76
    invoke-virtual {v5, v8, v9, v7, v7}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 80
    .line 81
    invoke-virtual {v5}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    iget-object v8, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    .line 86
    .line 87
    const/4 v9, 0x0

    .line 88
    if-eqz v8, :cond_3

    .line 89
    .line 90
    iget-object v8, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 91
    .line 92
    iget-object v8, v8, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    iget-object v10, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    .line 99
    .line 100
    invoke-virtual {v8, v10}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 101
    .line 102
    .line 103
    iput-object v9, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    .line 104
    .line 105
    :cond_3
    iget-object v8, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    .line 106
    .line 107
    if-nez v8, :cond_4

    .line 108
    .line 109
    new-instance v8, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    .line 110
    .line 111
    new-instance v10, Landroid/os/Handler;

    .line 112
    .line 113
    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-direct {v8, v0, v10}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Landroid/os/Handler;)V

    .line 117
    .line 118
    .line 119
    iput-object v8, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    .line 120
    .line 121
    :cond_4
    iget-object v8, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 122
    .line 123
    iget-object v8, v8, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    const-string v10, "any_screen_running"

    .line 130
    .line 131
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    iget-object v11, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    .line 136
    .line 137
    invoke-virtual {v8, v10, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 145
    .line 146
    .line 147
    new-instance v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 148
    .line 149
    invoke-direct {v8}, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getActionList()Ljava/util/ArrayList;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    if-eqz v10, :cond_5

    .line 157
    .line 158
    move v10, v6

    .line 159
    goto :goto_1

    .line 160
    :cond_5
    move v10, v7

    .line 161
    :goto_1
    iput-boolean v10, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mHasActionButton:Z

    .line 162
    .line 163
    iget-object v10, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 164
    .line 165
    iget-object v10, v10, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 166
    .line 167
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotiText()[Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    iget-object v12, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 172
    .line 173
    invoke-virtual {v12}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getEffectColors()[I

    .line 174
    .line 175
    .line 176
    move-result-object v13

    .line 177
    iget-object v14, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v10, v11, v14, v13}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getLightingColor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[I)[I

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    iput-object v10, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    .line 184
    .line 185
    iput-boolean v1, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsBlackBG:Z

    .line 186
    .line 187
    iget-object v10, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 188
    .line 189
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    iput-boolean v6, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEdgeLightingAction:Z

    .line 193
    .line 194
    if-nez v5, :cond_6

    .line 195
    .line 196
    new-instance v10, Landroid/content/Intent;

    .line 197
    .line 198
    iget-object v11, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 199
    .line 200
    iget-object v11, v11, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    const-class v13, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;

    .line 203
    .line 204
    invoke-direct {v10, v11, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .line 206
    .line 207
    iget-object v11, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 208
    .line 209
    iget-object v11, v11, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 210
    .line 211
    invoke-virtual {v11, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 212
    .line 213
    .line 214
    :cond_6
    const/4 v10, -0x1

    .line 215
    const/4 v11, -0x2

    .line 216
    const-string v13, " +TurnOver"

    .line 217
    .line 218
    if-nez v5, :cond_7

    .line 219
    .line 220
    if-eqz v1, :cond_7

    .line 221
    .line 222
    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    .line 224
    .line 225
    const-wide/16 v6, 0x1770

    .line 226
    .line 227
    iput-wide v6, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    .line 228
    .line 229
    iget-object v6, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 230
    .line 231
    iget-object v6, v6, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 232
    .line 233
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    const v7, 0x7f07033e

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    int-to-float v6, v6

    .line 245
    iput v6, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    .line 246
    .line 247
    iput v10, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_7
    iget-object v6, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 251
    .line 252
    iget-object v6, v6, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 253
    .line 254
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    const-string v7, "edge_lighting_transparency"

    .line 259
    .line 260
    const/4 v15, 0x0

    .line 261
    invoke-static {v6, v7, v15, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    int-to-float v6, v6

    .line 266
    const/high16 v7, 0x42c80000    # 100.0f

    .line 267
    .line 268
    div-float/2addr v6, v7

    .line 269
    const/high16 v7, 0x3f800000    # 1.0f

    .line 270
    .line 271
    sub-float/2addr v7, v6

    .line 272
    iput v7, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    .line 273
    .line 274
    iget-object v6, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 275
    .line 276
    iget-object v6, v6, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 277
    .line 278
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    iget-object v15, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 283
    .line 284
    iget-object v15, v15, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 285
    .line 286
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 287
    .line 288
    .line 289
    move-result-object v15

    .line 290
    invoke-virtual {v7, v15}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 295
    .line 296
    .line 297
    move-result-object v15

    .line 298
    const-string v10, "edge_lighting_thickness"

    .line 299
    .line 300
    const/4 v9, 0x0

    .line 301
    invoke-static {v15, v10, v9, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 302
    .line 303
    .line 304
    move-result v15

    .line 305
    invoke-static {v6, v7, v15}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStyleWidth(Landroid/content/Context;Ljava/lang/String;I)F

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    iget-object v7, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 310
    .line 311
    iget-object v7, v7, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 312
    .line 313
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    invoke-static {v7, v10, v9, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 318
    .line 319
    .line 320
    move-result v7

    .line 321
    iput v6, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    .line 322
    .line 323
    iput v7, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    .line 324
    .line 325
    iget-object v6, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 326
    .line 327
    iget-object v6, v6, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 328
    .line 329
    invoke-static {v6}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingDurationOptionType(Landroid/content/Context;)I

    .line 330
    .line 331
    .line 332
    move-result v6

    .line 333
    invoke-static {v6}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    int-to-long v6, v6

    .line 338
    iput-wide v6, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    .line 339
    .line 340
    if-eqz v5, :cond_8

    .line 341
    .line 342
    const-string v6, " +On"

    .line 343
    .line 344
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    .line 346
    .line 347
    goto :goto_2

    .line 348
    :cond_8
    const-string v6, " +Off"

    .line 349
    .line 350
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    .line 352
    .line 353
    :goto_2
    const-string v6, "EdgeLightingEventStyleInfo,"

    .line 354
    .line 355
    if-eqz v1, :cond_9

    .line 356
    .line 357
    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    .line 359
    .line 360
    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 361
    .line 362
    const/4 v5, 0x1

    .line 363
    invoke-virtual {v1, v5}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-virtual {v1, v8}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->startEdgeEffect(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 368
    .line 369
    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    iget-object v6, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 380
    .line 381
    iget-object v6, v6, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 382
    .line 383
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 384
    .line 385
    .line 386
    move-result-object v6

    .line 387
    invoke-virtual {v5, v6}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    invoke-static {v8, v5}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->effectInfoToString(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 406
    .line 407
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    add-int/lit16 v3, v3, 0x7d0

    .line 412
    .line 413
    int-to-long v5, v3

    .line 414
    invoke-virtual {v1, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 415
    .line 416
    .line 417
    goto/16 :goto_e

    .line 418
    .line 419
    :cond_9
    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 420
    .line 421
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v7

    .line 425
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getUserId()I

    .line 426
    .line 427
    .line 428
    move-result v9

    .line 429
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    .line 430
    .line 431
    .line 432
    move-result v10

    .line 433
    invoke-virtual {v1, v9, v10, v7}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isNeedToSanitized(IILjava/lang/String;)Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    invoke-virtual {v0, v3}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->getAppIcon(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Landroid/graphics/drawable/Drawable;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    iput-object v7, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 442
    .line 443
    invoke-virtual {v0, v14}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->isSupportAppIcon(Ljava/lang/String;)Z

    .line 444
    .line 445
    .line 446
    move-result v7

    .line 447
    iput-boolean v7, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsSupportAppIcon:Z

    .line 448
    .line 449
    iget-object v7, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 450
    .line 451
    iget-object v7, v7, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 452
    .line 453
    iget-boolean v7, v7, Lcom/android/systemui/edgelighting/EdgeLightingService;->mShouldShowAppIcon:Z

    .line 454
    .line 455
    iput-boolean v7, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mShouldShowAppIcon:Z

    .line 456
    .line 457
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotiText()[Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v7

    .line 461
    iput-object v7, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    .line 462
    .line 463
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 464
    .line 465
    .line 466
    move-result-object v7

    .line 467
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 468
    .line 469
    .line 470
    move-result-object v9

    .line 471
    iget-object v10, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 472
    .line 473
    iget-object v10, v10, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 474
    .line 475
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 476
    .line 477
    .line 478
    move-result-object v10

    .line 479
    invoke-virtual {v9, v10}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v9

    .line 483
    invoke-virtual {v7, v9}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getPreloadIndex(Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    move-result v7

    .line 487
    iget-object v9, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 488
    .line 489
    iget-object v9, v9, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 490
    .line 491
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 492
    .line 493
    .line 494
    move-result-object v9

    .line 495
    const-string/jumbo v10, "remove_animations"

    .line 496
    .line 497
    .line 498
    const/4 v13, 0x0

    .line 499
    invoke-static {v9, v10, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 500
    .line 501
    .line 502
    move-result v9

    .line 503
    const/4 v10, 0x1

    .line 504
    if-ne v9, v10, :cond_a

    .line 505
    .line 506
    const/4 v9, 0x1

    .line 507
    goto :goto_3

    .line 508
    :cond_a
    const/4 v9, 0x0

    .line 509
    :goto_3
    const-string v10, "content://com.samsung.android.systemui.edgelighting.plus.provider"

    .line 510
    .line 511
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 512
    .line 513
    .line 514
    move-result-object v10

    .line 515
    iget-object v13, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    .line 516
    .line 517
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 518
    .line 519
    .line 520
    move-result-object v13

    .line 521
    invoke-virtual {v13, v10}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 522
    .line 523
    .line 524
    move-result-object v13

    .line 525
    if-eqz v13, :cond_c

    .line 526
    .line 527
    new-instance v13, Landroid/os/Bundle;

    .line 528
    .line 529
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 530
    .line 531
    .line 532
    iget-object v15, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    .line 533
    .line 534
    if-eqz v15, :cond_b

    .line 535
    .line 536
    const/16 v16, 0x0

    .line 537
    .line 538
    aget-object v15, v15, v16

    .line 539
    .line 540
    const-string/jumbo v11, "title"

    .line 541
    .line 542
    .line 543
    invoke-virtual {v13, v11, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    iget-object v11, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    .line 547
    .line 548
    const/4 v15, 0x1

    .line 549
    aget-object v11, v11, v15

    .line 550
    .line 551
    const-string v15, "description"

    .line 552
    .line 553
    invoke-virtual {v13, v15, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    :cond_b
    iget-object v11, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    .line 557
    .line 558
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 559
    .line 560
    .line 561
    move-result-object v11

    .line 562
    const-string v15, "getData()"

    .line 563
    .line 564
    move/from16 p1, v7

    .line 565
    .line 566
    const/4 v7, 0x0

    .line 567
    invoke-virtual {v11, v10, v15, v7, v13}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 568
    .line 569
    .line 570
    move-result-object v10

    .line 571
    iput-object v10, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPlusEffectBundle:Landroid/os/Bundle;

    .line 572
    .line 573
    goto :goto_4

    .line 574
    :cond_c
    move/from16 p1, v7

    .line 575
    .line 576
    :goto_4
    iget-object v7, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPlusEffectBundle:Landroid/os/Bundle;

    .line 577
    .line 578
    if-eqz v7, :cond_d

    .line 579
    .line 580
    const/16 v7, 0x64

    .line 581
    .line 582
    iput v7, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectType:I

    .line 583
    .line 584
    goto :goto_6

    .line 585
    :cond_d
    if-eqz v9, :cond_e

    .line 586
    .line 587
    const/4 v7, 0x0

    .line 588
    goto :goto_5

    .line 589
    :cond_e
    move/from16 v7, p1

    .line 590
    .line 591
    :goto_5
    iput v7, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectType:I

    .line 592
    .line 593
    :goto_6
    iput-object v14, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPackageName:Ljava/lang/String;

    .line 594
    .line 595
    const/4 v7, 0x0

    .line 596
    iput-boolean v7, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsMultiResolutionSupoorted:Z

    .line 597
    .line 598
    iget-object v7, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 599
    .line 600
    iget-object v7, v7, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 601
    .line 602
    invoke-static {v7}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    .line 603
    .line 604
    .line 605
    move-result-object v7

    .line 606
    iget-object v9, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 607
    .line 608
    invoke-virtual {v7, v9}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    .line 609
    .line 610
    .line 611
    move-result v7

    .line 612
    iput-boolean v7, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsGrayScaled:Z

    .line 613
    .line 614
    iget-object v7, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 615
    .line 616
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    .line 618
    .line 619
    sget-boolean v9, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    .line 620
    .line 621
    const-string v9, "keyguard"

    .line 622
    .line 623
    iget-object v7, v7, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 624
    .line 625
    invoke-virtual {v7, v9}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v7

    .line 629
    check-cast v7, Landroid/app/KeyguardManager;

    .line 630
    .line 631
    if-eqz v7, :cond_f

    .line 632
    .line 633
    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 634
    .line 635
    .line 636
    move-result v7

    .line 637
    if-eqz v7, :cond_f

    .line 638
    .line 639
    const/4 v7, 0x1

    .line 640
    goto :goto_7

    .line 641
    :cond_f
    const/4 v7, 0x0

    .line 642
    :goto_7
    if-eqz v7, :cond_18

    .line 643
    .line 644
    const-string v7, "+locked"

    .line 645
    .line 646
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    .line 648
    .line 649
    iget-object v7, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 650
    .line 651
    iget-object v7, v7, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 652
    .line 653
    invoke-virtual {v7}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 654
    .line 655
    .line 656
    move-result-object v7

    .line 657
    const-string v9, "lock_screen_show_notifications"

    .line 658
    .line 659
    const/4 v10, -0x2

    .line 660
    const/4 v11, 0x0

    .line 661
    invoke-static {v7, v9, v11, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 662
    .line 663
    .line 664
    move-result v7

    .line 665
    const/4 v9, 0x1

    .line 666
    if-ne v7, v9, :cond_10

    .line 667
    .line 668
    move/from16 v17, v9

    .line 669
    .line 670
    goto :goto_8

    .line 671
    :cond_10
    const/16 v17, 0x0

    .line 672
    .line 673
    :goto_8
    if-eqz v17, :cond_19

    .line 674
    .line 675
    iget-object v7, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 676
    .line 677
    iget-object v7, v7, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 678
    .line 679
    invoke-virtual {v7}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 680
    .line 681
    .line 682
    move-result-object v7

    .line 683
    const-string v10, "lock_screen_allow_private_notifications"

    .line 684
    .line 685
    const/4 v11, -0x2

    .line 686
    invoke-static {v7, v10, v9, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 687
    .line 688
    .line 689
    move-result v7

    .line 690
    if-nez v7, :cond_11

    .line 691
    .line 692
    move/from16 v17, v9

    .line 693
    .line 694
    goto :goto_9

    .line 695
    :cond_11
    const/16 v17, 0x0

    .line 696
    .line 697
    :goto_9
    invoke-virtual {v12}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 698
    .line 699
    .line 700
    move-result-object v7

    .line 701
    if-eqz v7, :cond_12

    .line 702
    .line 703
    const-string/jumbo v10, "package_visiblity"

    .line 704
    .line 705
    .line 706
    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 707
    .line 708
    .line 709
    move-result v7

    .line 710
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 711
    .line 712
    .line 713
    move-result-object v7

    .line 714
    if-eqz v7, :cond_12

    .line 715
    .line 716
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 717
    .line 718
    .line 719
    move-result v7

    .line 720
    goto :goto_a

    .line 721
    :cond_12
    const/16 v7, -0x3e8

    .line 722
    .line 723
    :goto_a
    if-nez v7, :cond_13

    .line 724
    .line 725
    goto :goto_b

    .line 726
    :cond_13
    const/4 v9, 0x0

    .line 727
    :goto_b
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    .line 728
    .line 729
    .line 730
    move-result v7

    .line 731
    if-nez v1, :cond_14

    .line 732
    .line 733
    if-eqz v7, :cond_14

    .line 734
    .line 735
    const/4 v1, -0x1

    .line 736
    if-eq v7, v1, :cond_14

    .line 737
    .line 738
    if-nez v17, :cond_14

    .line 739
    .line 740
    if-eqz v9, :cond_15

    .line 741
    .line 742
    :cond_14
    invoke-virtual {v0, v14}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    const/4 v10, 0x0

    .line 747
    filled-new-array {v1, v10}, [Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v1

    .line 751
    iput-object v1, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    .line 752
    .line 753
    if-eqz v5, :cond_15

    .line 754
    .line 755
    invoke-static {}, Lcom/android/systemui/edgelighting/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 756
    .line 757
    .line 758
    move-result v1

    .line 759
    if-nez v1, :cond_15

    .line 760
    .line 761
    const-string v0, "Not showing edgelighting because suppressAwakeHeadsUp is true"

    .line 762
    .line 763
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .line 765
    .line 766
    goto/16 :goto_f

    .line 767
    .line 768
    :cond_15
    const-string v1, "+notiOn"

    .line 769
    .line 770
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 771
    .line 772
    .line 773
    const-string v1, " "

    .line 774
    .line 775
    if-eqz v17, :cond_16

    .line 776
    .line 777
    const-string v5, "+hideContent"

    .line 778
    .line 779
    goto :goto_c

    .line 780
    :cond_16
    move-object v5, v1

    .line 781
    :goto_c
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 782
    .line 783
    .line 784
    if-eqz v9, :cond_17

    .line 785
    .line 786
    const-string v1, "+hideContentPackageName"

    .line 787
    .line 788
    :cond_17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 789
    .line 790
    .line 791
    const-string/jumbo v1, "notiVisibility: "

    .line 792
    .line 793
    .line 794
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 795
    .line 796
    .line 797
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 798
    .line 799
    .line 800
    goto :goto_d

    .line 801
    :cond_18
    if-eqz v1, :cond_19

    .line 802
    .line 803
    invoke-virtual {v0, v14}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    const/4 v5, 0x0

    .line 808
    filled-new-array {v1, v5}, [Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    iput-object v1, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    .line 813
    .line 814
    :cond_19
    :goto_d
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    if-eqz v1, :cond_1a

    .line 819
    .line 820
    iput-object v1, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 821
    .line 822
    :cond_1a
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v1

    .line 826
    iput-object v1, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mNotificationKey:Ljava/lang/String;

    .line 827
    .line 828
    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 829
    .line 830
    const/4 v5, 0x0

    .line 831
    invoke-virtual {v1, v5}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 832
    .line 833
    .line 834
    move-result-object v1

    .line 835
    invoke-virtual {v1, v8}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->startEdgeEffect(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 836
    .line 837
    .line 838
    new-instance v1, Ljava/lang/StringBuilder;

    .line 839
    .line 840
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 844
    .line 845
    .line 846
    move-result-object v5

    .line 847
    iget-object v6, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 848
    .line 849
    iget-object v6, v6, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 850
    .line 851
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 852
    .line 853
    .line 854
    move-result-object v6

    .line 855
    invoke-virtual {v5, v6}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v5

    .line 859
    invoke-static {v8, v5}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->effectInfoToString(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v5

    .line 863
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    .line 872
    .line 873
    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 874
    .line 875
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    .line 876
    .line 877
    .line 878
    move-result v3

    .line 879
    add-int/lit16 v3, v3, 0x7d0

    .line 880
    .line 881
    int-to-long v5, v3

    .line 882
    invoke-virtual {v1, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 883
    .line 884
    .line 885
    :goto_e
    const-string v1, "component"

    .line 886
    .line 887
    invoke-static {v12, v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v1

    .line 891
    iget-object v3, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 892
    .line 893
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    .line 894
    .line 895
    .line 896
    move-result v3

    .line 897
    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 898
    .line 899
    invoke-virtual {v5}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    .line 900
    .line 901
    .line 902
    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 903
    .line 904
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 905
    .line 906
    .line 907
    if-eqz v1, :cond_1b

    .line 908
    .line 909
    if-eqz v3, :cond_1b

    .line 910
    .line 911
    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 912
    .line 913
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 914
    .line 915
    .line 916
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    .line 922
    .line 923
    :goto_f
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/edge/SemEdgeManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mHandler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;

    .line 10
    .line 11
    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mEdgeLightingObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getAppIcon(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x402080

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->isSupportAppIcon(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 25
    .line 26
    iget-boolean v3, v3, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsColorThemeEnabled:Z

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-class v4, Landroid/content/pm/LauncherApps;

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/content/pm/LauncherApps;

    .line 39
    .line 40
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 41
    .line 42
    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_0

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherActivityInfo;->semGetBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    .line 88
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    :cond_2
    const/4 p0, 0x0

    .line 95
    :goto_0
    if-nez p0, :cond_3

    .line 96
    .line 97
    iget-object p0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    :cond_3
    return-object p0
.end method

.method public final getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/16 v0, 0x2200

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    :cond_0
    return-object p1
.end method

.method public final isSupportAppIcon(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const v2, 0x402080

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "android"

    .line 16
    .line 17
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const-string v2, "com.android.systemui"

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iget p1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 38
    .line 39
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mShouldShowAppIcon:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    move v0, p0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    return v0
.end method

.method public final notifyEdgeLightingPackageList(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v2, v1, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 16
    .line 17
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    const-string v1, "EdgeLightingScheduler"

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v3, "notifyEdgeLightingPackageList :"

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, ", empty = "

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/samsung/android/edge/SemEdgeManager;->updateEdgeLightingPackageList(Ljava/util/ArrayList;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final notifyScreenOff()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mIsScreenOnReceived:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isUIControllerExist()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->stopEdgeEffect()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final notifyScreenOn()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mIsScreenOnReceived:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mScreenStatusChecker:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "EdgeLightingScreenStatus"

    .line 9
    .line 10
    const-string/jumbo v2, "reset"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 20
    .line 21
    iget v1, v1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-ne v1, v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v2

    .line 28
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const-string p0, "EdgeLightingScheduler"

    .line 31
    .line 32
    const-string/jumbo v0, "notifyScreenOn: isUpsideDown is true"

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    .line 40
    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-wide/16 v1, 0xfa0

    .line 66
    .line 67
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method
