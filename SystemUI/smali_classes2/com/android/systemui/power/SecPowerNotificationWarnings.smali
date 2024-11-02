.class public final Lcom/android/systemui/power/SecPowerNotificationWarnings;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public mAutomaticTestMode:Z

.field public mBatteryHealth:I

.field public mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mBatteryHealthInterruptionTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$4;

.field public mBatteryLevel:I

.field public final mBatterySettings:Landroid/content/Intent;

.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBatteryStatus:I

.field public mBucket:I

.field public mChargingTime:J

.field public mChargingType:I

.field public mConnectedChargerChangedToast:Landroid/widget/Toast;

.field public final mContext:Landroid/content/Context;

.field public mCurrentBatteryMode:I

.field public mDoNotShowChargingNotice:Z

.field public mFTAMode:Z

.field public final mFoldStateListener:Lcom/android/systemui/power/SecPowerNotificationWarnings$2;

.field public mHVchargerEnablePopupDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mHandler:Landroid/os/Handler;

.field public mHandlerWrapper:Lcom/android/systemui/power/HandlerWrapper;

.field public mIncompatibleChargerDialog:Landroidx/appcompat/app/AlertDialog;

.field public mIsHiccupState:Z

.field public mIsInCall:Z

.field public mIsMaximumProtectionEnabled:Z

.field public mIsTemperatureHiccupState:Z

.field public mIsUnintentionalPopupShowing:Z

.field public mIsWaterDetected:Z

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field public mOldBatteryLevel:I

.field public mOldChargingType:I

.field public mOptimizationChargingFinishTime:Ljava/lang/String;

.field public mOverheatNoticeDialog:Landroidx/appcompat/app/AlertDialog;

.field public mOverheatShutdownHappenedDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mOverheatShutdownTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$9;

.field public mPlaySound:Z

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mSafeModeDialog:Landroidx/appcompat/app/AlertDialog;

.field public mShowChargingNotice:Z

.field public mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mSmartManagerBatterySettings:Landroid/content/Intent;

.field public mSuperFastCharger:I

.field public mSwellingDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mTemperatureLimitAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$5;

.field public mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

.field public mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

.field public mUsbDamageProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mUsbDamageProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$21;

.field public mUsbDamageProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mVibrator:Landroid/os/Vibrator;

.field public mWarning:Z

.field public mWarningTriggerTimeMs:J

.field public mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mWaterProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$18;

.field public mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWillOverheatShutdownWarningDialog:Landroidx/appcompat/app/AlertDialog;

.field public mWindowManager:Landroid/view/WindowManager;

.field public mWirelessFodAlertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-string v1, "android.settings.BATTERY_SAVER_SETTINGS"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/high16 v1, 0x1c800000

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {v3, p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;I)V

    .line 20
    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsInCall:Z

    .line 23
    .line 24
    new-instance v2, Landroid/content/Intent;

    .line 25
    .line 26
    const-string v4, "com.samsung.android.sm.ACTION_BATTERY"

    .line 27
    .line 28
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iput-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatterySettings:Landroid/content/Intent;

    .line 36
    .line 37
    new-instance v2, Landroid/content/Intent;

    .line 38
    .line 39
    const-string v4, "com.samsung.android.sm.ACTION_POWER_MODE_SETTINGS"

    .line 40
    .line 41
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSmartManagerBatterySettings:Landroid/content/Intent;

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mShowChargingNotice:Z

    .line 51
    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsMaximumProtectionEnabled:Z

    .line 53
    .line 54
    iput v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSuperFastCharger:I

    .line 55
    .line 56
    iput v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    .line 57
    .line 58
    iput v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    .line 59
    .line 60
    iput v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldBatteryLevel:I

    .line 61
    .line 62
    const-wide/16 v1, 0x0

    .line 63
    .line 64
    iput-wide v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    .line 65
    .line 66
    iput v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryLevel:I

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    iput v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryStatus:I

    .line 70
    .line 71
    iput v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealth:I

    .line 72
    .line 73
    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsWaterDetected:Z

    .line 74
    .line 75
    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsHiccupState:Z

    .line 76
    .line 77
    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsTemperatureHiccupState:Z

    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsUnintentionalPopupShowing:Z

    .line 80
    .line 81
    const/4 v9, 0x0

    .line 82
    iput-object v9, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mFoldStateListener:Lcom/android/systemui/power/SecPowerNotificationWarnings$2;

    .line 83
    .line 84
    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mFTAMode:Z

    .line 85
    .line 86
    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mAutomaticTestMode:Z

    .line 87
    .line 88
    iput-object v9, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandlerWrapper:Lcom/android/systemui/power/HandlerWrapper;

    .line 89
    .line 90
    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mDoNotShowChargingNotice:Z

    .line 91
    .line 92
    new-instance v2, Lcom/android/systemui/power/SecPowerNotificationWarnings$4;

    .line 93
    .line 94
    invoke-direct {v2, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$4;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 95
    .line 96
    .line 97
    iput-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$4;

    .line 98
    .line 99
    new-instance v2, Lcom/android/systemui/power/SecPowerNotificationWarnings$5;

    .line 100
    .line 101
    invoke-direct {v2, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$5;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 102
    .line 103
    .line 104
    iput-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mTemperatureLimitAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$5;

    .line 105
    .line 106
    new-instance v2, Lcom/android/systemui/power/SecPowerNotificationWarnings$9;

    .line 107
    .line 108
    invoke-direct {v2, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$9;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 109
    .line 110
    .line 111
    iput-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$9;

    .line 112
    .line 113
    new-instance v2, Lcom/android/systemui/power/SecPowerNotificationWarnings$18;

    .line 114
    .line 115
    invoke-direct {v2, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$18;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 116
    .line 117
    .line 118
    iput-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$18;

    .line 119
    .line 120
    new-instance v2, Lcom/android/systemui/power/SecPowerNotificationWarnings$21;

    .line 121
    .line 122
    invoke-direct {v2, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$21;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 123
    .line 124
    .line 125
    iput-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$21;

    .line 126
    .line 127
    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    new-instance v10, Landroid/os/Handler;

    .line 130
    .line 131
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-direct {v10, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    .line 137
    .line 138
    iput-object v10, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 139
    .line 140
    const-class v2, Landroid/app/NotificationManager;

    .line 141
    .line 142
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    check-cast v2, Landroid/app/NotificationManager;

    .line 147
    .line 148
    iput-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mNotificationManager:Landroid/app/NotificationManager;

    .line 149
    .line 150
    const-string/jumbo v2, "vibrator"

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Landroid/os/Vibrator;

    .line 158
    .line 159
    iput-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    .line 160
    .line 161
    const-string v2, "audio"

    .line 162
    .line 163
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Landroid/media/AudioManager;

    .line 168
    .line 169
    iput-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    .line 170
    .line 171
    const-string/jumbo v2, "power"

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Landroid/os/PowerManager;

    .line 179
    .line 180
    iput-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPowerManager:Landroid/os/PowerManager;

    .line 181
    .line 182
    new-instance v2, Lcom/android/systemui/media/NotificationPlayer;

    .line 183
    .line 184
    const-string v4, "SecPowerUI.Notification"

    .line 185
    .line 186
    invoke-direct {v2, v4}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iput-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 190
    .line 191
    new-instance v5, Landroid/content/IntentFilter;

    .line 192
    .line 193
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v2, "PNW.batteryInfo"

    .line 197
    .line 198
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v2, "PNW.powerMode"

    .line 202
    .line 203
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const-string v2, "PNW.abnormalPadNoThanks"

    .line 207
    .line 208
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-string v2, "PNW.dismissedWarning"

    .line 212
    .line 213
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string v2, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    .line 217
    .line 218
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 222
    .line 223
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string v2, "com.samsung.systemui.power.action.ACTION_BATTERY_OVER_HEAT"

    .line 227
    .line 228
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    const-string v2, "com.samsung.systemui.power.action.ACTION_BATTERY_SAFE_MODE"

    .line 232
    .line 233
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-string v2, "com.sec.factory.app.factorytest.FTA_ON"

    .line 237
    .line 238
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string v2, "com.sec.factory.app.factorytest.FTA_OFF"

    .line 242
    .line 243
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const-string v2, "com.samsung.systemui.power.action.ACTION_AUTOMATIC_TEST_MODE_ON"

    .line 247
    .line 248
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const-string v2, "com.samsung.systemui.power.action.ACTION_AUTOMATIC_TEST_MODE_OFF"

    .line 252
    .line 253
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    sget-boolean v2, Lcom/android/systemui/PowerUiRune;->POLICY_CHARGING_NOTIFICATION:Z

    .line 257
    .line 258
    if-eqz v2, :cond_0

    .line 259
    .line 260
    const-string v2, "com.samsung.android.systemui.action.DELETED_CHARGING_NOTI"

    .line 261
    .line 262
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :cond_0
    sget-boolean v2, Lcom/android/systemui/PowerUiRune;->ADAPTIVE_PROTECTION_NOTIFICATION:Z

    .line 266
    .line 267
    if-eqz v2, :cond_1

    .line 268
    .line 269
    const-string v2, "com.samsung.android.sm.ACTION_OPTIMIZED_CHARGING_NOTI_DISMISSED"

    .line 270
    .line 271
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :cond_1
    iget-object v2, v3, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 275
    .line 276
    iget-object v4, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 277
    .line 278
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 279
    .line 280
    const-string v7, "android.permission.DEVICE_POWER"

    .line 281
    .line 282
    iget-object v8, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 283
    .line 284
    const/4 v11, 0x2

    .line 285
    move-object v2, v4

    .line 286
    move-object v4, v6

    .line 287
    move-object v6, v7

    .line 288
    move-object v7, v8

    .line 289
    move v8, v11

    .line 290
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 291
    .line 292
    .line 293
    new-instance v2, Lcom/android/systemui/power/SecPowerNotificationWarnings$1;

    .line 294
    .line 295
    invoke-direct {v2, p0, v10}, Lcom/android/systemui/power/SecPowerNotificationWarnings$1;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;Landroid/os/Handler;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    const-string v4, "low_power"

    .line 303
    .line 304
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-virtual {v3, v5, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    if-eqz p1, :cond_2

    .line 324
    .line 325
    const/4 p1, 0x2

    .line 326
    iput p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    .line 327
    .line 328
    goto :goto_0

    .line 329
    :cond_2
    if-eqz v2, :cond_3

    .line 330
    .line 331
    iput v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    .line 332
    .line 333
    goto :goto_0

    .line 334
    :cond_3
    iput v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    .line 335
    .line 336
    :goto_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 337
    .line 338
    if-eqz p1, :cond_4

    .line 339
    .line 340
    new-instance p1, Lcom/android/systemui/power/SecPowerNotificationWarnings$2;

    .line 341
    .line 342
    invoke-direct {p1, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$2;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 343
    .line 344
    .line 345
    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mFoldStateListener:Lcom/android/systemui/power/SecPowerNotificationWarnings$2;

    .line 346
    .line 347
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    invoke-virtual {p0, p1, v9}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    .line 352
    .line 353
    .line 354
    :cond_4
    return-void
.end method


# virtual methods
.method public final cancelNotification(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/systemui/power/notification/PowerUiNotificationFactory;->getNotification(ILandroid/content/Context;)Lcom/android/systemui/power/notification/PowerUiNotification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "Illegal notification type : "

    .line 10
    .line 11
    const-string v0, "SecPowerUI.Notification"

    .line 12
    .line 13
    invoke-static {p0, p1, v0}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mNotificationManager:Landroid/app/NotificationManager;

    .line 18
    .line 19
    iput-object p1, v0, Lcom/android/systemui/power/notification/PowerUiNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getSecBatteryStatsSnapshot()Lcom/android/systemui/power/SecBatteryStatsSnapshot;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Lcom/android/systemui/power/notification/PowerUiNotification;->setInformation(Lcom/android/systemui/power/SecBatteryStatsSnapshot;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/systemui/power/notification/PowerUiNotification;->dismissNotification()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final dismissLowBatteryWarning()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "dismissing low battery warning: level="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryLevel:I

    .line 9
    .line 10
    const-string v2, "SecPowerUI.Notification"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v0, "dismissing low battery notification"

    .line 20
    .line 21
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->restoreScreenTimeOutIfNeeded()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final dismissSlowByChargerConnectionInfoPopUp()V
    .locals 2

    .line 1
    const-string v0, "SecPowerUI.Notification"

    .line 2
    .line 3
    const-string v1, "dismissSlowByChargerConnectionInfoPopUp()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final declared-synchronized dismissUnintentionalLcdOnWindow()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsUnintentionalPopupShowing:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    const-string v0, "SecPowerUI.Notification"

    .line 7
    .line 8
    const-string v1, "dismissUnintentionalLcdOnWindow"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWindowManager:Landroid/view/WindowManager;

    .line 19
    .line 20
    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 24
    .line 25
    const/16 v2, 0x8

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 31
    .line 32
    iget-object v2, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTouchListener:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 33
    .line 34
    if-ne v2, p0, :cond_0

    .line 35
    .line 36
    iput-object v1, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTouchListener:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 37
    .line 38
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsUnintentionalPopupShowing:Z

    .line 42
    .line 43
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWindowManager:Landroid/view/WindowManager;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 46
    .line 47
    sget-object v0, Lcom/android/systemui/LsRune;->VALUE_CONFIG_CARRIER_TEXT_POLICY:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    :cond_2
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    monitor-exit p0

    .line 53
    throw v0
.end method

.method public final getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    move-object v2, v0

    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    new-instance v2, Lcom/android/systemui/power/dialog/HvChargerEnableDialog;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Lcom/android/systemui/power/dialog/HvChargerEnableDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_1
    new-instance v2, Lcom/android/systemui/power/dialog/UsbDamageProtectionDialog;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Lcom/android/systemui/power/dialog/UsbDamageProtectionDialog;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_2
    new-instance v2, Lcom/android/systemui/power/dialog/WaterProtectionDialog;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Lcom/android/systemui/power/dialog/WaterProtectionDialog;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_3
    new-instance v2, Lcom/android/systemui/power/dialog/WirelessFodDialog;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Lcom/android/systemui/power/dialog/WirelessFodDialog;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_4
    new-instance v2, Lcom/android/systemui/power/dialog/SafeModeDialog;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Lcom/android/systemui/power/dialog/SafeModeDialog;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_5
    new-instance v2, Lcom/android/systemui/power/dialog/HappenedOverheatShutdownDialog;

    .line 40
    .line 41
    invoke-direct {v2, v1}, Lcom/android/systemui/power/dialog/HappenedOverheatShutdownDialog;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_6
    new-instance v2, Lcom/android/systemui/power/dialog/WillOverheatShutdownDialog;

    .line 46
    .line 47
    invoke-direct {v2, v1}, Lcom/android/systemui/power/dialog/WillOverheatShutdownDialog;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_7
    new-instance v2, Lcom/android/systemui/power/dialog/OverheatDialog;

    .line 52
    .line 53
    invoke-direct {v2, v1}, Lcom/android/systemui/power/dialog/OverheatDialog;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_8
    new-instance v2, Lcom/android/systemui/power/dialog/BatteryHealthInterruptionDialog;

    .line 58
    .line 59
    invoke-direct {v2, v1}, Lcom/android/systemui/power/dialog/BatteryHealthInterruptionDialog;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_9
    new-instance v2, Lcom/android/systemui/power/dialog/PdChargerAlertDialog;

    .line 64
    .line 65
    invoke-direct {v2, v1}, Lcom/android/systemui/power/dialog/PdChargerAlertDialog;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_a
    new-instance v2, Lcom/android/systemui/power/dialog/IncompatibleChargerDialog;

    .line 70
    .line 71
    invoke-direct {v2, v1}, Lcom/android/systemui/power/dialog/IncompatibleChargerDialog;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :pswitch_b
    new-instance v2, Lcom/android/systemui/power/dialog/BatterySwellingLowTempDialog;

    .line 76
    .line 77
    invoke-direct {v2, v1}, Lcom/android/systemui/power/dialog/BatterySwellingLowTempDialog;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :pswitch_c
    new-instance v2, Lcom/android/systemui/power/dialog/IncompleteChargerDialog;

    .line 82
    .line 83
    invoke-direct {v2, v1}, Lcom/android/systemui/power/dialog/IncompleteChargerDialog;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    if-nez v2, :cond_0

    .line 87
    .line 88
    const-string p0, "Illegal dialog type : "

    .line 89
    .line 90
    const-string v1, "SecPowerUI.Notification"

    .line 91
    .line 92
    invoke-static {p0, p1, v1}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getSecBatteryStatsSnapshot()Lcom/android/systemui/power/SecBatteryStatsSnapshot;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v2, p0}, Lcom/android/systemui/power/dialog/PowerUiDialog;->setInformation(Lcom/android/systemui/power/SecBatteryStatsSnapshot;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/android/systemui/power/dialog/PowerUiDialog;->checkCondition()Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_1

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/android/systemui/power/dialog/PowerUiDialog;->getDialog()Landroidx/appcompat/app/AlertDialog;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :cond_1
    return-object v0

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSecBatteryStatsSnapshot()Lcom/android/systemui/power/SecBatteryStatsSnapshot;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/power/SecBatteryStatsSnapshot;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/power/SecBatteryStatsSnapshot;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealth:I

    .line 7
    .line 8
    iput v1, v0, Lcom/android/systemui/power/SecBatteryStatsSnapshot;->batteryHealth:I

    .line 9
    .line 10
    iget v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryLevel:I

    .line 11
    .line 12
    iput v1, v0, Lcom/android/systemui/power/SecBatteryStatsSnapshot;->batteryLevel:I

    .line 13
    .line 14
    iget-wide v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    .line 15
    .line 16
    iput-wide v1, v0, Lcom/android/systemui/power/SecBatteryStatsSnapshot;->chargingTime:J

    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    .line 19
    .line 20
    iput v1, v0, Lcom/android/systemui/power/SecBatteryStatsSnapshot;->currentBatteryMode:I

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsHiccupState:Z

    .line 23
    .line 24
    iput-boolean v1, v0, Lcom/android/systemui/power/SecBatteryStatsSnapshot;->isHiccupState:Z

    .line 25
    .line 26
    iget v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    .line 27
    .line 28
    iput v1, v0, Lcom/android/systemui/power/SecBatteryStatsSnapshot;->chargingType:I

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mAutomaticTestMode:Z

    .line 31
    .line 32
    iput-boolean v1, v0, Lcom/android/systemui/power/SecBatteryStatsSnapshot;->automaticTestMode:Z

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOptimizationChargingFinishTime:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p0, v0, Lcom/android/systemui/power/SecBatteryStatsSnapshot;->optimizationChargingFinishTime:Ljava/lang/String;

    .line 37
    .line 38
    const-string p0, "SecPowerUI.Notification"

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/systemui/power/SecBatteryStatsSnapshot;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public final playPowerSound(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/systemui/power/sound/PowerUiSoundFactory;->getPowerUiSound(ILandroid/content/Context;)Lcom/android/systemui/power/sound/PowerUiSound;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 8
    .line 9
    iput-object v0, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    .line 12
    .line 13
    iput-object v0, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mVibrator:Landroid/os/Vibrator;

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsInCall:Z

    .line 16
    .line 17
    iput-boolean v0, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mIsInCall:Z

    .line 18
    .line 19
    iget v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSuperFastCharger:I

    .line 20
    .line 21
    iput v0, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mChargingType:I

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    .line 24
    .line 25
    iput-object p0, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mAudioManager:Landroid/media/AudioManager;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/systemui/power/sound/PowerUiSound;->playSoundAndVibration()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final restoreScreenTimeOutIfNeeded()V
    .locals 8

    .line 1
    const-string v0, "2.restoreScreenTimeOut - saved value : screenTimeOut="

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string/jumbo v1, "powerui_prefs"

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    const-string v3, "ScreenTimeOut"

    .line 16
    .line 17
    const-string v4, ":"

    .line 18
    .line 19
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const-string v6, "1. restoreScreenTimeOut - saved_value : "

    .line 24
    .line 25
    const-string v7, "SecPowerUI.Notification"

    .line 26
    .line 27
    invoke-static {v6, v5, v7}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    array-length v5, v4

    .line 35
    const/4 v6, 0x2

    .line 36
    if-ge v5, v6, :cond_0

    .line 37
    .line 38
    const-string p0, "no saved value, so we do nothing !!"

    .line 39
    .line 40
    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    aget-object v2, v4, v2

    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v5, 0x1

    .line 51
    aget-object v4, v4, v5

    .line 52
    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, " userId="

    .line 66
    .line 67
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    const/16 v0, 0x7530

    .line 81
    .line 82
    if-le v2, v0, :cond_1

    .line 83
    .line 84
    const-string v0, "3.restoreScreenTimeOut - restore user value !!"

    .line 85
    .line 86
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const-string/jumbo v0, "screen_off_timeout"

    .line 94
    .line 95
    .line 96
    invoke-static {p0, v0, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception p0

    .line 101
    const-string/jumbo v0, "restoreScreenTimeOutIfNeeded "

    .line 102
    .line 103
    .line 104
    invoke-static {v7, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .line 106
    .line 107
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-interface {p0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    .line 117
    .line 118
    :cond_2
    return-void
.end method

.method public final showAdaptiveProtectionNotification(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    const-string v2, "HH:mm"

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    const-string v0, "PowerUi.PowerUtils"

    .line 39
    .line 40
    const-string v1, "ParseException"

    .line 41
    .line 42
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    const-string p1, ""

    .line 46
    .line 47
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOptimizationChargingFinishTime:Ljava/lang/String;

    .line 48
    .line 49
    const/16 p1, 0xa

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final showBatteryHealthInterruptionPopUp()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealth:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$4;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mTemperatureLimitAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$5;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    .line 20
    .line 21
    const/4 v4, 0x6

    .line 22
    if-eqz v3, :cond_5

    .line 23
    .line 24
    const-string v3, "SecPowerUI.Notification"

    .line 25
    .line 26
    const-string v5, "mBatteryHealthInterruptionDialog is not null"

    .line 27
    .line 28
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget v5, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealth:I

    .line 32
    .line 33
    if-ne v5, v4, :cond_1

    .line 34
    .line 35
    const v4, 0x7f1301c0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-ne v5, v2, :cond_3

    .line 40
    .line 41
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    const v4, 0x7f1301be

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const v4, 0x7f1301bd

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v4, 0x0

    .line 56
    :goto_0
    if-nez v4, :cond_4

    .line 57
    .line 58
    const-string/jumbo p0, "status is NotCharging but health is wrong value"

    .line 59
    .line 60
    .line 61
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    .line 66
    .line 67
    iget-object v5, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iget-object v3, v3, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 74
    .line 75
    iput-object v4, v3, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 76
    .line 77
    iget-object v3, v3, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v3, :cond_7

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iput-object v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    .line 90
    .line 91
    if-nez v3, :cond_6

    .line 92
    .line 93
    return-void

    .line 94
    :cond_6
    new-instance v4, Lcom/android/systemui/power/SecPowerNotificationWarnings$3;

    .line 95
    .line 96
    invoke-direct {v4, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$3;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    .line 103
    .line 104
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 105
    .line 106
    .line 107
    :cond_7
    :goto_1
    iget v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealth:I

    .line 108
    .line 109
    if-ne v3, v2, :cond_8

    .line 110
    .line 111
    const/4 v2, 0x5

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->playPowerSound(I)V

    .line 113
    .line 114
    .line 115
    const-wide/16 v2, 0x640

    .line 116
    .line 117
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_8
    const/4 v0, 0x4

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->playPowerSound(I)V

    .line 123
    .line 124
    .line 125
    :goto_2
    return-void
.end method

.method public final showBatteryHealthInterruptionWarning()V
    .locals 5

    .line 1
    const-string v0, "SecPowerUI.Notification"

    .line 2
    .line 3
    const-string/jumbo v1, "showBatteryHealthInterruptionWarning()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "SHOULD_SHUT_DOWN"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v2, v1, :cond_0

    .line 24
    .line 25
    move v3, v2

    .line 26
    :cond_0
    if-eqz v3, :cond_1

    .line 27
    .line 28
    const-string p0, "don\'t show Battery health interruption warning while Shutdown is ON"

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealth:I

    .line 35
    .line 36
    const/4 v2, 0x5

    .line 37
    const/16 v3, 0x8

    .line 38
    .line 39
    const/4 v4, 0x6

    .line 40
    if-eq v1, v3, :cond_4

    .line 41
    .line 42
    if-ne v1, v4, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$4;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mTemperatureLimitAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$5;

    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "dismissBatteryHealthInterruptionPopUp()"

    .line 62
    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    :goto_0
    if-ne v1, v4, :cond_5

    .line 78
    .line 79
    const-string v1, "dismissBatteryHealthInterruptionNotification()"

    .line 80
    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 85
    .line 86
    .line 87
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showBatteryHealthInterruptionPopUp()V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-void
.end method

.method public final showChargingNotice()V
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    .line 2
    .line 3
    iget-boolean v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsMaximumProtectionEnabled:Z

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v3}, Lcom/android/systemui/power/PowerUtils;->isMaximumProtectionEnabled(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    iput-boolean v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsMaximumProtectionEnabled:Z

    .line 12
    .line 13
    sget-boolean v4, Lcom/android/systemui/PowerUiRune;->BATTERY_CHARGING_ESTIMATE_TIME:Z

    .line 14
    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    if-eqz v4, :cond_2

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    const-string v4, "batterystats"

    .line 24
    .line 25
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v4}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iput-object v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 34
    .line 35
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    :try_start_0
    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    .line 40
    .line 41
    .line 42
    move-result-wide v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v4

    .line 45
    const-string v7, "PowerUi.PowerUtils"

    .line 46
    .line 47
    const-string v8, "Error calling IBatteryStats: "

    .line 48
    .line 49
    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    iput-wide v5, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iput-wide v5, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    .line 56
    .line 57
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string/jumbo v5, "showChargingNotice oldChargingType : "

    .line 60
    .line 61
    .line 62
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget v5, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v5, " / currentChargingType : "

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v5, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v5, ", oldChargingTime : "

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v5, " / mChargingTime : "

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-wide v5, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    .line 94
    .line 95
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    const-string v5, "SecPowerUI.Notification"

    .line 103
    .line 104
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    iget v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    .line 108
    .line 109
    const/16 v6, 0x9

    .line 110
    .line 111
    if-ne v4, v6, :cond_3

    .line 112
    .line 113
    iget v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    .line 114
    .line 115
    if-eq v4, v6, :cond_3

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissSlowByChargerConnectionInfoPopUp()V

    .line 118
    .line 119
    .line 120
    :cond_3
    sget-boolean v4, Lcom/android/systemui/PowerUiRune;->SPECIFIC_POWER_REQUEST_BY_VZW:Z

    .line 121
    .line 122
    const/16 v7, 0x8

    .line 123
    .line 124
    if-nez v4, :cond_4

    .line 125
    .line 126
    iget v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    .line 127
    .line 128
    if-ne v4, v7, :cond_4

    .line 129
    .line 130
    iget v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    .line 131
    .line 132
    if-eq v4, v7, :cond_4

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissSlowByChargerConnectionInfoPopUp()V

    .line 135
    .line 136
    .line 137
    :cond_4
    sget-boolean v4, Lcom/android/systemui/PowerUiRune;->POLICY_CHARGING_NOTIFICATION:Z

    .line 138
    .line 139
    const/4 v8, 0x0

    .line 140
    if-eqz v4, :cond_6

    .line 141
    .line 142
    iget-boolean v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mDoNotShowChargingNotice:Z

    .line 143
    .line 144
    if-eqz v4, :cond_5

    .line 145
    .line 146
    iget-boolean v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsMaximumProtectionEnabled:Z

    .line 147
    .line 148
    if-ne v2, v4, :cond_5

    .line 149
    .line 150
    iget v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    .line 151
    .line 152
    if-eq v4, v7, :cond_5

    .line 153
    .line 154
    if-eq v4, v6, :cond_5

    .line 155
    .line 156
    const-string/jumbo p0, "showChargingNotice User swipe, so return!"

    .line 157
    .line 158
    .line 159
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_5
    iput-boolean v8, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mDoNotShowChargingNotice:Z

    .line 164
    .line 165
    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mShowChargingNotice:Z

    .line 166
    .line 167
    if-eqz v4, :cond_7

    .line 168
    .line 169
    iget-wide v9, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    .line 170
    .line 171
    cmp-long v0, v0, v9

    .line 172
    .line 173
    if-nez v0, :cond_7

    .line 174
    .line 175
    iget v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldBatteryLevel:I

    .line 176
    .line 177
    iget v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryLevel:I

    .line 178
    .line 179
    if-ne v0, v1, :cond_7

    .line 180
    .line 181
    iget v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    .line 182
    .line 183
    iget v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    .line 184
    .line 185
    if-ne v0, v1, :cond_7

    .line 186
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsMaximumProtectionEnabled:Z

    .line 188
    .line 189
    if-ne v2, v0, :cond_7

    .line 190
    .line 191
    const-string/jumbo p0, "showChargingNotice There is no change about charging status, so return!"

    .line 192
    .line 193
    .line 194
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :cond_7
    iget v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryLevel:I

    .line 199
    .line 200
    iput v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldBatteryLevel:I

    .line 201
    .line 202
    iget v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    .line 203
    .line 204
    const-string/jumbo v1, "showChargingNotification()"

    .line 205
    .line 206
    .line 207
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    const/4 v1, 0x2

    .line 211
    invoke-virtual {p0, v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    .line 212
    .line 213
    .line 214
    iget v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    .line 215
    .line 216
    if-ne v2, v7, :cond_8

    .line 217
    .line 218
    if-eq v0, v7, :cond_a

    .line 219
    .line 220
    const-string v0, "Show slow charging toast"

    .line 221
    .line 222
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    const v0, 0x7f1301ef

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-static {v3, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->turnOnScreen()V

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_8
    if-ne v2, v6, :cond_a

    .line 244
    .line 245
    if-eq v0, v6, :cond_a

    .line 246
    .line 247
    const-string/jumbo v0, "showIncompleteChargerConnectionInfoPopUp()"

    .line 248
    .line 249
    .line 250
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    .line 254
    .line 255
    if-nez v0, :cond_a

    .line 256
    .line 257
    invoke-virtual {p0, v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    .line 262
    .line 263
    if-nez v0, :cond_9

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_9
    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda0;

    .line 267
    .line 268
    invoke-direct {v1, p0, v8}, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 272
    .line 273
    .line 274
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    .line 275
    .line 276
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->turnOnScreen()V

    .line 280
    .line 281
    .line 282
    :cond_a
    :goto_2
    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mShowChargingNotice:Z

    .line 284
    .line 285
    return-void
.end method

.method public final showChargingTypeSwitchedNotice(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "SecPowerUI.Notification"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "GATE tool is running so don\'t show Charging type switched notice"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const p1, 0x7f1301ba

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const p1, 0x7f1301fc

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    const-string/jumbo v2, "showChargingTypeSwitchedToast()"

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    const-string v1, ""

    .line 46
    .line 47
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    .line 52
    .line 53
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    .line 61
    .line 62
    invoke-virtual {p1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 76
    .line 77
    .line 78
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mDoNotShowChargingNotice:Z

    .line 79
    .line 80
    return-void
.end method

.method public final showIncompatibleChargerNotice()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SHOULD_SHUT_DOWN"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v1, v0, :cond_0

    .line 16
    .line 17
    move v2, v1

    .line 18
    :cond_0
    const-string v0, "SecPowerUI.Notification"

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const-string p0, "don\'t show Incompatible charging warning while Shutdown is ON"

    .line 23
    .line 24
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mFTAMode:Z

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    const-string p0, "FTA Mode is ON so don\'t show Incompatible charging warning"

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    const-string/jumbo v1, "showIncompatibleChargerWarning()"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x3

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v1, "showIncompatibleChargerNotification()"

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIncompatibleChargerDialog:Landroidx/appcompat/app/AlertDialog;

    .line 58
    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    const/4 v0, 0x4

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIncompatibleChargerDialog:Landroidx/appcompat/app/AlertDialog;

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$13;

    .line 72
    .line 73
    invoke-direct {v1, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$13;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIncompatibleChargerDialog:Landroidx/appcompat/app/AlertDialog;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_0
    return-void
.end method

.method public final showLowBatteryWarning(Z)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "show low battery warning: level="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryLevel:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " ["

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBucket:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "] playSound="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "SecPowerUI.Notification"

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "SHOULD_SHUT_DOWN"

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/4 v3, 0x1

    .line 55
    if-ne v3, v2, :cond_0

    .line 56
    .line 57
    move v2, v3

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v2, v4

    .line 60
    :goto_0
    if-eqz v2, :cond_1

    .line 61
    .line 62
    const-string p0, "Shutdown is ON"

    .line 63
    .line 64
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mFTAMode:Z

    .line 69
    .line 70
    const/4 v5, -0x2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    iget v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBucket:I

    .line 74
    .line 75
    if-eq v5, v2, :cond_2

    .line 76
    .line 77
    const-string p0, "FTA Mode is ON and Not critical Low battery"

    .line 78
    .line 79
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPlaySound:Z

    .line 84
    .line 85
    iput-boolean v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    .line 88
    .line 89
    .line 90
    iget p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBucket:I

    .line 91
    .line 92
    if-ne p0, v5, :cond_4

    .line 93
    .line 94
    const-string/jumbo p0, "powerui_prefs"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    const-string/jumbo v3, "screen_off_timeout"

    .line 110
    .line 111
    .line 112
    const/16 v4, 0x7530

    .line 113
    .line 114
    invoke-static {p1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-le p1, v4, :cond_3

    .line 119
    .line 120
    if-eqz p0, :cond_4

    .line 121
    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v6, ":"

    .line 131
    .line 132
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v7, "1.backupAndResetScreenTimeOut backup screen timeout : "

    .line 149
    .line 150
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p1, " value : "

    .line 157
    .line 158
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    const-string p1, "ScreenTimeOut"

    .line 176
    .line 177
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    .line 179
    .line 180
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    .line 182
    .line 183
    const-string p0, "2.backupAndResetScreenTimeOut set default timeout!!"

    .line 184
    .line 185
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-static {p0, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_3
    const-string/jumbo p0, "screen time out is shorter than default value, so we do nothing !!"

    .line 197
    .line 198
    .line 199
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    :cond_4
    :goto_1
    return-void
.end method

.method public final showNotification(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/systemui/power/notification/PowerUiNotificationFactory;->getNotification(ILandroid/content/Context;)Lcom/android/systemui/power/notification/PowerUiNotification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "Illegal notification type : "

    .line 10
    .line 11
    const-string v0, "SecPowerUI.Notification"

    .line 12
    .line 13
    invoke-static {p0, p1, v0}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mNotificationManager:Landroid/app/NotificationManager;

    .line 18
    .line 19
    iput-object p1, v0, Lcom/android/systemui/power/notification/PowerUiNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getSecBatteryStatsSnapshot()Lcom/android/systemui/power/SecBatteryStatsSnapshot;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Lcom/android/systemui/power/notification/PowerUiNotification;->setInformation(Lcom/android/systemui/power/SecBatteryStatsSnapshot;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/systemui/power/notification/PowerUiNotification;->showNotification()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final showSafeModeNotice()V
    .locals 2

    .line 1
    const-string v0, "SecPowerUI.Notification"

    .line 2
    .line 3
    const-string/jumbo v1, "showSafeModeNotice()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x7

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final showUsbDamageProtectionAlertDialog()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "show UsbDamageProtectionAlertDialog - mIsTemperatureHiccupState = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsTemperatureHiccupState:Z

    .line 10
    .line 11
    const-string v2, "SecPowerUI.Notification"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$21;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const-string v2, "SecPowerUI.Notification USB damage"

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPowerManager:Landroid/os/PowerManager;

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-virtual {v3, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iput-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    const/16 v2, 0xd

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iput-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 52
    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    new-instance v3, Lcom/android/systemui/power/SecPowerNotificationWarnings$19;

    .line 57
    .line 58
    invoke-direct {v3, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$19;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 70
    .line 71
    const/4 v3, -0x1

    .line 72
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-instance v3, Lcom/android/systemui/power/SecPowerNotificationWarnings$20;

    .line 77
    .line 78
    invoke-direct {v3, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$20;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->turnOnScreen()V

    .line 85
    .line 86
    .line 87
    :cond_2
    const/4 v2, 0x7

    .line 88
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->playPowerSound(I)V

    .line 89
    .line 90
    .line 91
    const-wide/16 v2, 0x640

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final showWaterProtectionAlertDialog(Z)V
    .locals 5

    .line 1
    const-string/jumbo v0, "show WaterProtectionAlertDialog - isWaterDetected = "

    .line 2
    .line 3
    .line 4
    const-string v1, " mIsWaterDetected = "

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsWaterDetected:Z

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " mIsHiccupState = "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsHiccupState:Z

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "mWaterProtectionAlertDialog : "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "SecPowerUI.Notification"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsWaterDetected:Z

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$18;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 54
    .line 55
    if-nez v3, :cond_0

    .line 56
    .line 57
    iget-object v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPowerManager:Landroid/os/PowerManager;

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    invoke-virtual {v3, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iput-object v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 65
    .line 66
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 70
    .line 71
    if-nez v3, :cond_5

    .line 72
    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    iget-boolean p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsHiccupState:Z

    .line 76
    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    const-string p1, "Wrong executed, so return"

    .line 80
    .line 81
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 93
    .line 94
    :cond_1
    return-void

    .line 95
    :cond_2
    const/16 p1, 0xc

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 102
    .line 103
    if-nez p1, :cond_3

    .line 104
    .line 105
    return-void

    .line 106
    :cond_3
    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$16;

    .line 107
    .line 108
    invoke-direct {v1, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$16;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 117
    .line 118
    .line 119
    iget-boolean p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsHiccupState:Z

    .line 120
    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 124
    .line 125
    const/4 v1, -0x1

    .line 126
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;

    .line 131
    .line 132
    invoke-direct {v1, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->turnOnScreen()V

    .line 139
    .line 140
    .line 141
    :cond_5
    const/4 p1, 0x6

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->playPowerSound(I)V

    .line 143
    .line 144
    .line 145
    const-wide/16 p0, 0x640

    .line 146
    .line 147
    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public final showWillOverheatShutdownWarning()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SHOULD_SHUT_DOWN"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v1, v0, :cond_0

    .line 16
    .line 17
    move v2, v1

    .line 18
    :cond_0
    const-string v0, "SecPowerUI.Notification"

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const-string p0, "don\'t show Overheat shutdown warning while Shutdown is ON"

    .line 23
    .line 24
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const-string/jumbo v1, "showWillOverheatShutdownWarning()"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const-string v1, "dismissOverheatShutdownHappenedPopUp()"

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroidx/appcompat/app/AlertDialog;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroidx/appcompat/app/AlertDialog;

    .line 47
    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    const/16 v0, 0x8

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroidx/appcompat/app/AlertDialog;

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$6;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$6;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroidx/appcompat/app/AlertDialog;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroidx/appcompat/app/AlertDialog;

    .line 75
    .line 76
    const/4 v1, -0x1

    .line 77
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$7;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$7;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->turnOnScreen()V

    .line 90
    .line 91
    .line 92
    :cond_4
    :goto_0
    return-void
.end method

.method public final stopPowerSound(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/systemui/power/sound/PowerUiSoundFactory;->getPowerUiSound(ILandroid/content/Context;)Lcom/android/systemui/power/sound/PowerUiSound;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 8
    .line 9
    iput-object v0, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    .line 12
    .line 13
    iput-object v1, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mVibrator:Landroid/os/Vibrator;

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsInCall:Z

    .line 16
    .line 17
    iput-boolean v1, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mIsInCall:Z

    .line 18
    .line 19
    iget v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSuperFastCharger:I

    .line 20
    .line 21
    iput v1, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mChargingType:I

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    .line 24
    .line 25
    iput-object p0, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mAudioManager:Landroid/media/AudioManager;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/systemui/media/NotificationPlayer;->stop()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p0, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mVibrator:Landroid/os/Vibrator;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final turnOnScreen()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPowerManager:Landroid/os/PowerManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "SecPowerUI.Notification"

    .line 6
    .line 7
    const-string/jumbo v0, "turnOnScreen : fail to get PowerManager reference"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, v1, v2, p0}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final updateNotification()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "updateNotification mWarning="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " mPlaySound="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPlaySound:Z

    .line 20
    .line 21
    const-string v2, "SecPowerUI.Notification"

    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    if-eqz v0, :cond_6

    .line 30
    .line 31
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 38
    .line 39
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHideNotificationMessages:I

    .line 47
    .line 48
    and-int/2addr v0, v1

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    move v0, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v0, v1

    .line 54
    :goto_0
    if-eqz v0, :cond_1

    .line 55
    .line 56
    move v0, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v0, v3

    .line 59
    :goto_1
    if-nez v0, :cond_2

    .line 60
    .line 61
    const-string p0, "We do not show warning notifications due to KNOX."

    .line 62
    .line 63
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {v1, v0}, Lcom/android/systemui/power/notification/PowerUiNotificationFactory;->getNotification(ILandroid/content/Context;)Lcom/android/systemui/power/notification/PowerUiNotification;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mNotificationManager:Landroid/app/NotificationManager;

    .line 74
    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    const-string v0, "Illegal notification type : 1"

    .line 78
    .line 79
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    iput-object v4, v0, Lcom/android/systemui/power/notification/PowerUiNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getSecBatteryStatsSnapshot()Lcom/android/systemui/power/SecBatteryStatsSnapshot;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v0, v2}, Lcom/android/systemui/power/notification/PowerUiNotification;->setInformation(Lcom/android/systemui/power/SecBatteryStatsSnapshot;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/android/systemui/power/notification/PowerUiNotification;->getBuilder()Landroid/app/Notification$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :goto_2
    if-nez v0, :cond_4

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    iget-wide v5, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarningTriggerTimeMs:J

    .line 101
    .line 102
    invoke-virtual {v0, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 103
    .line 104
    .line 105
    iget-boolean v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPlaySound:Z

    .line 106
    .line 107
    const/4 v5, 0x3

    .line 108
    if-eqz v2, :cond_5

    .line 109
    .line 110
    invoke-virtual {p0, v5}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->playPowerSound(I)V

    .line 111
    .line 112
    .line 113
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPlaySound:Z

    .line 114
    .line 115
    xor-int/2addr v1, v2

    .line 116
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 117
    .line 118
    .line 119
    iput-boolean v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPlaySound:Z

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 126
    .line 127
    const-string v1, "low_battery"

    .line 128
    .line 129
    const/4 v2, 0x2

    .line 130
    invoke-virtual {v4, v1, v2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 131
    .line 132
    .line 133
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 134
    .line 135
    invoke-virtual {v4, v1, v5, p0, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 140
    .line 141
    .line 142
    :goto_3
    return-void
.end method
