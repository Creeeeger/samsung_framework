.class public final Lcom/android/systemui/power/PowerUI;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;
.implements Lcom/android/systemui/power/WirelessMisalignListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAfterChargingNoticeTask:Lcom/android/systemui/power/PowerUI$11;

.field public mBatteryChargingType:I

.field public mBatteryCurrentEvent:I

.field public mBatteryHealth:I

.field public mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mBatteryHighVoltageCharger:Z

.field mBatteryLevel:I

.field public mBatteryMiscEvent:I

.field public mBatteryOnline:I

.field public mBatteryOverheatLevel:I

.field public mBatteryProtectionThreshold:I

.field public mBatterySlowCharger:Z

.field mBatteryStatus:I

.field public mBatterySwellingMode:I

.field public mBatteryWaterConnector:Z

.field public mBootCompleted:Z

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mCallState:I

.field public final mCentralSurfacesOptionalLazy:Ldagger/Lazy;

.field public mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

.field public mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

.field public mChargerAnimationWindowManager:Landroid/view/WindowManager;

.field public mChargingStartTime:Ljava/lang/String;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

.field public mDismissBatteryHealthInterruptionWarning:Z

.field public mEnableSkinTemperatureWarning:Z

.field public mEnableUsbTemperatureAlarm:Z

.field public final mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

.field public mFullyConnected:Z

.field public final mHandler:Landroid/os/Handler;

.field public mInvalidCharger:I

.field public mIsAfterAdaptiveProtection:Z

.field public mIsChangedStringAfterCharging:Z

.field public mIsChargerAnimationPlaying:Z

.field public mIsDeviceMoving:Z

.field public mIsHiccupState:Z

.field public mIsMotionDetectionSupported:Z

.field public mIsProtectingBatteryCutOffSettingEnabled:Z

.field public mIsRunningLowBatteryTask:Z

.field public mIsRunningStopPowerSoundTask:Z

.field public mIsSContextEnabled:Z

.field public mIsSContextListenerRegistered:Z

.field public mIsShutdownTaskDelayed:Z

.field public mIsWirelessMisalignTask:Z

.field mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public mLastShowWarningTask:Ljava/util/concurrent/Future;

.field public mLowBatteryAlertCloseLevel:I

.field public final mLowBatteryReminderLevels:[I

.field public final mLowBatteryWarningTask:Lcom/android/systemui/power/PowerUI$7;

.field mLowWarningShownThisChargeCycle:Z

.field public mLtcHighSocThreshold:I

.field public mLtcReleaseThreshold:I

.field public final mOverheatShutdownWarningTask:Lcom/android/systemui/power/PowerUI$9;

.field public mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

.field public final mPhoneStateListener:Lcom/android/systemui/power/PowerUI$10;

.field public mPlugType:I

.field public final mPluginAODManagerLazy:Ldagger/Lazy;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mProtectBatteryValue:I

.field final mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

.field public final mSContextListener:Lcom/android/systemui/power/PowerUI$13;

.field public mSContextManager:Landroid/hardware/scontext/SContextManager;

.field public mScreenOffTime:J

.field public final mScreenOnOffCallback:Lcom/android/systemui/power/PowerUI$8;

.field public final mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

.field mSevereWarningShownThisChargeCycle:Z

.field public mSkinThermalEventListener:Landroid/os/IThermalEventListener;

.field public mSleepChargingEvent:Ljava/lang/String;

.field public final mStopPowerSoundTask:Lcom/android/systemui/power/PowerUI$12;

.field public mSuperFastCharger:I

.field public mTemperatureHiccupState:Z

.field mThermalService:Landroid/os/IThermalService;

.field public mTurnOffPsmLevel:I

.field public mUsbThermalEventListener:Landroid/os/IThermalEventListener;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/systemui/power/PowerUI$1;

.field public final mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

.field public mWirelessFodState:Z

.field public final mWirelessMisalignTimeoutTask:Lcom/android/systemui/power/PowerUI$14;

.field public mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

.field public mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWirelessMisalignWindowLp:Landroid/view/WindowManager$LayoutParams;

.field public mWirelessMisalignWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static -$$Nest$mcheckAbnormalChargingPad(Lcom/android/systemui/power/PowerUI;I)V
    .locals 5

    .line 1
    const/high16 v0, 0x200000

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    const-string v3, "SecPowerUI.Notification"

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryMiscEvent:I

    .line 13
    .line 14
    and-int/2addr v4, v0

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string/jumbo p0, "showAbnormalPadNotification"

    .line 21
    .line 22
    .line 23
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryMiscEvent:I

    .line 33
    .line 34
    and-int/2addr p0, v0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const-string p0, "dismissAbnormalPadNotification"

    .line 41
    .line 42
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public static -$$Nest$mcheckBatteryHealthInterruptionStatus(ILcom/android/systemui/power/PowerUI;Z)V
    .locals 16

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 6
    .line 7
    const-string v4, "dismissBatteryHealthInterruptionPopUp()"

    .line 8
    .line 9
    const-string v5, "SecPowerUI.Notification"

    .line 10
    .line 11
    const-string v6, "dismissBatteryHealthInterruptionNotification()"

    .line 12
    .line 13
    const v8, 0x10000006

    .line 14
    .line 15
    .line 16
    const/4 v10, 0x1

    .line 17
    const-wide/32 v11, 0xea60

    .line 18
    .line 19
    .line 20
    const/4 v13, 0x3

    .line 21
    iget-object v14, v1, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 22
    .line 23
    iget-object v15, v1, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 24
    .line 25
    const-string v3, "PowerUI"

    .line 26
    .line 27
    const/4 v7, 0x4

    .line 28
    if-ne v7, v2, :cond_6

    .line 29
    .line 30
    iget v7, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 31
    .line 32
    const/4 v9, 0x6

    .line 33
    if-eq v13, v7, :cond_0

    .line 34
    .line 35
    const/4 v13, 0x7

    .line 36
    if-eq v13, v7, :cond_0

    .line 37
    .line 38
    if-ne v9, v7, :cond_6

    .line 39
    .line 40
    :cond_0
    if-ne v9, v7, :cond_1

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    const-string v0, "This status is not charging && false present but direct mode , so we do nothing !!"

    .line 45
    .line 46
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    const-string v2, "Unhealth state"

    .line 52
    .line 53
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 57
    .line 58
    if-nez v2, :cond_5

    .line 59
    .line 60
    invoke-virtual {v14, v8, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iput-object v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 65
    .line 66
    sget-boolean v7, Lcom/android/systemui/PowerUiRune;->KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    .line 67
    .line 68
    if-eqz v7, :cond_2

    .line 69
    .line 70
    iget v7, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 71
    .line 72
    if-ne v7, v9, :cond_2

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v2, v11, v12}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 79
    .line 80
    .line 81
    :goto_0
    iget v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 82
    .line 83
    if-ne v2, v9, :cond_4

    .line 84
    .line 85
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 86
    .line 87
    if-nez v2, :cond_3

    .line 88
    .line 89
    invoke-virtual {v14, v10, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iput-object v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 94
    .line 95
    :cond_3
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {v15}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showBatteryHealthInterruptionWarning()V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_3

    .line 104
    .line 105
    :cond_5
    const/16 v7, 0x8

    .line 106
    .line 107
    if-ne v7, v0, :cond_10

    .line 108
    .line 109
    invoke-virtual {v15}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showBatteryHealthInterruptionWarning()V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :cond_6
    const/16 v7, 0x8

    .line 115
    .line 116
    const/4 v9, 0x4

    .line 117
    if-ne v9, v2, :cond_b

    .line 118
    .line 119
    iget v9, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 120
    .line 121
    if-ne v7, v9, :cond_b

    .line 122
    .line 123
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 124
    .line 125
    if-nez v2, :cond_9

    .line 126
    .line 127
    invoke-virtual {v14, v8, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    iput-object v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 132
    .line 133
    sget-boolean v7, Lcom/android/systemui/PowerUiRune;->KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    .line 134
    .line 135
    if-eqz v7, :cond_7

    .line 136
    .line 137
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_7
    invoke-virtual {v2, v11, v12}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 142
    .line 143
    .line 144
    :goto_1
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 145
    .line 146
    if-nez v2, :cond_8

    .line 147
    .line 148
    invoke-virtual {v14, v10, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    iput-object v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 153
    .line 154
    :cond_8
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 155
    .line 156
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v15}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showBatteryHealthInterruptionWarning()V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_9
    const/4 v7, 0x3

    .line 164
    if-ne v7, v0, :cond_10

    .line 165
    .line 166
    sget-boolean v7, Lcom/android/systemui/PowerUiRune;->KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    .line 167
    .line 168
    if-nez v7, :cond_a

    .line 169
    .line 170
    invoke-virtual {v2, v11, v12}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 171
    .line 172
    .line 173
    :cond_a
    invoke-virtual {v15}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showBatteryHealthInterruptionWarning()V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_b
    iget-object v7, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 178
    .line 179
    if-eqz v7, :cond_10

    .line 180
    .line 181
    iget v7, v1, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 182
    .line 183
    const/4 v8, 0x4

    .line 184
    if-ne v8, v7, :cond_c

    .line 185
    .line 186
    const/4 v7, 0x3

    .line 187
    if-ne v7, v2, :cond_c

    .line 188
    .line 189
    iget v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 190
    .line 191
    if-ne v7, v2, :cond_c

    .line 192
    .line 193
    iput-boolean v10, v1, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_c
    iget-object v2, v15, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 197
    .line 198
    iget-object v7, v15, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$4;

    .line 199
    .line 200
    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    .line 202
    .line 203
    iget-object v7, v15, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mTemperatureLimitAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$5;

    .line 204
    .line 205
    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    const/4 v2, 0x5

    .line 212
    invoke-virtual {v15, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 213
    .line 214
    .line 215
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    iget-object v2, v15, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    .line 219
    .line 220
    if-eqz v2, :cond_d

    .line 221
    .line 222
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 223
    .line 224
    .line 225
    :cond_d
    const/4 v2, 0x0

    .line 226
    iput-boolean v2, v1, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    .line 227
    .line 228
    :goto_2
    sget-boolean v2, Lcom/android/systemui/PowerUiRune;->KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    .line 229
    .line 230
    if-eqz v2, :cond_e

    .line 231
    .line 232
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 233
    .line 234
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_e

    .line 239
    .line 240
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 241
    .line 242
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 243
    .line 244
    .line 245
    :cond_e
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 246
    .line 247
    if-eqz v2, :cond_f

    .line 248
    .line 249
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-eqz v2, :cond_f

    .line 254
    .line 255
    iget-object v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 256
    .line 257
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 258
    .line 259
    .line 260
    :cond_f
    const/4 v2, 0x0

    .line 261
    iput-object v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 262
    .line 263
    :cond_10
    :goto_3
    iget-boolean v2, v1, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    .line 264
    .line 265
    if-eqz v2, :cond_12

    .line 266
    .line 267
    const/4 v2, 0x2

    .line 268
    iget v7, v1, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 269
    .line 270
    if-ne v2, v7, :cond_12

    .line 271
    .line 272
    iget-object v2, v15, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 273
    .line 274
    iget-object v7, v15, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$4;

    .line 275
    .line 276
    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 277
    .line 278
    .line 279
    iget-object v7, v15, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mTemperatureLimitAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$5;

    .line 280
    .line 281
    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    const/4 v2, 0x5

    .line 288
    invoke-virtual {v15, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 289
    .line 290
    .line 291
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    iget-object v2, v15, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    .line 295
    .line 296
    if-eqz v2, :cond_11

    .line 297
    .line 298
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 299
    .line 300
    .line 301
    :cond_11
    const/4 v2, 0x0

    .line 302
    iput-boolean v2, v1, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    .line 303
    .line 304
    :cond_12
    iget v2, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 305
    .line 306
    if-eq v0, v2, :cond_15

    .line 307
    .line 308
    const/4 v4, 0x5

    .line 309
    if-eq v4, v0, :cond_13

    .line 310
    .line 311
    if-eq v4, v2, :cond_13

    .line 312
    .line 313
    const/16 v4, 0x9

    .line 314
    .line 315
    if-eq v4, v0, :cond_13

    .line 316
    .line 317
    if-ne v4, v2, :cond_15

    .line 318
    .line 319
    :cond_13
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    if-eqz v0, :cond_14

    .line 324
    .line 325
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SettingsManager;->getScreenWakeupOnPowerState()Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-nez v0, :cond_14

    .line 330
    .line 331
    const-string v0, "Knox Customization: shouldWakeUp: not waking when battery health is changed"

    .line 332
    .line 333
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_14
    const-string v0, "Overvoltage/Undervoltage status is changed so turn on the screen."

    .line 338
    .line 339
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 343
    .line 344
    .line 345
    move-result-wide v2

    .line 346
    iget-object v0, v1, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 347
    .line 348
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v14, v2, v3, v0}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    :cond_15
    :goto_4
    return-void
.end method

.method public static -$$Nest$mcheckBatteryProtectionTipsNotification(Lcom/android/systemui/power/PowerUI;I)V
    .locals 9

    .line 1
    const-string/jumbo v0, "tipsNotiFirstTime"

    .line 2
    .line 3
    .line 4
    const-string v1, "PowerUI"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-string v3, "checkBatteryProtectionTipsNotification, first : "

    .line 9
    .line 10
    :try_start_0
    const-string v4, "com.android.systemui.power_tips_notification"

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const/4 v6, 0x1

    .line 18
    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    new-instance v8, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 40
    .line 41
    if-eq p0, v6, :cond_0

    .line 42
    .line 43
    const/4 p1, 0x4

    .line 44
    if-ne p0, p1, :cond_1

    .line 45
    .line 46
    :cond_0
    if-eqz v7, :cond_1

    .line 47
    .line 48
    new-instance p0, Landroid/content/Intent;

    .line 49
    .line 50
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string p1, "com.samsung.android.app.tips"

    .line 54
    .line 55
    const-string v3, "com.samsung.android.app.tips.TipsIntentService"

    .line 56
    .line 57
    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    const-string/jumbo p1, "tips_extras"

    .line 61
    .line 62
    .line 63
    const/16 v3, 0x8

    .line 64
    .line 65
    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    const-string/jumbo p1, "tips_extras2"

    .line 69
    .line 70
    .line 71
    const-string v3, "BATT_0003"

    .line 72
    .line 73
    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    const-string/jumbo p1, "tips_extras3"

    .line 77
    .line 78
    .line 79
    const v3, 0x7f1301e6

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    const-string/jumbo p1, "tips_extras4"

    .line 90
    .line 91
    .line 92
    const v3, 0x7f1301e7

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    const-string p1, "checkBatteryProtectionTipsNotification, show Battery protection tip"

    .line 103
    .line 104
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, p0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    if-eqz p0, :cond_1

    .line 112
    .line 113
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 118
    .line 119
    .line 120
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catch_0
    move-exception p0

    .line 125
    const-string p1, "Exception occur"

    .line 126
    .line 127
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .line 129
    .line 130
    :cond_1
    :goto_0
    return-void
.end method

.method public static -$$Nest$mcheckBatterySwellingStatus(Lcom/android/systemui/power/PowerUI;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "Battery swelling mode - priorBatterySwellingMode = "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " mBatterySwellingMode = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " mBatteryStatus = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 30
    .line 31
    const-string v2, "PowerUI"

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    .line 37
    .line 38
    if-ne p1, v0, :cond_0

    .line 39
    .line 40
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 41
    .line 42
    if-eq p2, p1, :cond_6

    .line 43
    .line 44
    :cond_0
    const-string p1, "SecPowerUI.Notification"

    .line 45
    .line 46
    iget-object p2, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    if-lez v0, :cond_5

    .line 50
    .line 51
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 52
    .line 53
    const/4 v3, 0x2

    .line 54
    if-ne v2, v3, :cond_5

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    if-ne v0, v2, :cond_1

    .line 61
    .line 62
    const-string/jumbo v0, "showBatterySwellingNotice()"

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const-string v1, "Not battery low swelling mode, (ignore high swelling mode) so return "

    .line 73
    .line 74
    invoke-static {v1, v0, p1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    .line 78
    .line 79
    if-ne v0, v2, :cond_3

    .line 80
    .line 81
    const-string/jumbo v0, "showBatterySwellingPopup for low temp"

    .line 82
    .line 83
    .line 84
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    const-string/jumbo v0, "showBatterySwellingLowTempPopup()"

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    iget-object v0, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSwellingDialog:Landroidx/appcompat/app/AlertDialog;

    .line 94
    .line 95
    if-nez v0, :cond_4

    .line 96
    .line 97
    const/4 v0, 0x3

    .line 98
    invoke-virtual {p2, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSwellingDialog:Landroidx/appcompat/app/AlertDialog;

    .line 103
    .line 104
    if-nez v0, :cond_2

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    invoke-direct {v1, p2, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSwellingDialog:Landroidx/appcompat/app/AlertDialog;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->turnOnScreen()V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    const-string v0, "Neither battery swelling mode nor low temp, so no popup is shown"

    .line 125
    .line 126
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mDoNotShowChargingNotice:Z

    .line 131
    .line 132
    iput v0, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    .line 133
    .line 134
    iput v0, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    .line 135
    .line 136
    const-wide/16 v1, 0x0

    .line 137
    .line 138
    iput-wide v1, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    .line 139
    .line 140
    iput-boolean v0, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mShowChargingNotice:Z

    .line 141
    .line 142
    invoke-virtual {p2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissSlowByChargerConnectionInfoPopUp()V

    .line 143
    .line 144
    .line 145
    const-string v1, "dismissChargingNotification()"

    .line 146
    .line 147
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 154
    .line 155
    iget-object p2, p0, Lcom/android/systemui/power/PowerUI;->mAfterChargingNoticeTask:Lcom/android/systemui/power/PowerUI$11;

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    .line 159
    .line 160
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChangedStringAfterCharging:Z

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    const-string p0, "dismissBatterySwellingNotice()"

    .line 167
    .line 168
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 172
    .line 173
    .line 174
    const-string p0, "dismissBatterySwellingPopup()"

    .line 175
    .line 176
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    iget-object p0, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSwellingDialog:Landroidx/appcompat/app/AlertDialog;

    .line 180
    .line 181
    if-eqz p0, :cond_6

    .line 182
    .line 183
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 184
    .line 185
    .line 186
    :cond_6
    :goto_2
    return-void
.end method

.method public static -$$Nest$mcheckConnectedChargerStatus(Lcom/android/systemui/power/PowerUI;I)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v2, v0, :cond_10

    .line 6
    .line 7
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x4

    .line 11
    if-eq v3, v0, :cond_3

    .line 12
    .line 13
    if-ne v2, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-ne v4, v0, :cond_2

    .line 17
    .line 18
    const/16 v1, 0x64

    .line 19
    .line 20
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 21
    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x7

    .line 25
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v1, 0x6

    .line 29
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    :goto_0
    sget-boolean v1, Lcom/android/systemui/PowerUiRune;->SPECIFIC_POWER_REQUEST_BY_VZW:Z

    .line 36
    .line 37
    const/16 v5, 0x8

    .line 38
    .line 39
    const/16 v6, 0x9

    .line 40
    .line 41
    const/4 v7, 0x3

    .line 42
    if-eqz v1, :cond_9

    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    .line 45
    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    iput v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    .line 52
    .line 53
    if-nez v1, :cond_5

    .line 54
    .line 55
    iput v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_5
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mSuperFastCharger:I

    .line 59
    .line 60
    if-ne v1, v7, :cond_6

    .line 61
    .line 62
    iput v7, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_6
    if-ne v1, v4, :cond_7

    .line 66
    .line 67
    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    .line 71
    .line 72
    if-eqz v1, :cond_8

    .line 73
    .line 74
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_8
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    .line 81
    .line 82
    if-nez v1, :cond_a

    .line 83
    .line 84
    iput v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    .line 88
    .line 89
    if-eqz v1, :cond_b

    .line 90
    .line 91
    iput v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_b
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mSuperFastCharger:I

    .line 95
    .line 96
    if-ne v1, v7, :cond_c

    .line 97
    .line 98
    iput v7, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_c
    if-ne v1, v4, :cond_d

    .line 102
    .line 103
    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_d
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    .line 107
    .line 108
    if-eqz v1, :cond_e

    .line 109
    .line 110
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_e
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 114
    .line 115
    :goto_1
    if-ne v0, p1, :cond_f

    .line 116
    .line 117
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsChangedStringAfterCharging:Z

    .line 118
    .line 119
    if-eqz p1, :cond_f

    .line 120
    .line 121
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 122
    .line 123
    packed-switch p1, :pswitch_data_0

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :pswitch_0
    const/16 p1, 0xa

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :pswitch_1
    const/16 p1, 0xb

    .line 131
    .line 132
    :goto_2
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 133
    .line 134
    :cond_f
    sget-boolean p1, Lcom/android/systemui/PowerUiRune;->ADAPTIVE_PROTECTION_NOTIFICATION:Z

    .line 135
    .line 136
    if-eqz p1, :cond_11

    .line 137
    .line 138
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsAfterAdaptiveProtection:Z

    .line 139
    .line 140
    if-eqz p1, :cond_11

    .line 141
    .line 142
    const/16 p1, 0xc

    .line 143
    .line 144
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_10
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 148
    .line 149
    :cond_11
    :goto_3
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 150
    .line 151
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mSuperFastCharger:I

    .line 152
    .line 153
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 154
    .line 155
    iget v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    .line 156
    .line 157
    iput v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    .line 158
    .line 159
    iput p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    .line 160
    .line 161
    iput v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSuperFastCharger:I

    .line 162
    .line 163
    return-void

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static -$$Nest$mcheckFullBatteryStatus(Lcom/android/systemui/power/PowerUI;I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-ne p1, v0, :cond_2

    .line 12
    .line 13
    :cond_0
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 14
    .line 15
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryProtectionThreshold:I

    .line 16
    .line 17
    if-lt p1, v0, :cond_1

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsProtectingBatteryCutOffSettingEnabled:Z

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    move p1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move p1, v3

    .line 26
    :goto_0
    if-eqz p1, :cond_3

    .line 27
    .line 28
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_3

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 37
    .line 38
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    .line 52
    .line 53
    invoke-virtual {p0, v3}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method public static -$$Nest$mcheckHVchargerEnableConnection(Lcom/android/systemui/power/PowerUI;I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentEvent:I

    .line 2
    .line 3
    const/high16 v1, 0x4000000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    const-string v2, "SecPowerUI.Notification"

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    and-int v3, p1, v1

    .line 13
    .line 14
    if-nez v3, :cond_2

    .line 15
    .line 16
    invoke-static {}, Lcom/android/systemui/power/PowerUtils;->isViewCoverClosed()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const-string/jumbo p1, "showHVchargerEnableAlertDialog()"

    .line 27
    .line 28
    .line 29
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHVchargerEnablePopupDialog:Landroidx/appcompat/app/AlertDialog;

    .line 33
    .line 34
    if-nez p1, :cond_3

    .line 35
    .line 36
    const/16 p1, 0xe

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHVchargerEnablePopupDialog:Landroidx/appcompat/app/AlertDialog;

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Lcom/android/systemui/power/SecPowerNotificationWarnings$22;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$22;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->turnOnScreen()V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHVchargerEnablePopupDialog:Landroidx/appcompat/app/AlertDialog;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    and-int/2addr p1, v1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const-string p1, "dismissHVchargerEnableAlertDialog()"

    .line 73
    .line 74
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHVchargerEnablePopupDialog:Landroidx/appcompat/app/AlertDialog;

    .line 78
    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 82
    .line 83
    .line 84
    const-string p0, "afcDisableChargerDialog is dimissed"

    .line 85
    .line 86
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_0
    return-void
.end method

.method public static -$$Nest$mcheckIncompatibleChargerConnection(Lcom/android/systemui/power/PowerUI;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showIncompatibleChargerNotice()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-nez p1, :cond_2

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIncompatibleChargerDialog:Landroidx/appcompat/app/AlertDialog;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 22
    .line 23
    .line 24
    :cond_1
    const-string p1, "SecPowerUI.Notification"

    .line 25
    .line 26
    const-string v0, "dismissing incompatible charger notification"

    .line 27
    .line 28
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x3

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public static -$$Nest$mcheckTipsNotification(Lcom/android/systemui/power/PowerUI;I)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    const/16 v0, 0x1e

    .line 6
    .line 7
    if-le p1, v0, :cond_7

    .line 8
    .line 9
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 10
    .line 11
    if-gt p1, v0, :cond_7

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v0, "com.android.systemui.power_tips_notification"

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_7

    .line 23
    .line 24
    const-string/jumbo v2, "tipsNotiConfirmed"

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v4, "checkTipsNotificaiton confirmed : "

    .line 34
    .line 35
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, "PowerUI"

    .line 46
    .line 47
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    if-nez v2, :cond_6

    .line 51
    .line 52
    const-string/jumbo v2, "tipsNotiRegisteredCount"

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const-string/jumbo v5, "refresh_rate_mode"

    .line 64
    .line 65
    .line 66
    invoke-static {v3, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v6, "checkTipsNotificaiton notiCount : "

    .line 73
    .line 74
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v6, "  refreshRate : "

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    const/4 v5, 0x3

    .line 96
    if-ge v2, v5, :cond_5

    .line 97
    .line 98
    if-lez v3, :cond_5

    .line 99
    .line 100
    const-string/jumbo v2, "tipsNotiLastTime"

    .line 101
    .line 102
    .line 103
    const-wide/16 v5, 0x0

    .line 104
    .line 105
    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 106
    .line 107
    .line 108
    move-result-wide v2

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide v7

    .line 113
    const-string v9, "lastNotifiedTime = "

    .line 114
    .line 115
    const-string v10, "  currentTime = "

    .line 116
    .line 117
    invoke-static {v9, v2, v3, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    invoke-static {v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    sub-long/2addr v7, v2

    .line 132
    const-wide/32 v2, 0x240c8400

    .line 133
    .line 134
    .line 135
    cmp-long v2, v7, v2

    .line 136
    .line 137
    if-lez v2, :cond_4

    .line 138
    .line 139
    const-string v2, "ignoreRUT"

    .line 140
    .line 141
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v3, "ignore_rut = "

    .line 148
    .line 149
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    if-eqz v0, :cond_0

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->showTipsNotification()V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const-string v2, "low_power"

    .line 173
    .line 174
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    const/4 v2, 0x1

    .line 179
    if-ne v0, v2, :cond_1

    .line 180
    .line 181
    move v1, v2

    .line 182
    :cond_1
    if-eqz v1, :cond_2

    .line 183
    .line 184
    const/4 p1, -0x1

    .line 185
    goto :goto_0

    .line 186
    :cond_2
    const/16 v0, 0x27

    .line 187
    .line 188
    invoke-static {p1, v0}, Lcom/samsung/android/hardware/SemBatteryUtils;->getBatteryRemainingUsageTime(Landroid/content/Context;I)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    int-to-long v0, v0

    .line 193
    cmp-long v2, v0, v5

    .line 194
    .line 195
    if-gez v2, :cond_3

    .line 196
    .line 197
    const/4 v0, 0x5

    .line 198
    invoke-static {p1, v0}, Lcom/samsung/android/hardware/SemBatteryUtils;->getBatteryRemainingUsageTime(Landroid/content/Context;I)I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    int-to-long v0, p1

    .line 203
    :cond_3
    long-to-int p1, v0

    .line 204
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string/jumbo v1, "remaining time : "

    .line 207
    .line 208
    .line 209
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    if-lez p1, :cond_7

    .line 223
    .line 224
    const/16 v0, 0x30c

    .line 225
    .line 226
    if-ge p1, v0, :cond_7

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->showTipsNotification()V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_4
    const-string p0, "last tip notification has been registered within 1 week, so we ignore this case!!"

    .line 233
    .line 234
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_5
    const-string p0, "Noti count = "

    .line 239
    .line 240
    const-string p1, " refresh rate settings = "

    .line 241
    .line 242
    const-string v0, " , so we do not register tip notification!!"

    .line 243
    .line 244
    invoke-static {p0, v2, p1, v3, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_6
    const-string p0, "User confirmed, so we do not register tip notification!!"

    .line 253
    .line 254
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    :cond_7
    :goto_1
    return-void
.end method

.method public static -$$Nest$mcheckTurnOffPsmNotification(Lcom/android/systemui/power/PowerUI;I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mTurnOffPsmLevel:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    if-ne v0, v3, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string/jumbo v4, "turn_off_psm_trigger_level"

    .line 14
    .line 15
    .line 16
    const/16 v5, 0x32

    .line 17
    .line 18
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    iput v5, p0, Lcom/android/systemui/power/PowerUI;->mTurnOffPsmLevel:I

    .line 23
    .line 24
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    new-instance v5, Lcom/android/systemui/power/PowerUI$15;

    .line 29
    .line 30
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-direct {v5, p0, v6, v0}, Lcom/android/systemui/power/PowerUI$15;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v4, v1, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mTurnOffPsmLevel:I

    .line 39
    .line 40
    if-ge p1, v0, :cond_1

    .line 41
    .line 42
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 43
    .line 44
    if-lt p0, v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "low_power"

    .line 51
    .line 52
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    const/4 p1, 0x1

    .line 57
    if-ne p0, p1, :cond_1

    .line 58
    .line 59
    new-instance p0, Landroid/content/Intent;

    .line 60
    .line 61
    const-string p1, "com.samsung.android.sm.ACTION_TURN_OFF_PSM_NOTI"

    .line 62
    .line 63
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lcom/android/systemui/power/TipsConfig;->TURN_OFF_PSM_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method public static -$$Nest$mcheckTurnOnProtectBatteryByLongTa(Lcom/android/systemui/power/PowerUI;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsProtectingBatteryCutOffSettingEnabled:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->startScheduling()V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const-string v1, "com.android.systemui.power_auto_on_protect_battery"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v3, "auto_on_protect_battery_timer_started"

    .line 24
    .line 25
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "auto_on_protect_battery"

    .line 34
    .line 35
    const/4 v4, -0x1

    .line 36
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v4, "checkShouldTurnOffProtectBattery : "

    .line 43
    .line 44
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v4, ", Scheduling start ? : "

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-string v4, "PowerUI"

    .line 63
    .line 64
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 70
    .line 71
    if-nez v1, :cond_2

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    if-ne v2, v1, :cond_2

    .line 75
    .line 76
    const-string v1, "com.samsung.android.sm.action.TURN_OFF_PROTECT_BATTERY_BY_LONG_TERM_TA"

    .line 77
    .line 78
    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUtils;->sendIntentToDc(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->clearScheduling()V

    .line 82
    .line 83
    .line 84
    :goto_1
    return-void
.end method

.method public static -$$Nest$mcheckTurnOnProtectBatteryByLongTermCharge(Lcom/android/systemui/power/PowerUI;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mLtcHighSocThreshold:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mProtectBatteryValue:I

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->startScheduling()V

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    :goto_0
    const-string v0, "com.android.systemui.power_auto_on_protect_battery"

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v4, "auto_on_protect_battery_timer_started"

    .line 27
    .line 28
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v5, "checkRestoreProtectBattery pb value : "

    .line 35
    .line 36
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mProtectBatteryValue:I

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v5, ", Scheduling start ? : "

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const-string v5, "PowerUI"

    .line 57
    .line 58
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 64
    .line 65
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mLtcReleaseThreshold:I

    .line 66
    .line 67
    if-ge v4, v5, :cond_2

    .line 68
    .line 69
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mProtectBatteryValue:I

    .line 70
    .line 71
    if-ne v4, v2, :cond_2

    .line 72
    .line 73
    const-string v0, "com.samsung.android.sm.action.TURN_OFF_PROTECT_BATTERY_BY_LONG_TERM_TA"

    .line 74
    .line 75
    invoke-static {v1, v0}, Lcom/android/systemui/power/PowerUtils;->sendIntentToDc(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    if-nez v0, :cond_3

    .line 80
    .line 81
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 82
    .line 83
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mLtcHighSocThreshold:I

    .line 84
    .line 85
    if-ge v0, v2, :cond_3

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v2, "key_ltc_state"

    .line 92
    .line 93
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const/4 v2, 0x1

    .line 98
    if-ne v0, v2, :cond_3

    .line 99
    .line 100
    const-string v0, "com.samsung.android.sm.action.TURN_OFF_SOFT_NOTI_BY_LONG_TERM_TA"

    .line 101
    .line 102
    invoke-static {v1, v0}, Lcom/android/systemui/power/PowerUtils;->sendIntentToDc(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->clearScheduling()V

    .line 106
    .line 107
    .line 108
    :goto_2
    return-void
.end method

.method public static -$$Nest$mcheckWirelessMisalign(Lcom/android/systemui/power/PowerUI;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x400000

    .line 5
    .line 6
    and-int/2addr p1, v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    move p1, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, v2

    .line 14
    :goto_0
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryMiscEvent:I

    .line 15
    .line 16
    and-int/2addr v3, v0

    .line 17
    if-ne v3, v0, :cond_1

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v0, v2

    .line 22
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "oldMisalign : "

    .line 25
    .line 26
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v4, ", curMisalign : "

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "PowerUI"

    .line 45
    .line 46
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 50
    .line 51
    if-lez v3, :cond_6

    .line 52
    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    const-string p1, "old not misalign but now misalign"

    .line 58
    .line 59
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/android/systemui/power/PowerUtils;->isViewCoverClosed()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->removeChargerView()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->removeMisalignView()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/PowerUI;->setWirelessMisalignView(I)V

    .line 76
    .line 77
    .line 78
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsWirelessMisalignTask:Z

    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignTimeoutTask:Lcom/android/systemui/power/PowerUI$14;

    .line 83
    .line 84
    const-wide/16 v0, 0x7530

    .line 85
    .line 86
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    if-eqz p1, :cond_4

    .line 91
    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    const-string p1, "old misalign but now not misalign"

    .line 95
    .line 96
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->removeChargerView()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->removeMisalignView()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v1}, Lcom/android/systemui/power/PowerUI;->setWirelessMisalignView(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    if-eqz p1, :cond_5

    .line 110
    .line 111
    if-nez v0, :cond_7

    .line 112
    .line 113
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->removeMisalignView()V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->removeMisalignView()V

    .line 118
    .line 119
    .line 120
    :cond_7
    :goto_2
    return-void
.end method

.method public static -$$Nest$mplayChargerConnectionAnimation(IILcom/android/systemui/power/PowerUI;Z)V
    .locals 12

    .line 1
    iget-boolean v0, p2, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    .line 2
    .line 3
    const-string v1, "PowerUI"

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string p0, "Skip charging animation - already playing"

    .line 15
    .line 16
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    iget v0, p2, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 22
    .line 23
    iget v7, p2, Lcom/android/systemui/power/PowerUI;->mBatteryProtectionThreshold:I

    .line 24
    .line 25
    if-lt v0, v7, :cond_1

    .line 26
    .line 27
    iget-boolean v0, p2, Lcom/android/systemui/power/PowerUI;->mIsProtectingBatteryCutOffSettingEnabled:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    move v0, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v0, v5

    .line 34
    :goto_0
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const-string p0, "Skip charging animation - by protect battery cutoff"

    .line 37
    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_2
    invoke-virtual {p2, p0, p1, p3}, Lcom/android/systemui/power/PowerUI;->skipAnimByPlugStatus(IIZ)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    const-string p0, "Skip charging animation - by plug status"

    .line 50
    .line 51
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_3
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 57
    .line 58
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 63
    .line 64
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCoverClosed()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 75
    .line 76
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    move p1, v4

    .line 88
    :goto_1
    if-eqz p0, :cond_7

    .line 89
    .line 90
    if-eq p1, v3, :cond_7

    .line 91
    .line 92
    const-string p0, "View Cover is covered and closed, so don\'t play charging animation but turn on AOD, cover type : "

    .line 93
    .line 94
    invoke-static {p0, p1, v1}, Landroidx/core/graphics/drawable/IconCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/16 p0, 0xf

    .line 98
    .line 99
    if-eq p1, p0, :cond_5

    .line 100
    .line 101
    if-eq p1, v2, :cond_5

    .line 102
    .line 103
    const/16 p0, 0x11

    .line 104
    .line 105
    if-ne p1, p0, :cond_6

    .line 106
    .line 107
    :cond_5
    iget-object p0, p2, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-nez p0, :cond_6

    .line 114
    .line 115
    const-string p0, "Supported view cover && cover closed, so we should call PluginAODManager"

    .line 116
    .line 117
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    iget-object p0, p2, Lcom/android/systemui/power/PowerUI;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 121
    .line 122
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    .line 127
    .line 128
    invoke-virtual {p1, v6}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    .line 129
    .line 130
    .line 131
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    .line 136
    .line 137
    invoke-virtual {p0, v5}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    .line 138
    .line 139
    .line 140
    :cond_6
    move p0, v6

    .line 141
    goto :goto_2

    .line 142
    :cond_7
    move p0, v5

    .line 143
    :goto_2
    if-eqz p0, :cond_8

    .line 144
    .line 145
    const-string p0, "Skip charging animation - by cover state"

    .line 146
    .line 147
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_8
    invoke-virtual {p2}, Lcom/android/systemui/power/PowerUI;->skipAnimByMotionDetected()Z

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    if-eqz p0, :cond_9

    .line 156
    .line 157
    const-string p0, "Skip charging animation - by motion detected"

    .line 158
    .line 159
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_9
    iget-boolean p0, p2, Lcom/android/systemui/power/PowerUI;->mIsAfterAdaptiveProtection:Z

    .line 164
    .line 165
    if-eqz p0, :cond_a

    .line 166
    .line 167
    const-string p0, "Skip charging animation - After adaptive protection"

    .line 168
    .line 169
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    :goto_3
    move p0, v5

    .line 173
    goto :goto_4

    .line 174
    :cond_a
    move p0, v6

    .line 175
    :goto_4
    if-eqz p0, :cond_33

    .line 176
    .line 177
    const-string p0, "PowerUI"

    .line 178
    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string p3, "Charger connected, charger : "

    .line 182
    .line 183
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget p3, p2, Lcom/android/systemui/power/PowerUI;->mSuperFastCharger:I

    .line 187
    .line 188
    invoke-static {p1, p3, p0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object p0, p2, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 192
    .line 193
    if-nez p0, :cond_b

    .line 194
    .line 195
    const-string p0, "PowerUI.ChargerAnimationViewLp"

    .line 196
    .line 197
    invoke-static {p0}, Lcom/android/systemui/power/PowerUI;->getLayoutParam(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    iput-object p0, p2, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 202
    .line 203
    const/16 p1, 0x7e5

    .line 204
    .line 205
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 206
    .line 207
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 208
    .line 209
    or-int/2addr p1, v3

    .line 210
    or-int/2addr p1, v2

    .line 211
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 212
    .line 213
    :cond_b
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    iget-object p1, p2, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    .line 222
    .line 223
    const/4 p3, 0x3

    .line 224
    const/4 v0, 0x0

    .line 225
    if-nez p1, :cond_10

    .line 226
    .line 227
    const-string p1, "PowerUI"

    .line 228
    .line 229
    const-string v1, "folder state : "

    .line 230
    .line 231
    invoke-static {v1, p0, p1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 232
    .line 233
    .line 234
    sget-boolean p1, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FLIP:Z

    .line 235
    .line 236
    if-eqz p1, :cond_c

    .line 237
    .line 238
    if-eqz p0, :cond_c

    .line 239
    .line 240
    move p0, v6

    .line 241
    goto :goto_5

    .line 242
    :cond_c
    move p0, v5

    .line 243
    :goto_5
    const p1, 0x7f0d004a

    .line 244
    .line 245
    .line 246
    if-eqz p0, :cond_f

    .line 247
    .line 248
    iget-object p0, p2, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 249
    .line 250
    invoke-static {p0}, Lcom/android/systemui/power/PowerUtils;->getSubDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    sget-boolean v1, Lcom/android/systemui/PowerUiRune;->COVER_DISPLAY_LARGE_SCREEN:Z

    .line 255
    .line 256
    if-eqz v1, :cond_d

    .line 257
    .line 258
    iget-object v1, p2, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 259
    .line 260
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 261
    .line 262
    :cond_d
    const-string/jumbo v1, "window"

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Landroid/view/WindowManager;

    .line 270
    .line 271
    iput-object v1, p2, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    .line 272
    .line 273
    const-string/jumbo v1, "ro.product.vendor.name"

    .line 274
    .line 275
    .line 276
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    const-string v2, "bloom"

    .line 285
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_e

    .line 291
    .line 292
    const p1, 0x7f0d004b

    .line 293
    .line 294
    .line 295
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    check-cast p0, Lcom/android/systemui/power/ChargerAnimationView;

    .line 300
    .line 301
    iput-object p0, p2, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_e
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    check-cast p0, Lcom/android/systemui/power/ChargerAnimationView;

    .line 309
    .line 310
    iput-object p0, p2, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_f
    iget-object p0, p2, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 314
    .line 315
    const-string/jumbo v1, "window"

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    check-cast p0, Landroid/view/WindowManager;

    .line 323
    .line 324
    iput-object p0, p2, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    .line 325
    .line 326
    iget-object p0, p2, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 327
    .line 328
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    check-cast p0, Lcom/android/systemui/power/ChargerAnimationView;

    .line 333
    .line 334
    iput-object p0, p2, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    .line 335
    .line 336
    :cond_10
    :goto_6
    iget-object p0, p2, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    .line 337
    .line 338
    iget-object p1, p2, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    .line 339
    .line 340
    iget-object v1, p2, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 341
    .line 342
    invoke-interface {p0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    .line 344
    .line 345
    iget-object p0, p2, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    .line 346
    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    iput-boolean v5, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    .line 351
    .line 352
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 353
    .line 354
    .line 355
    iget-object p0, p2, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    .line 356
    .line 357
    iput-object p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    .line 358
    .line 359
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {p1}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPowerManager:Landroid/os/PowerManager;

    .line 368
    .line 369
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    sget-boolean v2, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FLIP:Z

    .line 374
    .line 375
    if-eqz v2, :cond_11

    .line 376
    .line 377
    if-eqz p1, :cond_11

    .line 378
    .line 379
    move v7, v6

    .line 380
    goto :goto_7

    .line 381
    :cond_11
    move v7, v5

    .line 382
    :goto_7
    if-eqz v7, :cond_12

    .line 383
    .line 384
    iget-object v7, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    .line 385
    .line 386
    const-string v8, "display"

    .line 387
    .line 388
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    check-cast v7, Landroid/hardware/display/DisplayManager;

    .line 393
    .line 394
    const-string v8, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 395
    .line 396
    invoke-virtual {v7, v8}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    aget-object v7, v7, v6

    .line 401
    .line 402
    invoke-virtual {v7}, Landroid/view/Display;->getState()I

    .line 403
    .line 404
    .line 405
    move-result v7

    .line 406
    if-ne v7, v6, :cond_12

    .line 407
    .line 408
    move v7, v6

    .line 409
    goto :goto_8

    .line 410
    :cond_12
    move v7, v5

    .line 411
    :goto_8
    iput-boolean v7, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsSubscreenOff:Z

    .line 412
    .line 413
    const-class v7, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 414
    .line 415
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v7

    .line 419
    check-cast v7, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 420
    .line 421
    check-cast v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 422
    .line 423
    iget v7, v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 424
    .line 425
    if-eq v7, v6, :cond_14

    .line 426
    .line 427
    if-ne v7, v4, :cond_13

    .line 428
    .line 429
    goto :goto_9

    .line 430
    :cond_13
    move v7, v5

    .line 431
    goto :goto_a

    .line 432
    :cond_14
    :goto_9
    move v7, v6

    .line 433
    :goto_a
    if-nez v7, :cond_17

    .line 434
    .line 435
    if-eqz v2, :cond_15

    .line 436
    .line 437
    if-eqz p1, :cond_15

    .line 438
    .line 439
    move p1, v6

    .line 440
    goto :goto_b

    .line 441
    :cond_15
    move p1, v5

    .line 442
    :goto_b
    if-eqz p1, :cond_16

    .line 443
    .line 444
    goto :goto_c

    .line 445
    :cond_16
    move p1, v5

    .line 446
    goto :goto_d

    .line 447
    :cond_17
    :goto_c
    move p1, v6

    .line 448
    :goto_d
    iput-boolean p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    .line 449
    .line 450
    if-eqz v1, :cond_18

    .line 451
    .line 452
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPowerManager:Landroid/os/PowerManager;

    .line 453
    .line 454
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenCurtainEnabled()Z

    .line 455
    .line 456
    .line 457
    move-result p1

    .line 458
    if-eqz p1, :cond_19

    .line 459
    .line 460
    :cond_18
    iput-boolean v6, p0, Lcom/android/systemui/power/ChargerAnimationView;->mStartedInDoze:Z

    .line 461
    .line 462
    :cond_19
    iget-boolean p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsSubscreenOff:Z

    .line 463
    .line 464
    if-eqz p1, :cond_1a

    .line 465
    .line 466
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    .line 467
    .line 468
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    .line 469
    .line 470
    const v0, 0x7f060099

    .line 471
    .line 472
    .line 473
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 474
    .line 475
    .line 476
    move-result p0

    .line 477
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 478
    .line 479
    .line 480
    goto/16 :goto_e

    .line 481
    .line 482
    :cond_1a
    iget-boolean p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mStartedInDoze:Z

    .line 483
    .line 484
    const v1, 0x7f060098

    .line 485
    .line 486
    .line 487
    if-eqz p1, :cond_1b

    .line 488
    .line 489
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    .line 490
    .line 491
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    .line 492
    .line 493
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    .line 494
    .line 495
    .line 496
    move-result p0

    .line 497
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_e

    .line 501
    .line 502
    :cond_1b
    sget-boolean p1, Lcom/android/systemui/PowerUiRune;->WINDOW_BLUR_SUPPORTED:Z

    .line 503
    .line 504
    if-eqz p1, :cond_1d

    .line 505
    .line 506
    sget-boolean p1, Lcom/android/systemui/PowerUiRune;->GPU_BLUR_SUPPORTED:Z

    .line 507
    .line 508
    if-eqz p1, :cond_1d

    .line 509
    .line 510
    new-instance p1, Landroid/view/SemBlurInfo$Builder;

    .line 511
    .line 512
    invoke-direct {p1, v5}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 513
    .line 514
    .line 515
    const/16 v1, 0xb

    .line 516
    .line 517
    invoke-virtual {p1, v1}, Landroid/view/SemBlurInfo$Builder;->setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;

    .line 518
    .line 519
    .line 520
    move-result-object p1

    .line 521
    iget-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    .line 522
    .line 523
    if-eqz v1, :cond_1c

    .line 524
    .line 525
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    .line 526
    .line 527
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    .line 528
    .line 529
    const v7, 0x7f060096

    .line 530
    .line 531
    .line 532
    invoke-virtual {v2, v7}, Landroid/content/Context;->getColor(I)I

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 537
    .line 538
    .line 539
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    .line 540
    .line 541
    invoke-virtual {v1, v7}, Landroid/content/Context;->getColor(I)I

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    invoke-virtual {p1, v1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    .line 546
    .line 547
    .line 548
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    .line 549
    .line 550
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {p1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    .line 558
    .line 559
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 560
    .line 561
    .line 562
    goto :goto_e

    .line 563
    :cond_1c
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    .line 564
    .line 565
    const v2, 0x7f060095

    .line 566
    .line 567
    .line 568
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    invoke-virtual {p1, v1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    .line 573
    .line 574
    .line 575
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    .line 576
    .line 577
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 578
    .line 579
    .line 580
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    .line 581
    .line 582
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    const v1, 0x7f070180

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    invoke-virtual {p1, v0}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    .line 594
    .line 595
    .line 596
    move-result-object p1

    .line 597
    invoke-virtual {p1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    .line 598
    .line 599
    .line 600
    move-result-object p1

    .line 601
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    .line 602
    .line 603
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 604
    .line 605
    .line 606
    goto :goto_e

    .line 607
    :cond_1d
    iget-boolean p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    .line 608
    .line 609
    if-eqz p1, :cond_1e

    .line 610
    .line 611
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    .line 612
    .line 613
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    .line 614
    .line 615
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    .line 616
    .line 617
    .line 618
    move-result p0

    .line 619
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 620
    .line 621
    .line 622
    goto :goto_e

    .line 623
    :cond_1e
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    .line 624
    .line 625
    const p1, 0x7f0806e2

    .line 626
    .line 627
    .line 628
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 629
    .line 630
    .line 631
    :goto_e
    iget-object p0, p2, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    .line 632
    .line 633
    iget-object p1, p2, Lcom/android/systemui/power/PowerUI;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 634
    .line 635
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object p1

    .line 639
    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    .line 640
    .line 641
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPluginAODManager:Lcom/android/systemui/doze/PluginAODManager;

    .line 642
    .line 643
    iget-object p0, p2, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    .line 644
    .line 645
    iget p1, p2, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 646
    .line 647
    iget v0, p2, Lcom/android/systemui/power/PowerUI;->mSuperFastCharger:I

    .line 648
    .line 649
    iput v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mSuperFastChargingType:I

    .line 650
    .line 651
    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    .line 652
    .line 653
    iget-boolean p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    .line 654
    .line 655
    const/4 v0, 0x4

    .line 656
    if-eqz p1, :cond_1f

    .line 657
    .line 658
    const-string p0, "PowerUI.ChargerAnimationView"

    .line 659
    .line 660
    const-string p1, "Animation is playing, return"

    .line 661
    .line 662
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .line 664
    .line 665
    goto/16 :goto_1a

    .line 666
    .line 667
    :cond_1f
    iput-boolean v6, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    .line 668
    .line 669
    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 670
    .line 671
    .line 672
    iget-boolean p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mStartedInDoze:Z

    .line 673
    .line 674
    if-eqz p1, :cond_23

    .line 675
    .line 676
    const-string p1, "PowerUI.ChargerAnimationView"

    .line 677
    .line 678
    const-string/jumbo v1, "startChargerAnimation : Lcd OFF -> so call chargingAnimStarted(true)"

    .line 679
    .line 680
    .line 681
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    .line 683
    .line 684
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPluginAODManager:Lcom/android/systemui/doze/PluginAODManager;

    .line 685
    .line 686
    invoke-virtual {p1, v6}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    .line 687
    .line 688
    .line 689
    monitor-enter p0

    .line 690
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDozeChargingPartialWakelock:Landroid/os/PowerManager$WakeLock;

    .line 691
    .line 692
    if-nez p1, :cond_20

    .line 693
    .line 694
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPowerManager:Landroid/os/PowerManager;

    .line 695
    .line 696
    const-string v1, "PowerUI.ChargerAnimationView"

    .line 697
    .line 698
    const/16 v2, 0x80

    .line 699
    .line 700
    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 701
    .line 702
    .line 703
    move-result-object p1

    .line 704
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDozeChargingPartialWakelock:Landroid/os/PowerManager$WakeLock;

    .line 705
    .line 706
    const-wide/16 v1, 0xfa0

    .line 707
    .line 708
    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    .line 710
    .line 711
    :cond_20
    monitor-exit p0

    .line 712
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 713
    .line 714
    if-nez p1, :cond_21

    .line 715
    .line 716
    const-string p1, "display"

    .line 717
    .line 718
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 719
    .line 720
    .line 721
    move-result-object p1

    .line 722
    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    .line 723
    .line 724
    .line 725
    move-result-object p1

    .line 726
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 727
    .line 728
    :cond_21
    :try_start_1
    const-string p1, "PowerUI.ChargerAnimationView"

    .line 729
    .line 730
    const-string/jumbo v1, "startChargerAnimation : setDisplayStateLimit(Display.STATE_ON)"

    .line 731
    .line 732
    .line 733
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .line 735
    .line 736
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 737
    .line 738
    if-eqz p1, :cond_22

    .line 739
    .line 740
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayStateLock:Landroid/os/IBinder;

    .line 741
    .line 742
    invoke-interface {p1, v1, v4}, Landroid/hardware/display/IDisplayManager;->setDisplayStateLimit(Landroid/os/IBinder;I)V

    .line 743
    .line 744
    .line 745
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 746
    .line 747
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mToken:Landroid/os/IBinder;

    .line 748
    .line 749
    const-string v2, "PowerUI"

    .line 750
    .line 751
    invoke-interface {p1, v1, v2}, Landroid/hardware/display/IDisplayManager;->acquirePassiveModeToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 752
    .line 753
    .line 754
    move-result-object p1

    .line 755
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 756
    .line 757
    goto :goto_f

    .line 758
    :cond_22
    const-string p1, "PowerUI.ChargerAnimationView"

    .line 759
    .line 760
    const-string/jumbo v1, "startChargerAnimation : mDisplayManager is null!! ERROR case"

    .line 761
    .line 762
    .line 763
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 764
    .line 765
    .line 766
    goto :goto_f

    .line 767
    :catch_0
    move-exception p1

    .line 768
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 769
    .line 770
    .line 771
    goto :goto_f

    .line 772
    :catchall_0
    move-exception p1

    .line 773
    monitor-exit p0

    .line 774
    throw p1

    .line 775
    :cond_23
    :goto_f
    iget p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mSuperFastChargingType:I

    .line 776
    .line 777
    const/4 v1, 0x5

    .line 778
    if-eq p1, p3, :cond_26

    .line 779
    .line 780
    if-eq p1, v0, :cond_25

    .line 781
    .line 782
    if-eq p1, v1, :cond_24

    .line 783
    .line 784
    const-string p1, "charging_l1"

    .line 785
    .line 786
    goto :goto_10

    .line 787
    :cond_24
    const-string p1, "charging_l4"

    .line 788
    .line 789
    goto :goto_10

    .line 790
    :cond_25
    const-string p1, "charging_l3"

    .line 791
    .line 792
    goto :goto_10

    .line 793
    :cond_26
    const-string p1, "charging_l2"

    .line 794
    .line 795
    :goto_10
    const-class v2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 796
    .line 797
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v2

    .line 801
    check-cast v2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 802
    .line 803
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 804
    .line 805
    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 806
    .line 807
    if-eq v2, v6, :cond_28

    .line 808
    .line 809
    if-ne v2, v4, :cond_27

    .line 810
    .line 811
    goto :goto_11

    .line 812
    :cond_27
    move v2, v5

    .line 813
    goto :goto_12

    .line 814
    :cond_28
    :goto_11
    move v2, v6

    .line 815
    :goto_12
    if-eqz v2, :cond_29

    .line 816
    .line 817
    const-string v2, "_lock"

    .line 818
    .line 819
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object p1

    .line 823
    :cond_29
    const-string v2, ".json"

    .line 824
    .line 825
    invoke-static {p1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object p1

    .line 829
    const-string v2, "Animation applied : "

    .line 830
    .line 831
    const-string v7, "PowerUI.ChargerAnimationView"

    .line 832
    .line 833
    invoke-static {v2, p1, v7}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 837
    .line 838
    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    iget-boolean p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsSubscreenOff:Z

    .line 842
    .line 843
    const-string v2, "alpha"

    .line 844
    .line 845
    const-wide/16 v7, 0xc8

    .line 846
    .line 847
    const-wide/16 v9, 0x190

    .line 848
    .line 849
    if-eqz p1, :cond_2c

    .line 850
    .line 851
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerContainer:Landroid/widget/RelativeLayout;

    .line 852
    .line 853
    new-array v11, v4, [F

    .line 854
    .line 855
    fill-array-data v11, :array_0

    .line 856
    .line 857
    .line 858
    invoke-static {p1, v2, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 859
    .line 860
    .line 861
    move-result-object p1

    .line 862
    iget-boolean v11, p0, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    .line 863
    .line 864
    if-eqz v11, :cond_2a

    .line 865
    .line 866
    move-wide v7, v9

    .line 867
    :cond_2a
    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 868
    .line 869
    .line 870
    move-result-object p1

    .line 871
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 872
    .line 873
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerContainer:Landroid/widget/RelativeLayout;

    .line 874
    .line 875
    new-array v7, v4, [F

    .line 876
    .line 877
    fill-array-data v7, :array_1

    .line 878
    .line 879
    .line 880
    invoke-static {p1, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 881
    .line 882
    .line 883
    move-result-object p1

    .line 884
    iget-boolean v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    .line 885
    .line 886
    if-eqz v2, :cond_2b

    .line 887
    .line 888
    goto :goto_13

    .line 889
    :cond_2b
    const-wide/16 v9, 0x64

    .line 890
    .line 891
    :goto_13
    invoke-virtual {p1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 892
    .line 893
    .line 894
    move-result-object p1

    .line 895
    goto :goto_15

    .line 896
    :cond_2c
    new-array p1, v4, [F

    .line 897
    .line 898
    fill-array-data p1, :array_2

    .line 899
    .line 900
    .line 901
    invoke-static {p0, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 902
    .line 903
    .line 904
    move-result-object p1

    .line 905
    iget-boolean v11, p0, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    .line 906
    .line 907
    if-eqz v11, :cond_2d

    .line 908
    .line 909
    move-wide v7, v9

    .line 910
    :cond_2d
    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 911
    .line 912
    .line 913
    move-result-object p1

    .line 914
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 915
    .line 916
    new-array p1, v4, [F

    .line 917
    .line 918
    fill-array-data p1, :array_3

    .line 919
    .line 920
    .line 921
    invoke-static {p0, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 922
    .line 923
    .line 924
    move-result-object p1

    .line 925
    iget-boolean v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    .line 926
    .line 927
    if-eqz v2, :cond_2e

    .line 928
    .line 929
    goto :goto_14

    .line 930
    :cond_2e
    const-wide/16 v9, 0x64

    .line 931
    .line 932
    :goto_14
    invoke-virtual {p1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 933
    .line 934
    .line 935
    move-result-object p1

    .line 936
    :goto_15
    iget-boolean v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    .line 937
    .line 938
    if-eqz v2, :cond_2f

    .line 939
    .line 940
    const-wide/16 v7, 0x640

    .line 941
    .line 942
    goto :goto_16

    .line 943
    :cond_2f
    const-wide/16 v7, 0x546

    .line 944
    .line 945
    :goto_16
    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 946
    .line 947
    .line 948
    new-instance v2, Lcom/android/systemui/power/ChargerAnimationView$1;

    .line 949
    .line 950
    invoke-direct {v2, p0}, Lcom/android/systemui/power/ChargerAnimationView$1;-><init>(Lcom/android/systemui/power/ChargerAnimationView;)V

    .line 951
    .line 952
    .line 953
    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 954
    .line 955
    .line 956
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    .line 957
    .line 958
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 959
    .line 960
    .line 961
    move-result-object p1

    .line 962
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 963
    .line 964
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 965
    .line 966
    .line 967
    iget-boolean p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    .line 968
    .line 969
    if-eqz p1, :cond_30

    .line 970
    .line 971
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    .line 972
    .line 973
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 974
    .line 975
    .line 976
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    .line 977
    .line 978
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 979
    .line 980
    .line 981
    goto :goto_17

    .line 982
    :cond_30
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    .line 983
    .line 984
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 985
    .line 986
    .line 987
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    .line 988
    .line 989
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 990
    .line 991
    .line 992
    :goto_17
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    .line 993
    .line 994
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    .line 995
    .line 996
    iget v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mSuperFastChargingType:I

    .line 997
    .line 998
    if-eq v3, p3, :cond_31

    .line 999
    .line 1000
    if-eq v3, v0, :cond_31

    .line 1001
    .line 1002
    if-eq v3, v1, :cond_31

    .line 1003
    .line 1004
    const p3, 0x7f080931

    .line 1005
    .line 1006
    .line 1007
    goto :goto_18

    .line 1008
    :cond_31
    const p3, 0x7f080932

    .line 1009
    .line 1010
    .line 1011
    :goto_18
    invoke-virtual {v2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1012
    .line 1013
    .line 1014
    move-result-object p3

    .line 1015
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1016
    .line 1017
    .line 1018
    new-instance p1, Landroid/view/animation/PathInterpolator;

    .line 1019
    .line 1020
    const p3, 0x3ea8f5c3    # 0.33f

    .line 1021
    .line 1022
    .line 1023
    const/4 v1, 0x0

    .line 1024
    const v2, 0x3f2b851f    # 0.67f

    .line 1025
    .line 1026
    .line 1027
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1028
    .line 1029
    invoke-direct {p1, p3, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1030
    .line 1031
    .line 1032
    new-instance v2, Landroid/view/animation/PathInterpolator;

    .line 1033
    .line 1034
    const v5, 0x3ecccccd    # 0.4f

    .line 1035
    .line 1036
    .line 1037
    invoke-direct {v2, p3, v1, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1038
    .line 1039
    .line 1040
    iget-object p3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    .line 1041
    .line 1042
    new-array v1, v4, [F

    .line 1043
    .line 1044
    fill-array-data v1, :array_4

    .line 1045
    .line 1046
    .line 1047
    const-string/jumbo v3, "scaleX"

    .line 1048
    .line 1049
    .line 1050
    invoke-static {p3, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 1051
    .line 1052
    .line 1053
    move-result-object p3

    .line 1054
    const-wide/16 v7, 0xe9

    .line 1055
    .line 1056
    invoke-virtual {p3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1057
    .line 1058
    .line 1059
    iget-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    .line 1060
    .line 1061
    if-eqz v1, :cond_32

    .line 1062
    .line 1063
    const-wide/16 v9, 0x64

    .line 1064
    .line 1065
    goto :goto_19

    .line 1066
    :cond_32
    const-wide/16 v9, 0x0

    .line 1067
    .line 1068
    :goto_19
    invoke-virtual {p3, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {p3, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1072
    .line 1073
    .line 1074
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    .line 1075
    .line 1076
    new-array v5, v4, [F

    .line 1077
    .line 1078
    fill-array-data v5, :array_5

    .line 1079
    .line 1080
    .line 1081
    const-string/jumbo v9, "scaleY"

    .line 1082
    .line 1083
    .line 1084
    invoke-static {v1, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v1

    .line 1088
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1092
    .line 1093
    .line 1094
    iget-object v5, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    .line 1095
    .line 1096
    new-array v7, v4, [F

    .line 1097
    .line 1098
    fill-array-data v7, :array_6

    .line 1099
    .line 1100
    .line 1101
    invoke-static {v5, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v5

    .line 1105
    const-wide/16 v7, 0x10b

    .line 1106
    .line 1107
    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v5, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1111
    .line 1112
    .line 1113
    iget-object v10, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    .line 1114
    .line 1115
    new-array v11, v4, [F

    .line 1116
    .line 1117
    fill-array-data v11, :array_7

    .line 1118
    .line 1119
    .line 1120
    invoke-static {v10, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v10

    .line 1124
    invoke-virtual {v10, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v10, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1128
    .line 1129
    .line 1130
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    .line 1131
    .line 1132
    new-array v7, v4, [F

    .line 1133
    .line 1134
    fill-array-data v7, :array_8

    .line 1135
    .line 1136
    .line 1137
    invoke-static {p1, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 1138
    .line 1139
    .line 1140
    move-result-object p1

    .line 1141
    const-wide/16 v7, 0xb7

    .line 1142
    .line 1143
    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1147
    .line 1148
    .line 1149
    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    .line 1150
    .line 1151
    new-array v4, v4, [F

    .line 1152
    .line 1153
    fill-array-data v4, :array_9

    .line 1154
    .line 1155
    .line 1156
    invoke-static {v3, v9, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v3

    .line 1160
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1164
    .line 1165
    .line 1166
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1167
    .line 1168
    iget-object v4, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 1169
    .line 1170
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v2

    .line 1174
    invoke-virtual {v2, p3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1175
    .line 1176
    .line 1177
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1178
    .line 1179
    invoke-virtual {v2, p3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1180
    .line 1181
    .line 1182
    move-result-object p3

    .line 1183
    invoke-virtual {p3, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1184
    .line 1185
    .line 1186
    move-result-object p3

    .line 1187
    invoke-virtual {p3, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1188
    .line 1189
    .line 1190
    iget-object p3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1191
    .line 1192
    invoke-virtual {p3, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1193
    .line 1194
    .line 1195
    move-result-object p3

    .line 1196
    invoke-virtual {p3, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1197
    .line 1198
    .line 1199
    move-result-object p3

    .line 1200
    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1201
    .line 1202
    .line 1203
    iget-object p3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1204
    .line 1205
    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1206
    .line 1207
    .line 1208
    move-result-object p1

    .line 1209
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1210
    .line 1211
    .line 1212
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 1213
    .line 1214
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 1215
    .line 1216
    .line 1217
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1218
    .line 1219
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBatteryLevelText()V

    .line 1223
    .line 1224
    .line 1225
    const-string p0, "PowerUI.ChargerAnimationView"

    .line 1226
    .line 1227
    const-string p1, "Animation Started"

    .line 1228
    .line 1229
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    .line 1231
    .line 1232
    :goto_1a
    iput-boolean v6, p2, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    .line 1233
    .line 1234
    iget-boolean p0, p2, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    .line 1235
    .line 1236
    if-eqz p0, :cond_33

    .line 1237
    .line 1238
    iget-boolean p0, p2, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    .line 1239
    .line 1240
    if-nez p0, :cond_33

    .line 1241
    .line 1242
    iget p0, p2, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 1243
    .line 1244
    if-eq v0, p0, :cond_33

    .line 1245
    .line 1246
    const-string p0, "PowerUI"

    .line 1247
    .line 1248
    const-string p1, "Current charging plug is not wireless but mIsDeviceMovign is not still released. We should release mIsDeviceMoving to true !!"

    .line 1249
    .line 1250
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    .line 1252
    .line 1253
    iput-boolean v6, p2, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    .line 1254
    .line 1255
    :cond_33
    return-void

    .line 1256
    nop

    .line 1257
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f866666    # 1.05f
    .end array-data

    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    :array_5
    .array-data 4
        0x3f000000    # 0.5f
        0x3f866666    # 1.05f
    .end array-data

    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    :array_6
    .array-data 4
        0x3f866666    # 1.05f
        0x3f75c28f    # 0.96f
    .end array-data

    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    :array_7
    .array-data 4
        0x3f866666    # 1.05f
        0x3f75c28f    # 0.96f
    .end array-data

    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    :array_8
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3f800000    # 1.0f
    .end array-data

    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    :array_9
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static -$$Nest$mplayChargerConnectionSound(IILcom/android/systemui/power/PowerUI;Z)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "priorPlugType = "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " mPlugType = "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p2, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 21
    .line 22
    const-string v2, " priorBatteryStatus = "

    .line 23
    .line 24
    const-string v3, " mBatteryStatus = "

    .line 25
    .line 26
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget v1, p2, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 30
    .line 31
    const-string v2, "PowerUI"

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v0, p2, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 37
    .line 38
    iget v1, p2, Lcom/android/systemui/power/PowerUI;->mBatteryProtectionThreshold:I

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    const/4 v4, 0x0

    .line 42
    if-lt v0, v1, :cond_0

    .line 43
    .line 44
    iget-boolean v0, p2, Lcom/android/systemui/power/PowerUI;->mIsProtectingBatteryCutOffSettingEnabled:Z

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    move v0, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v0, v4

    .line 51
    :goto_0
    if-eqz v0, :cond_1

    .line 52
    .line 53
    const-string p0, "Skip charging sound - by protect battery cutoff"

    .line 54
    .line 55
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p2, p0, p1, p3}, Lcom/android/systemui/power/PowerUI;->skipAnimByPlugStatus(IIZ)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    const-string p0, "Skip charging sound - by plug status"

    .line 66
    .line 67
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/power/PowerUI;->skipAnimByMotionDetected()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    const-string p0, "Skip charging sound - by motion detected"

    .line 78
    .line 79
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-boolean p0, p2, Lcom/android/systemui/power/PowerUI;->mIsAfterAdaptiveProtection:Z

    .line 84
    .line 85
    if-eqz p0, :cond_4

    .line 86
    .line 87
    const-string p0, "Skip charging sound - After adaptive protection"

    .line 88
    .line 89
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :goto_1
    move p0, v4

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    move p0, v3

    .line 95
    :goto_2
    if-eqz p0, :cond_6

    .line 96
    .line 97
    iget-boolean p0, p2, Lcom/android/systemui/power/PowerUI;->mIsRunningStopPowerSoundTask:Z

    .line 98
    .line 99
    iget-object p1, p2, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 100
    .line 101
    iget-object p3, p2, Lcom/android/systemui/power/PowerUI;->mStopPowerSoundTask:Lcom/android/systemui/power/PowerUI$12;

    .line 102
    .line 103
    if-eqz p0, :cond_5

    .line 104
    .line 105
    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    .line 107
    .line 108
    iput-boolean v4, p2, Lcom/android/systemui/power/PowerUI;->mIsRunningStopPowerSoundTask:Z

    .line 109
    .line 110
    :cond_5
    iget-object p0, p2, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 111
    .line 112
    invoke-virtual {p0, v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->playPowerSound(I)V

    .line 113
    .line 114
    .line 115
    const-wide/16 v0, 0xbb8

    .line 116
    .line 117
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    .line 119
    .line 120
    iput-boolean v3, p2, Lcom/android/systemui/power/PowerUI;->mIsRunningStopPowerSoundTask:Z

    .line 121
    .line 122
    :cond_6
    return-void
.end method

.method public static -$$Nest$msendLowBatteryDumpIfNeeded(Lcom/android/systemui/power/PowerUI;III)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "LOW_BATTERY_DUMP"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v2, v1, :cond_3

    .line 16
    .line 17
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 18
    .line 19
    sub-int v2, p1, v1

    .line 20
    .line 21
    const/16 v3, 0xa

    .line 22
    .line 23
    if-ge v2, v3, :cond_0

    .line 24
    .line 25
    sub-int/2addr v1, p1

    .line 26
    if-lt v1, v3, :cond_1

    .line 27
    .line 28
    :cond_0
    const/4 v1, -0x1

    .line 29
    if-ne v1, p1, :cond_2

    .line 30
    .line 31
    :cond_1
    if-ge p3, p2, :cond_3

    .line 32
    .line 33
    const/4 p1, -0x2

    .line 34
    if-ne p1, p3, :cond_3

    .line 35
    .line 36
    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    .line 37
    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    const-string p0, "PowerUI"

    .line 41
    .line 42
    const-string p1, "Low battery dump"

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    new-instance p0, Landroid/content/Intent;

    .line 48
    .line 49
    const-string p1, "com.samsung.systemui.power.action.LOW_BATTERY_DUMP"

    .line 50
    .line 51
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/high16 p1, 0x1000000

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    return-void
.end method

.method public static -$$Nest$mshowChargingNotice(Lcom/android/systemui/power/PowerUI;III)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 6
    .line 7
    const-string v3, "dismissChargingNotification()"

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/systemui/power/PowerUI;->mAfterChargingNoticeTask:Lcom/android/systemui/power/PowerUI$11;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Lcom/android/systemui/power/PowerUI$13;

    .line 14
    .line 15
    const-string v7, "SecPowerUI.Notification"

    .line 16
    .line 17
    const/16 v8, 0x2e

    .line 18
    .line 19
    const-string v9, "PowerUI"

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    iget-object v11, v0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 23
    .line 24
    const/4 v12, 0x4

    .line 25
    const/4 v13, 0x1

    .line 26
    const/4 v14, 0x2

    .line 27
    if-ne v14, v2, :cond_d

    .line 28
    .line 29
    iget v2, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 30
    .line 31
    if-eq v13, v2, :cond_5

    .line 32
    .line 33
    if-ne v14, v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    if-ne v12, v2, :cond_4

    .line 37
    .line 38
    if-eq v13, v1, :cond_1

    .line 39
    .line 40
    if-ne v14, v1, :cond_2

    .line 41
    .line 42
    :cond_1
    invoke-virtual {v11, v10}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showChargingTypeSwitchedNotice(Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-boolean v2, v0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    .line 46
    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    iget-boolean v2, v0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    iget-boolean v2, v0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRegistered:Z

    .line 54
    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    const-string v2, "Register SContextListener"

    .line 58
    .line 59
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-object v2, v0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 63
    .line 64
    invoke-virtual {v2, v6, v8}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 65
    .line 66
    .line 67
    iput-boolean v13, v0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRegistered:Z

    .line 68
    .line 69
    :cond_3
    iget-boolean v2, v0, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    .line 70
    .line 71
    if-nez v2, :cond_7

    .line 72
    .line 73
    if-eq v12, v1, :cond_7

    .line 74
    .line 75
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    const-string v2, "dismissWirelessFodAlertDialog"

    .line 79
    .line 80
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iget-object v2, v11, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWirelessFodAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 84
    .line 85
    if-eqz v2, :cond_7

    .line 86
    .line 87
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    iput-boolean v10, v11, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mDoNotShowChargingNotice:Z

    .line 92
    .line 93
    iput v10, v11, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    .line 94
    .line 95
    iput v10, v11, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    .line 96
    .line 97
    const-wide/16 v12, 0x0

    .line 98
    .line 99
    iput-wide v12, v11, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    .line 100
    .line 101
    iput-boolean v10, v11, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mShowChargingNotice:Z

    .line 102
    .line 103
    invoke-virtual {v11}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissSlowByChargerConnectionInfoPopUp()V

    .line 104
    .line 105
    .line 106
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11, v14}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    .line 114
    .line 115
    iput-boolean v10, v0, Lcom/android/systemui/power/PowerUI;->mIsChangedStringAfterCharging:Z

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    :goto_0
    if-ne v12, v1, :cond_6

    .line 119
    .line 120
    const/4 v13, 0x1

    .line 121
    invoke-virtual {v11, v13}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showChargingTypeSwitchedNotice(Z)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    :goto_1
    const/4 v13, 0x1

    .line 126
    :cond_7
    :goto_2
    iget v2, v0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 127
    .line 128
    if-eqz v2, :cond_c

    .line 129
    .line 130
    iget v2, v0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    .line 131
    .line 132
    if-eq v2, v13, :cond_c

    .line 133
    .line 134
    invoke-virtual {v11}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showChargingNotice()V

    .line 135
    .line 136
    .line 137
    sget-boolean v2, Lcom/android/systemui/PowerUiRune;->ADAPTIVE_PROTECTION_NOTIFICATION:Z

    .line 138
    .line 139
    const-wide/16 v14, 0x1388

    .line 140
    .line 141
    if-eqz v2, :cond_a

    .line 142
    .line 143
    iget-boolean v2, v0, Lcom/android/systemui/power/PowerUI;->mIsChangedStringAfterCharging:Z

    .line 144
    .line 145
    if-nez v2, :cond_8

    .line 146
    .line 147
    iget-boolean v2, v0, Lcom/android/systemui/power/PowerUI;->mIsAfterAdaptiveProtection:Z

    .line 148
    .line 149
    if-eqz v2, :cond_9

    .line 150
    .line 151
    :cond_8
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    .line 153
    .line 154
    :cond_9
    iget-boolean v2, v0, Lcom/android/systemui/power/PowerUI;->mIsAfterAdaptiveProtection:Z

    .line 155
    .line 156
    if-nez v2, :cond_c

    .line 157
    .line 158
    invoke-virtual {v5, v4, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_a
    iget-boolean v2, v0, Lcom/android/systemui/power/PowerUI;->mIsChangedStringAfterCharging:Z

    .line 163
    .line 164
    if-eqz v2, :cond_b

    .line 165
    .line 166
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    .line 168
    .line 169
    :cond_b
    invoke-virtual {v5, v4, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    .line 171
    .line 172
    :cond_c
    :goto_3
    move-object v2, v9

    .line 173
    goto :goto_4

    .line 174
    :cond_d
    iput-boolean v10, v11, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mDoNotShowChargingNotice:Z

    .line 175
    .line 176
    iput v10, v11, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    .line 177
    .line 178
    iput v10, v11, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    .line 179
    .line 180
    move-object v2, v9

    .line 181
    const-wide/16 v8, 0x0

    .line 182
    .line 183
    iput-wide v8, v11, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    .line 184
    .line 185
    iput-boolean v10, v11, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mShowChargingNotice:Z

    .line 186
    .line 187
    invoke-virtual {v11}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissSlowByChargerConnectionInfoPopUp()V

    .line 188
    .line 189
    .line 190
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    invoke-virtual {v11, v14}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    .line 198
    .line 199
    iput-boolean v10, v0, Lcom/android/systemui/power/PowerUI;->mIsChangedStringAfterCharging:Z

    .line 200
    .line 201
    iget-boolean v3, v0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    .line 202
    .line 203
    if-eqz v3, :cond_e

    .line 204
    .line 205
    iget-boolean v3, v0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRegistered:Z

    .line 206
    .line 207
    if-eqz v3, :cond_e

    .line 208
    .line 209
    iget-boolean v3, v0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    .line 210
    .line 211
    if-eqz v3, :cond_e

    .line 212
    .line 213
    const/4 v3, 0x4

    .line 214
    if-ne v3, v1, :cond_f

    .line 215
    .line 216
    const-string v4, "Unregister SContextListener - From Check charging type"

    .line 217
    .line 218
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    iget-object v4, v0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 222
    .line 223
    const/16 v5, 0x2e

    .line 224
    .line 225
    invoke-virtual {v4, v6, v5}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 226
    .line 227
    .line 228
    iput-boolean v10, v0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRegistered:Z

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_e
    :goto_4
    const/4 v3, 0x4

    .line 232
    :cond_f
    :goto_5
    if-ne v3, v1, :cond_14

    .line 233
    .line 234
    iget v1, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 235
    .line 236
    if-nez v1, :cond_14

    .line 237
    .line 238
    move/from16 v1, p2

    .line 239
    .line 240
    if-ne v1, v3, :cond_10

    .line 241
    .line 242
    const/4 v1, 0x3

    .line 243
    move/from16 v3, p3

    .line 244
    .line 245
    if-ne v3, v1, :cond_10

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_10
    move v13, v10

    .line 249
    :goto_6
    if-nez v13, :cond_11

    .line 250
    .line 251
    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    .line 252
    .line 253
    if-nez v0, :cond_11

    .line 254
    .line 255
    const-string v0, "Wireless charger has been disconnected but this is no move case, so we do nothing !!"

    .line 256
    .line 257
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_11
    iget-boolean v0, v11, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mFTAMode:Z

    .line 262
    .line 263
    if-eqz v0, :cond_12

    .line 264
    .line 265
    const-string v0, "FTA Mode is ON so don\'t show Wireless charging disconnect warning"

    .line 266
    .line 267
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_12
    const-string/jumbo v0, "showWirelessChargerDisconnectToast() - byHighTemp = "

    .line 272
    .line 273
    .line 274
    invoke-static {v0, v13, v7}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    if-eqz v13, :cond_14

    .line 278
    .line 279
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    iget-object v1, v11, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 284
    .line 285
    if-eqz v0, :cond_13

    .line 286
    .line 287
    const v0, 0x7f1301fb

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    goto :goto_7

    .line 295
    :cond_13
    const v0, 0x7f1301fa

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    :goto_7
    invoke-static {v1, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 307
    .line 308
    .line 309
    :cond_14
    :goto_8
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "PowerUI"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Ldagger/Lazy;Lcom/android/systemui/power/PowerUI$WarningsUI;Lcom/android/systemui/power/EnhancedEstimates;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Landroid/os/PowerManager;Lcom/android/systemui/settings/UserTracker;Ldagger/Lazy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/power/PowerUI$WarningsUI;",
            "Lcom/android/systemui/power/EnhancedEstimates;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Landroid/os/PowerManager;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v0, Lcom/android/systemui/power/PowerUI$Receiver;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    .line 17
    .line 18
    new-instance v0, Landroid/content/res/Configuration;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    new-array v2, v2, [I

    .line 33
    .line 34
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 35
    .line 36
    const-wide/16 v2, -0x1

    .line 37
    .line 38
    iput-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 39
    .line 40
    const/16 v2, 0x64

    .line 41
    .line 42
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 46
    .line 47
    new-instance v3, Lcom/android/systemui/power/PowerUI$1;

    .line 48
    .line 49
    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 50
    .line 51
    .line 52
    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWakefulnessObserver:Lcom/android/systemui/power/PowerUI$1;

    .line 53
    .line 54
    new-instance v3, Lcom/android/systemui/power/PowerUI$2;

    .line 55
    .line 56
    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 57
    .line 58
    .line 59
    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 60
    .line 61
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    .line 62
    .line 63
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningStopPowerSoundTask:Z

    .line 64
    .line 65
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    .line 66
    .line 67
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    .line 68
    .line 69
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    .line 70
    .line 71
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    .line 72
    .line 73
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsChangedStringAfterCharging:Z

    .line 74
    .line 75
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 76
    .line 77
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    .line 80
    .line 81
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsWirelessMisalignTask:Z

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 85
    .line 86
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    .line 87
    .line 88
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    .line 89
    .line 90
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRegistered:Z

    .line 91
    .line 92
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    .line 93
    .line 94
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    .line 95
    .line 96
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    .line 97
    .line 98
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    .line 99
    .line 100
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mTemperatureHiccupState:Z

    .line 101
    .line 102
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    .line 103
    .line 104
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 105
    .line 106
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsShutdownTaskDelayed:Z

    .line 107
    .line 108
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 109
    .line 110
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mCallState:I

    .line 111
    .line 112
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    .line 113
    .line 114
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentEvent:I

    .line 115
    .line 116
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsProtectingBatteryCutOffSettingEnabled:Z

    .line 117
    .line 118
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mProtectBatteryValue:I

    .line 119
    .line 120
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsAfterAdaptiveProtection:Z

    .line 121
    .line 122
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryMiscEvent:I

    .line 123
    .line 124
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mTurnOffPsmLevel:I

    .line 125
    .line 126
    new-instance v0, Lcom/android/systemui/power/PowerUI$7;

    .line 127
    .line 128
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 129
    .line 130
    .line 131
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Lcom/android/systemui/power/PowerUI$7;

    .line 132
    .line 133
    new-instance v0, Lcom/android/systemui/power/PowerUI$8;

    .line 134
    .line 135
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 136
    .line 137
    .line 138
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOnOffCallback:Lcom/android/systemui/power/PowerUI$8;

    .line 139
    .line 140
    new-instance v0, Lcom/android/systemui/power/PowerUI$9;

    .line 141
    .line 142
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$9;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Lcom/android/systemui/power/PowerUI$9;

    .line 146
    .line 147
    new-instance v0, Lcom/android/systemui/power/PowerUI$10;

    .line 148
    .line 149
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$10;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 150
    .line 151
    .line 152
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPhoneStateListener:Lcom/android/systemui/power/PowerUI$10;

    .line 153
    .line 154
    new-instance v0, Lcom/android/systemui/power/PowerUI$11;

    .line 155
    .line 156
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$11;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 157
    .line 158
    .line 159
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mAfterChargingNoticeTask:Lcom/android/systemui/power/PowerUI$11;

    .line 160
    .line 161
    new-instance v0, Lcom/android/systemui/power/PowerUI$12;

    .line 162
    .line 163
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$12;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 164
    .line 165
    .line 166
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mStopPowerSoundTask:Lcom/android/systemui/power/PowerUI$12;

    .line 167
    .line 168
    new-instance v0, Lcom/android/systemui/power/PowerUI$13;

    .line 169
    .line 170
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$13;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 171
    .line 172
    .line 173
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Lcom/android/systemui/power/PowerUI$13;

    .line 174
    .line 175
    new-instance v0, Lcom/android/systemui/power/PowerUI$14;

    .line 176
    .line 177
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$14;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 178
    .line 179
    .line 180
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignTimeoutTask:Lcom/android/systemui/power/PowerUI$14;

    .line 181
    .line 182
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    iput-object p2, p0, Lcom/android/systemui/power/PowerUI;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 185
    .line 186
    iput-object p3, p0, Lcom/android/systemui/power/PowerUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 187
    .line 188
    iput-object p4, p0, Lcom/android/systemui/power/PowerUI;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 189
    .line 190
    iput-object p5, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 191
    .line 192
    iput-object p6, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    .line 193
    .line 194
    iput-object p8, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 195
    .line 196
    iput-object p7, p0, Lcom/android/systemui/power/PowerUI;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 197
    .line 198
    iput-object p9, p0, Lcom/android/systemui/power/PowerUI;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 199
    .line 200
    new-instance p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 201
    .line 202
    invoke-direct {p2, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;-><init>(Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    iput-object p2, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 206
    .line 207
    iput-object p10, p0, Lcom/android/systemui/power/PowerUI;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 208
    .line 209
    return-void
.end method

.method public static getLayoutParam(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 1
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x2

    .line 6
    const v4, 0x1000100

    .line 7
    .line 8
    .line 9
    const/4 v5, -0x3

    .line 10
    move-object v0, v6

    .line 11
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 12
    .line 13
    .line 14
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/high16 v0, 0x40000

    .line 19
    .line 20
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    return-object v6
.end method


# virtual methods
.method public final checkAdaptiveProtectionNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "checkAdaptiveProtectionNotification : "

    .line 2
    .line 3
    const-string v1, ", lev : "

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "PowerUI"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const-string v0, "on"

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const-string v2, "key_sleep_charging"

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    const/16 v6, 0x64

    .line 37
    .line 38
    const/4 v7, 0x4

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mProtectBatteryValue:I

    .line 42
    .line 43
    if-ne v0, v7, :cond_1

    .line 44
    .line 45
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 46
    .line 47
    if-eq p0, v6, :cond_0

    .line 48
    .line 49
    const-string/jumbo p0, "show AdaptiveProtectionNotification"

    .line 50
    .line 51
    .line 52
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, p2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showAdaptiveProtectionNotification(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const-string/jumbo v0, "update"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mProtectBatteryValue:I

    .line 76
    .line 77
    if-ne v0, v7, :cond_3

    .line 78
    .line 79
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 80
    .line 81
    if-eq p0, v6, :cond_2

    .line 82
    .line 83
    const-string/jumbo p0, "update AdaptiveProtectionNotification"

    .line 84
    .line 85
    .line 86
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, p2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showAdaptiveProtectionNotification(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const/4 p1, 0x2

    .line 97
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    const-string p2, "off"

    .line 102
    .line 103
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    const-string p1, "off AdaptiveProtectionNotification"

    .line 110
    .line 111
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissAdaptiveProtectionNotification()V

    .line 115
    .line 116
    .line 117
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mIsAfterAdaptiveProtection:Z

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    const-string p1, "dismiss AdaptiveProtectionNotification"

    .line 121
    .line 122
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissAdaptiveProtectionNotification()V

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void
.end method

.method public final checkBatteryProtectionNotification()V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "checkBatteryProtectionNotification : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", pb value : "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mProtectBatteryValue:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", plugType : "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", level : "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 39
    .line 40
    const-string v2, "PowerUI"

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/android/systemui/power/PowerUtils;->isSleepChargingOn(Landroid/content/Context;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/16 v2, 0x9

    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 54
    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mProtectBatteryValue:I

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 62
    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 66
    .line 67
    const/4 v5, 0x2

    .line 68
    if-eq v4, v5, :cond_2

    .line 69
    .line 70
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 71
    .line 72
    if-ne v4, v5, :cond_2

    .line 73
    .line 74
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 75
    .line 76
    if-nez v4, :cond_2

    .line 77
    .line 78
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 79
    .line 80
    const/4 v6, 0x3

    .line 81
    const/16 v7, 0x64

    .line 82
    .line 83
    const/4 v8, 0x4

    .line 84
    if-ne v4, v7, :cond_0

    .line 85
    .line 86
    if-eq v1, v6, :cond_2

    .line 87
    .line 88
    if-ne v1, v8, :cond_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/power/PowerUtils;->isSleepChargingOn(Landroid/content/Context;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 98
    .line 99
    if-lt v0, v8, :cond_3

    .line 100
    .line 101
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 102
    .line 103
    if-ne v0, v5, :cond_3

    .line 104
    .line 105
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 106
    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mProtectBatteryValue:I

    .line 110
    .line 111
    if-eq v0, v5, :cond_1

    .line 112
    .line 113
    const/4 v1, 0x1

    .line 114
    if-eq v0, v1, :cond_1

    .line 115
    .line 116
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 117
    .line 118
    if-eq p0, v7, :cond_3

    .line 119
    .line 120
    if-eq v0, v6, :cond_1

    .line 121
    .line 122
    if-ne v0, v8, :cond_3

    .line 123
    .line 124
    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 129
    .line 130
    .line 131
    :cond_3
    :goto_1
    return-void
.end method

.method public final checkOverheatShutdownHappened()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "checkOverheatShutdownHappened, boot completed : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    .line 9
    .line 10
    const-string v2, "PowerUI"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v1, "com.android.systemui.power_overheat_shutdown_happened"

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_5

    .line 25
    .line 26
    const-string v4, "OverheatShutdownHappened"

    .line 27
    .line 28
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_4

    .line 33
    .line 34
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    .line 43
    .line 44
    new-instance v1, Landroid/content/Intent;

    .line 45
    .line 46
    const-string v2, "com.android.systemui.power.action.ACTION_CLEAR_SHUTDOWN"

    .line 47
    .line 48
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "SHOULD_SHUT_DOWN"

    .line 63
    .line 64
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v1, 0x1

    .line 69
    if-ne v1, v0, :cond_0

    .line 70
    .line 71
    move v3, v1

    .line 72
    :cond_0
    const-string v0, "SecPowerUI.Notification"

    .line 73
    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    const-string p0, "don\'t show Overheat shutdown notice while Shutdown is ON"

    .line 77
    .line 78
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroidx/appcompat/app/AlertDialog;

    .line 83
    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    const-string p0, "don\'t show Overheat shutdown notice while Over heat shutdown warning"

    .line 87
    .line 88
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    const-string/jumbo v1, "showOverheatShutdownHappenedNotice()"

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    const-string/jumbo v1, "showOverheatShutdownHappenedPopUp()"

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroidx/appcompat/app/AlertDialog;

    .line 105
    .line 106
    if-nez v0, :cond_5

    .line 107
    .line 108
    const/16 v0, 0x9

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroidx/appcompat/app/AlertDialog;

    .line 115
    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$10;

    .line 120
    .line 121
    invoke-direct {v1, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$10;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroidx/appcompat/app/AlertDialog;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroidx/appcompat/app/AlertDialog;

    .line 133
    .line 134
    const/4 v1, -0x1

    .line 135
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$11;

    .line 140
    .line 141
    invoke-direct {v1, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$11;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->turnOnScreen()V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_4
    const-string p0, "Not an overheat shutdown case"

    .line 152
    .line 153
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    :cond_5
    :goto_0
    return-void
.end method

.method public final clearScheduling()V
    .locals 4

    .line 1
    const-string v0, "PowerUI"

    .line 2
    .line 3
    const-string v1, "Clear time"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ltc_highsoc_exceed_time"

    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "charger_connected_time"

    .line 35
    .line 36
    const-string v2, ""

    .line 37
    .line 38
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    const-string v0, "com.android.systemui.power_auto_on_protect_battery"

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v0, "auto_on_protect_battery_timer_started"

    .line 55
    .line 56
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    .line 58
    .line 59
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public final dismissAdaptiveProtectionNotification()V
    .locals 4

    .line 1
    const-string v0, "PowerUI"

    .line 2
    .line 3
    const-string v1, "dismissAdaptiveProtectionNotification"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 13
    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    iput-object v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOptimizationChargingFinishTime:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "key_sleep_charging"

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingStartTime:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "off"

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSleepChargingEvent:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method

.method public final dismissInattentiveSleepWarning(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mDismissing:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mFadeOutAnimator:Landroid/animation/Animator;

    .line 18
    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/android/systemui/power/InattentiveSleepWarningView$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lcom/android/systemui/power/InattentiveSleepWarningView$$ExternalSyntheticLambda1;-><init>(Landroid/animation/Animator;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x4

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mWindowManager:Landroid/view/WindowManager;

    .line 36
    .line 37
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized doSkinThermalEventListenerRegistration()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string/jumbo v2, "show_temperature_warning"

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const v4, 0x7f0b0030

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    move v1, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v1, v3

    .line 37
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    if-eq v1, v0, :cond_5

    .line 40
    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    new-instance v0, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    const-string/jumbo v0, "thermalservice"

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 68
    .line 69
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    .line 76
    .line 77
    const/4 v4, 0x3

    .line 78
    invoke-interface {v0, v1, v4}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    .line 86
    .line 87
    invoke-interface {v0, v1}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 88
    .line 89
    .line 90
    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    :try_start_2
    const-string v1, "PowerUI"

    .line 94
    .line 95
    const-string v4, "Exception while (un)registering skin thermal event listener."

    .line 96
    .line 97
    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    move v0, v3

    .line 101
    :goto_1
    if-nez v0, :cond_5

    .line 102
    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    .line 104
    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move v2, v3

    .line 109
    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    .line 110
    .line 111
    const-string v0, "PowerUI"

    .line 112
    .line 113
    const-string v1, "Failed to register or unregister skin thermal event listener."

    .line 114
    .line 115
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .line 117
    .line 118
    :cond_5
    monitor-exit p0

    .line 119
    return-void

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    monitor-exit p0

    .line 122
    throw v0
.end method

.method public declared-synchronized doUsbThermalEventListenerRegistration()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string/jumbo v2, "show_usb_temperature_alarm"

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const v4, 0x7f0b0031

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    move v1, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v1, v3

    .line 37
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    if-eq v1, v0, :cond_5

    .line 40
    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    new-instance v0, Lcom/android/systemui/power/PowerUI$UsbThermalEventListener;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$UsbThermalEventListener;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    const-string/jumbo v0, "thermalservice"

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 68
    .line 69
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    .line 76
    .line 77
    const/4 v4, 0x4

    .line 78
    invoke-interface {v0, v1, v4}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    .line 86
    .line 87
    invoke-interface {v0, v1}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 88
    .line 89
    .line 90
    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    :try_start_2
    const-string v1, "PowerUI"

    .line 94
    .line 95
    const-string v4, "Exception while (un)registering usb thermal event listener."

    .line 96
    .line 97
    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    move v0, v3

    .line 101
    :goto_1
    if-nez v0, :cond_5

    .line 102
    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    .line 104
    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move v2, v3

    .line 109
    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    .line 110
    .line 111
    const-string v0, "PowerUI"

    .line 112
    .line 113
    const-string v1, "Failed to register or unregister usb thermal event listener."

    .line 114
    .line 115
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .line 117
    .line 118
    :cond_5
    monitor-exit p0

    .line 119
    return-void

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    monitor-exit p0

    .line 122
    throw v0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "mLowBatteryAlertCloseLevel="

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 9
    .line 10
    .line 11
    const-string p2, "mLowBatteryReminderLevels="

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 17
    .line 18
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p2, "mBatteryLevel="

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget p2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 31
    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p2, "mBatteryStatus="

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget p2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 45
    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p2, "mPlugType="

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget p2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 59
    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p2, "mInvalidCharger="

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 73
    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "mScreenOffTime="

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 87
    .line 88
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 89
    .line 90
    .line 91
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 92
    .line 93
    const-wide/16 v2, 0x0

    .line 94
    .line 95
    cmp-long v0, v0, v2

    .line 96
    .line 97
    if-ltz v0, :cond_0

    .line 98
    .line 99
    const-string v0, " ("

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 109
    .line 110
    sub-long/2addr v0, v2

    .line 111
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 112
    .line 113
    .line 114
    const-string v0, " ago)"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 120
    .line 121
    .line 122
    const-string/jumbo v0, "soundTimeout="

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const-string v1, "low_battery_sound_timeout"

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 142
    .line 143
    .line 144
    const-string v0, "bucket: "

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 150
    .line 151
    invoke-virtual {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string v0, "mEnableSkinTemperatureWarning="

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 170
    .line 171
    .line 172
    const-string v0, "mEnableUsbTemperatureAlarm="

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    sget-boolean v1, Lcom/android/systemui/PowerUiRune;->CHN_SMART_MANAGER:Z

    .line 188
    .line 189
    if-nez v1, :cond_1

    .line 190
    .line 191
    new-instance v1, Lcom/android/systemui/power/HandlerWrapper;

    .line 192
    .line 193
    invoke-direct {v1}, Lcom/android/systemui/power/HandlerWrapper;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-object v1, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandlerWrapper:Lcom/android/systemui/power/HandlerWrapper;

    .line 197
    .line 198
    new-instance v3, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda1;

    .line 199
    .line 200
    invoke-direct {v3, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, v1, Lcom/android/systemui/power/HandlerWrapper;->mWorker:Landroid/os/Handler;

    .line 204
    .line 205
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    .line 207
    .line 208
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 209
    .line 210
    check-cast p0, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 211
    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    const-string v0, "mWarning="

    .line 216
    .line 217
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 221
    .line 222
    .line 223
    const-string v0, "mPlaySound="

    .line 224
    .line 225
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-boolean p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 235
    .line 236
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 237
    .line 238
    .line 239
    const-string p2, "mShowing="

    .line 240
    .line 241
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    sget-object p2, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    .line 245
    .line 246
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    .line 247
    .line 248
    aget-object p2, p2, v0

    .line 249
    .line 250
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const-string p2, "mSaverConfirmation="

    .line 254
    .line 255
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 259
    .line 260
    const-string v0, "not null"

    .line 261
    .line 262
    const/4 v1, 0x0

    .line 263
    if-eqz p2, :cond_2

    .line 264
    .line 265
    move-object p2, v0

    .line 266
    goto :goto_0

    .line 267
    :cond_2
    move-object p2, v1

    .line 268
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const-string p2, "mSaverEnabledConfirmation="

    .line 272
    .line 273
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const-string p2, "mHighTempWarning="

    .line 277
    .line 278
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-boolean p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    .line 282
    .line 283
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 284
    .line 285
    .line 286
    const-string p2, "mHighTempDialog="

    .line 287
    .line 288
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 292
    .line 293
    if-eqz p2, :cond_3

    .line 294
    .line 295
    move-object p2, v0

    .line 296
    goto :goto_1

    .line 297
    :cond_3
    move-object p2, v1

    .line 298
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    const-string p2, "mThermalShutdownDialog="

    .line 302
    .line 303
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 307
    .line 308
    if-eqz p2, :cond_4

    .line 309
    .line 310
    move-object p2, v0

    .line 311
    goto :goto_2

    .line 312
    :cond_4
    move-object p2, v1

    .line 313
    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    const-string p2, "mUsbHighTempDialog="

    .line 317
    .line 318
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUsbHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 322
    .line 323
    if-eqz p0, :cond_5

    .line 324
    .line 325
    goto :goto_3

    .line 326
    :cond_5
    move-object v0, v1

    .line 327
    :goto_3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    return-void
.end method

.method public final findBatteryLevelBucket(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    aget v2, p0, v0

    .line 11
    .line 12
    if-le p1, v2, :cond_1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    array-length v0, p0

    .line 16
    sub-int/2addr v0, v1

    .line 17
    :goto_0
    if-ltz v0, :cond_3

    .line 18
    .line 19
    aget v1, p0, v0

    .line 20
    .line 21
    if-gt p1, v1, :cond_2

    .line 22
    .line 23
    rsub-int/lit8 p0, v0, -0x1

    .line 24
    .line 25
    return p0

    .line 26
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 30
    .line 31
    const-string p1, "not possible!"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public maybeShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)V
    .locals 6

    .line 1
    iget v0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 7
    .line 8
    const-string v4, "PowerUI"

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    .line 13
    .line 14
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    const-string v0, "Charge cycle reset! Can show warnings again"

    .line 19
    .line 20
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    iget v0, p2, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iget v5, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    .line 27
    .line 28
    if-ne v5, v0, :cond_1

    .line 29
    .line 30
    iget-boolean p2, p2, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    :cond_1
    move v2, v1

    .line 35
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/PowerUI;->shouldShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 40
    .line 41
    if-eqz p2, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showLowBatteryWarning(Z)V

    .line 44
    .line 45
    .line 46
    iget p2, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    .line 47
    .line 48
    iget p1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->severeLevelThreshold:I

    .line 49
    .line 50
    if-gt p2, p1, :cond_3

    .line 51
    .line 52
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    .line 53
    .line 54
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    .line 55
    .line 56
    if-eqz v3, :cond_8

    .line 57
    .line 58
    const-string p0, "Severe warning marked as shown this cycle"

    .line 59
    .line 60
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const-string p1, "Low warning marked as shown this cycle"

    .line 65
    .line 66
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/PowerUI;->shouldDismissHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_6

    .line 77
    .line 78
    if-eqz v3, :cond_5

    .line 79
    .line 80
    const-string p0, "Dismissing warning"

    .line 81
    .line 82
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    if-eqz v3, :cond_7

    .line 90
    .line 91
    const-string p0, "Updating warning"

    .line 92
    .line 93
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_7
    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 97
    .line 98
    .line 99
    :cond_8
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    and-int/lit8 p1, p1, 0x3

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v0, Lcom/android/systemui/power/PowerUI$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public refreshEstimateIfNeeded()Lcom/android/settingslib/fuelgauge/Estimate;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-wide v1, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->timeRemainingMillis:J

    .line 6
    .line 7
    const-wide/16 v3, -0x1

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 14
    .line 15
    iget v0, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    .line 16
    .line 17
    if-eq v1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/settingslib/fuelgauge/Estimate;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 23
    .line 24
    iget-wide v3, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->timeRemainingMillis:J

    .line 25
    .line 26
    iget-boolean v5, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->isBasedOnUsage:Z

    .line 27
    .line 28
    iget-wide v6, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->averageTimeToDischargeMillis:J

    .line 29
    .line 30
    move-object v2, v0

    .line 31
    invoke-direct/range {v2 .. v7}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    .line 36
    .line 37
    check-cast p0, Lcom/android/systemui/power/EnhancedEstimatesImpl;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance p0, Lcom/android/settingslib/fuelgauge/Estimate;

    .line 43
    .line 44
    const-wide/16 v1, -0x1

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    const-wide/16 v4, -0x1

    .line 48
    .line 49
    move-object v0, p0

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    .line 51
    .line 52
    .line 53
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string/jumbo v1, "updated estimate: "

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-wide v1, p0, Lcom/android/settingslib/fuelgauge/Estimate;->estimateMillis:J

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "PowerUI"

    .line 75
    .line 76
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_2
    return-object p0
.end method

.method public final removeChargerView()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "PowerUI"

    .line 15
    .line 16
    const-string v2, "onChargerAnimationEnd : Lcd OFF -> so call chargingAnimStarted(false)"

    .line 17
    .line 18
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 22
    .line 23
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-interface {v3, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    .line 45
    .line 46
    :cond_1
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public final removeMisalignView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowManager:Landroid/view/WindowManager;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    .line 31
    .line 32
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowManager:Landroid/view/WindowManager;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsWirelessMisalignTask:Z

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignTimeoutTask:Lcom/android/systemui/power/PowerUI$14;

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final setWirelessMisalignView(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "PowerUI.WirelessMisalignViewLp"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->getLayoutParam(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 12
    .line 13
    const/16 v1, 0x7d9

    .line 14
    .line 15
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 16
    .line 17
    :cond_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowManager:Landroid/view/WindowManager;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    const-string v4, "PowerUI"

    .line 30
    .line 31
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    if-nez v1, :cond_7

    .line 34
    .line 35
    const-string v1, "folder state : "

    .line 36
    .line 37
    invoke-static {v1, v0, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-boolean v1, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FLIP:Z

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    move v6, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v6, v3

    .line 49
    :goto_0
    const-string/jumbo v7, "window"

    .line 50
    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    invoke-static {v5}, Lcom/android/systemui/power/PowerUtils;->getSubDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-boolean v1, Lcom/android/systemui/PowerUiRune;->COVER_DISPLAY_LARGE_SCREEN:Z

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 64
    .line 65
    const/4 v6, 0x3

    .line 66
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 67
    .line 68
    :cond_2
    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Landroid/view/WindowManager;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowManager:Landroid/view/WindowManager;

    .line 75
    .line 76
    const v1, 0x7f0d004f

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/android/systemui/power/WirelessMisalignView;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Landroid/view/WindowManager;

    .line 93
    .line 94
    iput-object v6, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowManager:Landroid/view/WindowManager;

    .line 95
    .line 96
    const v6, 0x7f0d004e

    .line 97
    .line 98
    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-static {v5, v6, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/android/systemui/power/WirelessMisalignView;

    .line 110
    .line 111
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    .line 115
    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    const v0, 0x7f0d004d

    .line 119
    .line 120
    .line 121
    invoke-static {v5, v0, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lcom/android/systemui/power/WirelessMisalignView;

    .line 126
    .line 127
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    if-eqz v1, :cond_6

    .line 131
    .line 132
    const v0, 0x7f0d004c

    .line 133
    .line 134
    .line 135
    invoke-static {v5, v0, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Lcom/android/systemui/power/WirelessMisalignView;

    .line 140
    .line 141
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_6
    invoke-static {v5, v6, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lcom/android/systemui/power/WirelessMisalignView;

    .line 149
    .line 150
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    .line 151
    .line 152
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowManager:Landroid/view/WindowManager;

    .line 153
    .line 154
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    .line 155
    .line 156
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 157
    .line 158
    invoke-interface {v0, v1, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    .line 162
    .line 163
    iput-object p0, v0, Lcom/android/systemui/power/WirelessMisalignView;->mListener:Lcom/android/systemui/power/WirelessMisalignListener;

    .line 164
    .line 165
    if-eqz p1, :cond_9

    .line 166
    .line 167
    if-eq p1, v2, :cond_8

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_8
    iget-object p1, v0, Lcom/android/systemui/power/WirelessMisalignView;->mTextContainerLayout:Landroid/widget/RelativeLayout;

    .line 171
    .line 172
    const/16 v1, 0x8

    .line 173
    .line 174
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    iget-object p1, v0, Lcom/android/systemui/power/WirelessMisalignView;->mButton:Landroid/widget/Button;

    .line 178
    .line 179
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    iget-object p1, v0, Lcom/android/systemui/power/WirelessMisalignView;->mCenterImageView:Landroid/widget/ImageView;

    .line 183
    .line 184
    const v0, 0x7f080ce7

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_9
    iget-object p1, v0, Lcom/android/systemui/power/WirelessMisalignView;->mTextContainerLayout:Landroid/widget/RelativeLayout;

    .line 192
    .line 193
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    iget-object p1, v0, Lcom/android/systemui/power/WirelessMisalignView;->mButton:Landroid/widget/Button;

    .line 197
    .line 198
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    iget-object p1, v0, Lcom/android/systemui/power/WirelessMisalignView;->mCenterImageView:Landroid/widget/ImageView;

    .line 202
    .line 203
    const v0, 0x7f080ce6

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    .line 208
    .line 209
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 210
    .line 211
    if-eqz p1, :cond_b

    .line 212
    .line 213
    const-string/jumbo v0, "turn on screen - misalign view"

    .line 214
    .line 215
    .line 216
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 220
    .line 221
    .line 222
    move-result-wide v0

    .line 223
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 231
    .line 232
    if-nez v0, :cond_a

    .line 233
    .line 234
    const v0, 0x10000006

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v0, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 242
    .line 243
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 244
    .line 245
    const-wide/16 v0, 0x7530

    .line 246
    .line 247
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 248
    .line 249
    .line 250
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    .line 251
    .line 252
    invoke-virtual {p0, v3}, Lcom/android/systemui/power/WirelessMisalignView;->setWirelessMisalignViewVisibility(I)V

    .line 253
    .line 254
    .line 255
    return-void
.end method

.method public shouldDismissHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 0

    .line 1
    iget-boolean p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    .line 2
    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    iget p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    .line 6
    .line 7
    iget p1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->lowLevelThreshold:I

    .line 8
    .line 9
    if-le p0, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method public shouldDismissLowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 0

    .line 1
    iget-boolean p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver:Z

    .line 2
    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    .line 6
    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    iget p0, p2, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    .line 10
    .line 11
    iget p1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    .line 12
    .line 13
    if-le p1, p0, :cond_0

    .line 14
    .line 15
    if-lez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public shouldShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 6

    .line 1
    iget-boolean v0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    .line 2
    .line 3
    const-string v1, "PowerUI"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget v4, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryStatus:I

    .line 8
    .line 9
    if-nez v0, :cond_6

    .line 10
    .line 11
    if-ne v4, v3, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    .line 15
    .line 16
    iget v4, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-boolean v0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget v0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->lowLevelThreshold:I

    .line 25
    .line 26
    if-gt v4, v0, :cond_1

    .line 27
    .line 28
    move v0, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v2

    .line 31
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    .line 32
    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    iget v5, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->severeLevelThreshold:I

    .line 36
    .line 37
    if-gt v4, v5, :cond_2

    .line 38
    .line 39
    move v4, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v4, v2

    .line 42
    :goto_1
    if-nez v0, :cond_3

    .line 43
    .line 44
    if-eqz v4, :cond_4

    .line 45
    .line 46
    :cond_3
    move v2, v3

    .line 47
    :cond_4
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    const-string v0, "Enhanced trigger is: "

    .line 52
    .line 53
    const-string v3, "\nwith battery snapshot: mLowWarningShownThisChargeCycle: "

    .line 54
    .line 55
    invoke-static {v0, v2, v3}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, " mSevereWarningShownThisChargeCycle: "

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-boolean p0, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p0, "\n"

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_5
    return v2

    .line 94
    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v0, "can\'t show warning due to - plugged: "

    .line 97
    .line 98
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-boolean p1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p1, " status unknown: "

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    if-ne v4, v3, :cond_7

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_7
    move v3, v2

    .line 115
    :goto_3
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    return v2
.end method

.method public shouldShowLowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 1

    .line 1
    iget-boolean p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    .line 2
    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver:Z

    .line 6
    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    iget p0, p2, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    .line 10
    .line 11
    iget v0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    .line 12
    .line 13
    if-lt v0, p0, :cond_0

    .line 14
    .line 15
    iget-boolean p0, p2, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    :cond_0
    if-gez v0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    iget p1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryStatus:I

    .line 23
    .line 24
    if-eq p1, p0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final showInattentiveSleepWarning()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/power/InattentiveSleepWarningView;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/android/systemui/power/InattentiveSleepWarningView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mFadeOutAnimator:Landroid/animation/Animator;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mFadeOutAnimator:Landroid/animation/Animator;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mWindowManager:Landroid/view/WindowManager;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mWindowToken:Landroid/os/IBinder;

    .line 48
    .line 49
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    .line 50
    .line 51
    const/4 v3, -0x1

    .line 52
    const/4 v4, -0x1

    .line 53
    const/16 v5, 0x7d6

    .line 54
    .line 55
    const/16 v6, 0x100

    .line 56
    .line 57
    const/4 v7, -0x3

    .line 58
    move-object v2, v8

    .line 59
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 60
    .line 61
    .line 62
    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 63
    .line 64
    or-int/lit8 v2, v2, 0x10

    .line 65
    .line 66
    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 67
    .line 68
    const-string v2, "InattentiveSleepWarning"

    .line 69
    .line 70
    invoke-virtual {v8, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    iput-object v1, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 74
    .line 75
    invoke-interface {v0, p0, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const v1, 0x7f130720

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_0
    return-void
.end method

.method public final showTipsNotification()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "com.android.settings"

    .line 12
    .line 13
    const-string v3, "com.android.settings.Settings$HighRefreshRatesSettingsActivity"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const v2, 0x10008000

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    new-instance v2, Landroid/content/Intent;

    .line 25
    .line 26
    const-string v3, "com.samsung.android.sm.TIPS_DELETED"

    .line 27
    .line 28
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v3, "com.android.systemui"

    .line 32
    .line 33
    const-string v4, "com.android.systemui.power.TipsNotificationService"

    .line 34
    .line 35
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const-string v3, "com.samsung.android.app.tips"

    .line 39
    .line 40
    const-string v4, "com.samsung.android.app.tips.TipsIntentService"

    .line 41
    .line 42
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const-string/jumbo v3, "tips_extras"

    .line 46
    .line 47
    .line 48
    const/16 v4, 0x9

    .line 49
    .line 50
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const v3, 0x1d8a7

    .line 54
    .line 55
    .line 56
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string/jumbo v4, "tips_id"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    const-string/jumbo v3, "tips_app_name"

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    const v3, 0x7f130b86

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const-string/jumbo v4, "tips_title"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    const v3, 0x7f130b85

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const-string/jumbo v4, "tips_text"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    const-string/jumbo v3, "tips_noti_category"

    .line 105
    .line 106
    .line 107
    const-string v4, "CATEGORY_RECOMMENDATION"

    .line 108
    .line 109
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    const-string/jumbo v3, "tips_action"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    const-string/jumbo v1, "tips_delete_action"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    const-string/jumbo v1, "tips_delete_action_type"

    .line 125
    .line 126
    .line 127
    const/4 v2, 0x1

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    const-string/jumbo v1, "tips_condition"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    const-string/jumbo v1, "tips_noti_skip_add_action"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    const-string v1, "PowerUI"

    .line 144
    .line 145
    const-string/jumbo v2, "showTipsNotification - ALL condition is OK, so show tips notification !!"

    .line 146
    .line 147
    .line 148
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    const-string v1, "com.android.systemui.power_tips_notification"

    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    if-eqz v1, :cond_0

    .line 159
    .line 160
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const-string/jumbo v2, "tipsNotiLastTime"

    .line 165
    .line 166
    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 168
    .line 169
    .line 170
    move-result-wide v3

    .line 171
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 172
    .line 173
    .line 174
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    .line 176
    .line 177
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public final skipAnimByMotionDetected()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    const-string v0, "Charger connected but device had no move detection"

    .line 16
    .line 17
    const-string v2, "PowerUI"

    .line 18
    .line 19
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v3, 0x1

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const-string v0, "Charger connected but device had no move detection and screen off => trigger AOD"

    .line 32
    .line 33
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 37
    .line 38
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return v3

    .line 57
    :cond_1
    return v1
.end method

.method public final skipAnimByPlugStatus(IIZ)Z
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, "PowerUI"

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p1, v0, :cond_6

    .line 6
    .line 7
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    if-ne v4, v3, :cond_6

    .line 15
    .line 16
    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    .line 17
    .line 18
    if-eqz v5, :cond_6

    .line 19
    .line 20
    const/4 v5, 0x5

    .line 21
    if-eq p2, v5, :cond_0

    .line 22
    .line 23
    if-ne p2, v3, :cond_1

    .line 24
    .line 25
    :cond_0
    if-ne p1, v0, :cond_1

    .line 26
    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 31
    .line 32
    const/16 p2, 0x63

    .line 33
    .line 34
    if-ne p0, p2, :cond_2

    .line 35
    .line 36
    const-string p0, "AFC retry case"

    .line 37
    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :cond_2
    if-ne v0, v2, :cond_3

    .line 43
    .line 44
    if-eq p1, v4, :cond_4

    .line 45
    .line 46
    :cond_3
    if-ne v0, v4, :cond_5

    .line 47
    .line 48
    if-ne p1, v2, :cond_5

    .line 49
    .line 50
    :cond_4
    const-string p0, "Only cable charger type changed"

    .line 51
    .line 52
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return v2

    .line 56
    :cond_5
    const/4 p0, 0x0

    .line 57
    return p0

    .line 58
    :cond_6
    :goto_0
    const-string p0, "Plug reason"

    .line 59
    .line 60
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return v2
.end method

.method public final start()V
    .locals 15

    .line 1
    const-string v0, "PowerUI"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-wide/16 v2, -0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    :goto_0
    iput-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 31
    .line 32
    invoke-virtual {v4, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Lcom/android/systemui/power/PowerUI$3;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v6, "low_power_trigger_level"

    .line 47
    .line 48
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v8, -0x1

    .line 54
    invoke-virtual {v5, v6, v7, v3, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryWarningLevels()V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance v6, Landroid/content/IntentFilter;

    .line 66
    .line 67
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v8, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 71
    .line 72
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    .line 76
    .line 77
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v9, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    .line 81
    .line 82
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v9, "com.samsung.systemui.power.action.WATER_ALERT_SOUND_TEST"

    .line 86
    .line 87
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v9, "com.samsung.intent.action.KSO_SHOW_POPUP"

    .line 91
    .line 92
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string v9, "com.samsung.intent.action.KSO_CLOSE_POPUP"

    .line 96
    .line 97
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v9, "android.intent.action.LOCALE_CHANGED"

    .line 101
    .line 102
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    .line 106
    .line 107
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v11, Landroid/content/IntentFilter;

    .line 111
    .line 112
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v9, "com.samsung.CHECK_COOLDOWN_LEVEL"

    .line 116
    .line 117
    invoke-virtual {v11, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v9, "com.sec.android.intent.action.SAFEMODE_ENABLE"

    .line 121
    .line 122
    invoke-virtual {v11, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v9, v3, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 126
    .line 127
    iget-object v10, v9, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    const-string v12, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    .line 130
    .line 131
    iget-object v13, v9, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 132
    .line 133
    const/4 v14, 0x2

    .line 134
    move-object v9, v10

    .line 135
    move-object v10, v3

    .line 136
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    sget-boolean v9, Lcom/android/systemui/PowerUiRune;->TIPS_NOTIFICATION:Z

    .line 140
    .line 141
    if-eqz v9, :cond_1

    .line 142
    .line 143
    const-string v9, "com.samsung.android.sm.IGNORE_RUT_TIPS_NOTI"

    .line 144
    .line 145
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v9, "com.samsung.android.sm.CLEAR_TIPS_NOTI"

    .line 149
    .line 150
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string v9, "android.intent.action.tips.noti.confirmed"

    .line 154
    .line 155
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_1
    sget-boolean v9, Lcom/android/systemui/PowerUiRune;->INIT_LTC_TIME_CHANGED:Z

    .line 159
    .line 160
    if-eqz v9, :cond_2

    .line 161
    .line 162
    const-string v9, "android.intent.action.TIMEZONE_CHANGED"

    .line 163
    .line 164
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string v9, "android.intent.action.TIME_SET"

    .line 168
    .line 169
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_2
    sget-boolean v9, Lcom/android/systemui/PowerUiRune;->ADAPTIVE_PROTECTION_NOTIFICATION:Z

    .line 173
    .line 174
    if-eqz v9, :cond_3

    .line 175
    .line 176
    const-string v9, "com.samsung.server.BatteryService.action.ACTION_SLEEP_CHARGING"

    .line 177
    .line 178
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_3
    iget-object v9, v3, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 182
    .line 183
    iget-object v10, v9, Lcom/android/systemui/power/PowerUI;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 184
    .line 185
    iget-object v9, v9, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 186
    .line 187
    invoke-virtual {v10, v3, v6, v9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    .line 188
    .line 189
    .line 190
    iget-boolean v6, v3, Lcom/android/systemui/power/PowerUI$Receiver;->mHasReceivedBattery:Z

    .line 191
    .line 192
    const/4 v9, 0x2

    .line 193
    if-nez v6, :cond_4

    .line 194
    .line 195
    iget-object v6, v3, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 196
    .line 197
    iget-object v6, v6, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 198
    .line 199
    new-instance v10, Landroid/content/IntentFilter;

    .line 200
    .line 201
    invoke-direct {v10, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const/4 v8, 0x0

    .line 205
    invoke-virtual {v6, v8, v10, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    if-eqz v6, :cond_4

    .line 210
    .line 211
    iget-object v8, v3, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 212
    .line 213
    iget-object v8, v8, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 214
    .line 215
    invoke-virtual {v3, v8, v6}, Lcom/android/systemui/power/PowerUI$Receiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 216
    .line 217
    .line 218
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 219
    .line 220
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 225
    .line 226
    check-cast v8, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 227
    .line 228
    invoke-virtual {v8, v3, v6}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 229
    .line 230
    .line 231
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWakefulnessObserver:Lcom/android/systemui/power/PowerUI$1;

    .line 232
    .line 233
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 234
    .line 235
    invoke-virtual {v6, v3}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    const-string/jumbo v3, "powerui_prefs"

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    const-string v8, "boot_count"

    .line 246
    .line 247
    const/4 v10, -0x1

    .line 248
    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 253
    .line 254
    .line 255
    move-result-object v10

    .line 256
    invoke-static {v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move-result v10
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_1

    .line 261
    :catch_0
    const-string v10, "Failed to read system boot count from Settings.Global.BOOT_COUNT"

    .line 262
    .line 263
    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    const/4 v10, -0x1

    .line 267
    :goto_1
    const/4 v11, 0x1

    .line 268
    if-le v10, v6, :cond_5

    .line 269
    .line 270
    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-interface {v3, v8, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1}, Landroid/os/PowerManager;->getLastShutdownReason()I

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    const/4 v6, 0x4

    .line 290
    if-ne v3, v6, :cond_5

    .line 291
    .line 292
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 293
    .line 294
    check-cast v3, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 295
    .line 296
    iget-object v6, v3, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 297
    .line 298
    const v8, 0x7f131146

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    new-instance v10, Landroid/app/Notification$Builder;

    .line 306
    .line 307
    const-string v12, "ALR"

    .line 308
    .line 309
    invoke-direct {v10, v6, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    const v12, 0x7f0808c3

    .line 313
    .line 314
    .line 315
    invoke-virtual {v10, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 316
    .line 317
    .line 318
    move-result-object v10

    .line 319
    const-wide/16 v12, 0x0

    .line 320
    .line 321
    invoke-virtual {v10, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 322
    .line 323
    .line 324
    move-result-object v10

    .line 325
    invoke-virtual {v10, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 326
    .line 327
    .line 328
    move-result-object v10

    .line 329
    const v12, 0x7f131147

    .line 330
    .line 331
    .line 332
    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v12

    .line 336
    invoke-virtual {v10, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 337
    .line 338
    .line 339
    move-result-object v10

    .line 340
    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 341
    .line 342
    .line 343
    move-result-object v10

    .line 344
    new-instance v12, Landroid/app/Notification$BigTextStyle;

    .line 345
    .line 346
    invoke-direct {v12}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v12, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 358
    .line 359
    .line 360
    move-result-object v8

    .line 361
    const-string v10, "PNW.clickedThermalShutdownWarning"

    .line 362
    .line 363
    invoke-virtual {v3, v10}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 364
    .line 365
    .line 366
    move-result-object v10

    .line 367
    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 368
    .line 369
    .line 370
    move-result-object v8

    .line 371
    const-string v10, "PNW.dismissedThermalShutdownWarning"

    .line 372
    .line 373
    invoke-virtual {v3, v10}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 374
    .line 375
    .line 376
    move-result-object v10

    .line 377
    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 378
    .line 379
    .line 380
    move-result-object v8

    .line 381
    const v10, 0x1010543

    .line 382
    .line 383
    .line 384
    invoke-static {v10, v6, v7}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(ILandroid/content/Context;I)I

    .line 385
    .line 386
    .line 387
    move-result v10

    .line 388
    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 389
    .line 390
    .line 391
    move-result-object v8

    .line 392
    invoke-static {v6, v8, v7}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 396
    .line 397
    .line 398
    move-result-object v6

    .line 399
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 400
    .line 401
    const/16 v10, 0x27

    .line 402
    .line 403
    iget-object v3, v3, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    .line 404
    .line 405
    const-string v12, "high_temp"

    .line 406
    .line 407
    invoke-virtual {v3, v12, v10, v6, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 408
    .line 409
    .line 410
    :cond_5
    const-string/jumbo v3, "show_temperature_warning"

    .line 411
    .line 412
    .line 413
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    new-instance v6, Lcom/android/systemui/power/PowerUI$4;

    .line 418
    .line 419
    invoke-direct {v6, p0, v4}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v5, v3, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 423
    .line 424
    .line 425
    const-string/jumbo v3, "show_usb_temperature_alarm"

    .line 426
    .line 427
    .line 428
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    new-instance v6, Lcom/android/systemui/power/PowerUI$5;

    .line 433
    .line 434
    invoke-direct {v6, p0, v4}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v5, v3, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->doSkinThermalEventListenerRegistration()V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->doUsbThermalEventListenerRegistration()V

    .line 444
    .line 445
    .line 446
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 447
    .line 448
    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 449
    .line 450
    .line 451
    const-string/jumbo v3, "sys.boot_completed"

    .line 452
    .line 453
    .line 454
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    const-string v6, "1"

    .line 459
    .line 460
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result v3

    .line 464
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    .line 465
    .line 466
    const-string/jumbo v6, "protect_battery"

    .line 467
    .line 468
    .line 469
    if-eqz v3, :cond_8

    .line 470
    .line 471
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->checkOverheatShutdownHappened()V

    .line 472
    .line 473
    .line 474
    sget-boolean v3, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

    .line 475
    .line 476
    if-eqz v3, :cond_7

    .line 477
    .line 478
    invoke-static {v2}, Lcom/android/systemui/power/PowerUtils;->getProtectBatteryValue(Landroid/content/Context;)I

    .line 479
    .line 480
    .line 481
    move-result v3

    .line 482
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    const-string/jumbo v10, "prev_protect_battery_ltc"

    .line 487
    .line 488
    .line 489
    const/4 v12, -0x1

    .line 490
    invoke-static {v8, v10, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 491
    .line 492
    .line 493
    move-result v8

    .line 494
    if-ne v3, v9, :cond_6

    .line 495
    .line 496
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    invoke-static {v3, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 501
    .line 502
    .line 503
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    invoke-static {v3, v10, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 508
    .line 509
    .line 510
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->clearScheduling()V

    .line 511
    .line 512
    .line 513
    :cond_7
    sget-boolean v3, Lcom/android/systemui/PowerUiRune;->ADAPTIVE_PROTECTION_NOTIFICATION:Z

    .line 514
    .line 515
    if-eqz v3, :cond_8

    .line 516
    .line 517
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissAdaptiveProtectionNotification()V

    .line 518
    .line 519
    .line 520
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mIsAfterAdaptiveProtection:Z

    .line 521
    .line 522
    :cond_8
    sget-boolean v3, Lcom/android/systemui/PowerUiRune;->PROTECT_BATTERY_CUTOFF:Z

    .line 523
    .line 524
    if-eqz v3, :cond_b

    .line 525
    .line 526
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    const-string v8, "battery_protection_threshold"

    .line 531
    .line 532
    sget v10, Landroid/provider/Settings$Global;->BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE:I

    .line 533
    .line 534
    invoke-static {v3, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 535
    .line 536
    .line 537
    move-result v3

    .line 538
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryProtectionThreshold:I

    .line 539
    .line 540
    new-instance v3, Lcom/android/systemui/power/PowerUI$6;

    .line 541
    .line 542
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 543
    .line 544
    .line 545
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    const/4 v6, -0x1

    .line 550
    invoke-virtual {v5, v4, v7, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 551
    .line 552
    .line 553
    invoke-static {v2}, Lcom/android/systemui/power/PowerUtils;->getProtectBatteryValue(Landroid/content/Context;)I

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mProtectBatteryValue:I

    .line 558
    .line 559
    if-eq v3, v11, :cond_9

    .line 560
    .line 561
    if-ne v3, v9, :cond_a

    .line 562
    .line 563
    :cond_9
    move v7, v11

    .line 564
    :cond_a
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mIsProtectingBatteryCutOffSettingEnabled:Z

    .line 565
    .line 566
    sget-boolean v3, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

    .line 567
    .line 568
    if-eqz v3, :cond_b

    .line 569
    .line 570
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    const-string v4, "ltc_highsoc_threshold"

    .line 575
    .line 576
    const/16 v5, 0x5f

    .line 577
    .line 578
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mLtcHighSocThreshold:I

    .line 583
    .line 584
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    const-string v4, "ltc_release_threshold"

    .line 589
    .line 590
    const/16 v5, 0x4b

    .line 591
    .line 592
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 593
    .line 594
    .line 595
    move-result v3

    .line 596
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mLtcReleaseThreshold:I

    .line 597
    .line 598
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    const-string v4, "ltc_highsoc_duration"

    .line 603
    .line 604
    const/16 v5, 0x2760

    .line 605
    .line 606
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 607
    .line 608
    .line 609
    move-result v3

    .line 610
    new-instance v4, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    const-string v5, "enabled level : "

    .line 613
    .line 614
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mLtcHighSocThreshold:I

    .line 618
    .line 619
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    const-string v5, ", clear level : "

    .line 623
    .line 624
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mLtcReleaseThreshold:I

    .line 628
    .line 629
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    const-string v5, ", duration : "

    .line 633
    .line 634
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v3

    .line 644
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    .line 646
    .line 647
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 648
    .line 649
    invoke-virtual {v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->restoreScreenTimeOutIfNeeded()V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    const-string v4, "com.sec.feature.sensorhub"

    .line 657
    .line 658
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 659
    .line 660
    .line 661
    move-result v3

    .line 662
    if-eqz v3, :cond_c

    .line 663
    .line 664
    const-string/jumbo v3, "start : hasSystemFeature(com.sec.feature.sensorhub)"

    .line 665
    .line 666
    .line 667
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .line 669
    .line 670
    iput-boolean v11, p0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    .line 671
    .line 672
    const-string/jumbo v3, "scontext"

    .line 673
    .line 674
    .line 675
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v3

    .line 679
    check-cast v3, Landroid/hardware/scontext/SContextManager;

    .line 680
    .line 681
    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 682
    .line 683
    if-eqz v3, :cond_c

    .line 684
    .line 685
    const/16 v4, 0x2e

    .line 686
    .line 687
    invoke-virtual {v3, v4}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    .line 688
    .line 689
    .line 690
    move-result v3

    .line 691
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    .line 692
    .line 693
    new-instance v3, Ljava/lang/StringBuilder;

    .line 694
    .line 695
    const-string/jumbo v4, "start : (mSContextManager != null - mIsSContextEnabled = "

    .line 696
    .line 697
    .line 698
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    .line 702
    .line 703
    invoke-static {v3, v4, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 704
    .line 705
    .line 706
    :cond_c
    const-class v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 707
    .line 708
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 713
    .line 714
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mScreenOnOffCallback:Lcom/android/systemui/power/PowerUI$8;

    .line 715
    .line 716
    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v1, v11, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 724
    .line 725
    const-string/jumbo v0, "phone"

    .line 726
    .line 727
    .line 728
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 733
    .line 734
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mPhoneStateListener:Lcom/android/systemui/power/PowerUI$10;

    .line 735
    .line 736
    const/16 v1, 0x20

    .line 737
    .line 738
    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 739
    .line 740
    .line 741
    return-void
.end method

.method public final startScheduling()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "com.android.systemui.power_auto_on_protect_battery"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "auto_on_protect_battery_timer_started"

    .line 11
    .line 12
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_2

    .line 17
    .line 18
    const-string v2, "PowerUI"

    .line 19
    .line 20
    const-string v4, "Meet soc conditions, start scheduling"

    .line 21
    .line 22
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    sget-boolean v2, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v6, "ltc_highsoc_exceed_time"

    .line 38
    .line 39
    invoke-static {v2, v6, v4, v5}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget-boolean v2, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA:Z

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v5, "charger_connected_time"

    .line 60
    .line 61
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const/4 v0, 0x1

    .line 75
    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    .line 77
    .line 78
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public final updateBatteryWarningLevels()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x10e0056

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const v3, 0x10e00c0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ge v2, v1, :cond_0

    .line 26
    .line 27
    move v2, v1

    .line 28
    :cond_0
    const/4 v3, 0x0

    .line 29
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 30
    .line 31
    aput v2, v4, v3

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    aput v1, v4, v3

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const v1, 0x10e00bf

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v0, v2

    .line 48
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 49
    .line 50
    return-void
.end method
