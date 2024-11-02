.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final DEFAULT_MAX_LEVEL:I

.field public static final FLAG_SMART_VIEW_NONE:I

.field public static final SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static final STREAMS:Landroid/util/ArrayMap;

.field public static final TAG:Ljava/lang/String;

.field public static mIsVolumeStarEnabled:Z


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAudio:Landroid/media/AudioManager;

.field public final mAudioService:Landroid/media/IAudioService;

.field public final mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

.field public final mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiverManager:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

.field public final mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

.field public final mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentUserTrackerCallback:Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;

.field public final mDesktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

.field public mDeviceInteractive:Z

.field public final mDeviceStateManagerWrapper:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

.field public final mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mHasVibrator:Z

.field public mIsAudioMirroringEnabled:Z

.field public mIsBudsTogetherEnabled:Z

.field public mIsDLNAEnabled:Ljava/lang/Boolean;

.field public mIsMusicShareEnabled:Z

.field public mIsSupportTvVolumeControl:Ljava/lang/Boolean;

.field public mIsVibrating:Z

.field public mIsVolumeDialogShowing:Z

.field public mKeyDown:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public mLastToggledRingerOn:J

.field public final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

.field public final mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

.field public final mNoMan:Landroid/app/NotificationManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mRingerModeObservers:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

.field public final mRouter2Manager:Landroid/media/MediaRouter2Manager;

.field public final mSALoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

.field public mShowA11yStream:Z

.field public mShowSafetyWarning:Z

.field public mShowVolumeDialog:Z

.field public mSmartViewFlag:I

.field public final mSoundAssistantChecker:Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

.field public final mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

.field public final mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field public mUserActivityListener:Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

.field public mVolumePolicy:Landroid/media/VolumePolicy;

.field public final mWakefullnessLifecycleObserver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$2;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;


# direct methods
.method public static -$$Nest$mupdateRemoteFixedVolumeSession(Lcom/android/systemui/volume/VolumeDialogControllerImpl;ILandroid/media/session/MediaController$PlaybackInfo;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteFixedVolume:Z

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    move v1, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v1, v0

    .line 24
    :goto_0
    invoke-virtual {p2}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x2

    .line 29
    if-ne v3, v4, :cond_2

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-ne p2, v2, :cond_2

    .line 36
    .line 37
    move p2, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move p2, v0

    .line 40
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    if-eqz p2, :cond_4

    .line 47
    .line 48
    :cond_3
    move v0, v2

    .line 49
    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteFixedVolume:Z

    .line 50
    .line 51
    const-string/jumbo p0, "updateRemoteVolumeRelativeOnly : stream="

    .line 52
    .line 53
    .line 54
    const-string v0, ", isFixedVolume="

    .line 55
    .line 56
    const-string v2, ", isRemoteRelativeVolume="

    .line 57
    .line 58
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :goto_2
    return-void
.end method

.method public static -$$Nest$mupdateStreamVolume(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getLastAudibleStreamVolume(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/16 v2, 0xd

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 30
    .line 31
    new-instance v0, Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const v3, 0x7f13120b

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const v4, 0x7f131234

    .line 59
    .line 60
    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const/4 v2, 0x2

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const v4, 0x7f131233

    .line 74
    .line 75
    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const/4 v2, 0x3

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const v4, 0x7f131230

    .line 89
    .line 90
    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const v2, 0x7f1311fe

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    const/4 v1, 0x5

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const v2, 0x7f131232

    .line 118
    .line 119
    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    const/4 v1, 0x6

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    const/4 v1, 0x7

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const v2, 0x7f1310c2

    .line 141
    .line 142
    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    const/16 v1, 0x8

    .line 151
    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const v2, 0x7f1310bd

    .line 157
    .line 158
    .line 159
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    const/16 v1, 0x9

    .line 167
    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const v2, 0x7f1310c3

    .line 173
    .line 174
    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    const/16 v1, 0xa

    .line 183
    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const v2, 0x7f1310ba

    .line 189
    .line 190
    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    const/16 v1, 0x14

    .line 199
    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    const/16 v1, 0x15

    .line 208
    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    const/16 v1, 0xb

    .line 217
    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    const v2, 0x7f13122f    # 1.9549093E38f

    .line 223
    .line 224
    .line 225
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    const/16 v1, 0x16

    .line 233
    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    const/16 v1, 0x17

    .line 242
    .line 243
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    const v2, 0x7f131231

    .line 248
    .line 249
    .line 250
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    const/16 v0, 0xf

    .line 258
    .line 259
    sput v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->DEFAULT_MAX_LEVEL:I

    .line 260
    .line 261
    const/4 v0, -0x1

    .line 262
    sput v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->FLAG_SMART_VIEW_NONE:I

    .line 263
    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/RingerModeTracker;Lcom/android/systemui/util/concurrency/ThreadFactory;Landroid/media/AudioManager;Landroid/app/NotificationManager;Lcom/android/systemui/statusbar/VibratorHelper;Landroid/media/IAudioService;Landroid/view/accessibility/AccessibilityManager;Landroid/content/pm/PackageManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Landroid/view/accessibility/CaptioningManager;Landroid/app/KeyguardManager;Landroid/app/ActivityManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/volume/util/SALoggingWrapper;Lcom/android/systemui/volume/util/BroadcastReceiverManager;Lcom/android/systemui/volume/util/DisplayManagerWrapper;Lcom/android/systemui/volume/util/DesktopManagerWrapper;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/volume/VolumeDependency;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p11

    .line 4
    .line 5
    move-object/from16 v2, p15

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct {v3, v0, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    .line 14
    .line 15
    .line 16
    new-instance v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 17
    .line 18
    invoke-direct {v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v5, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 22
    .line 23
    new-instance v5, Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 24
    .line 25
    invoke-direct {v5}, Lcom/android/systemui/plugins/VolumeDialogController$State;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v5, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    iput-boolean v5, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceInteractive:Z

    .line 32
    .line 33
    new-instance v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    .line 34
    .line 35
    invoke-direct {v5, v0, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    .line 36
    .line 37
    .line 38
    iput-object v5, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    .line 39
    .line 40
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    .line 42
    iput-object v6, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Ljava/lang/Boolean;

    .line 43
    .line 44
    iput-object v6, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAEnabled:Ljava/lang/Boolean;

    .line 45
    .line 46
    new-instance v6, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;

    .line 47
    .line 48
    invoke-direct {v6, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    .line 49
    .line 50
    .line 51
    iput-object v6, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCurrentUserTrackerCallback:Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;

    .line 52
    .line 53
    new-instance v7, Lcom/android/systemui/volume/VolumeDialogControllerImpl$2;

    .line 54
    .line 55
    invoke-direct {v7, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    .line 56
    .line 57
    .line 58
    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWakefullnessLifecycleObserver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$2;

    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    iput-object v8, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    move-object/from16 v9, p10

    .line 67
    .line 68
    iput-object v9, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 69
    .line 70
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 71
    .line 72
    new-array v9, v4, [Ljava/lang/Object;

    .line 73
    .line 74
    const/4 v10, 0x5

    .line 75
    invoke-static {v10, v9}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    move-object/from16 v9, p4

    .line 79
    .line 80
    check-cast v9, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;

    .line 81
    .line 82
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    new-instance v9, Landroid/os/HandlerThread;

    .line 86
    .line 87
    const-string v10, "VolumeDialogControllerImpl"

    .line 88
    .line 89
    invoke-direct {v9, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    new-instance v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 100
    .line 101
    invoke-direct {v10, v0, v9}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/os/Looper;)V

    .line 102
    .line 103
    .line 104
    iput-object v10, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 105
    .line 106
    invoke-static {v8}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    iput-object v11, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mRouter2Manager:Landroid/media/MediaRouter2Manager;

    .line 111
    .line 112
    new-instance v11, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    .line 113
    .line 114
    invoke-direct {v11, v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    iput-object v11, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    .line 118
    .line 119
    new-instance v12, Lcom/android/settingslib/volume/MediaSessions;

    .line 120
    .line 121
    invoke-direct {v12, v8, v9, v11}, Lcom/android/settingslib/volume/MediaSessions;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/settingslib/volume/MediaSessions$Callbacks;)V

    .line 122
    .line 123
    .line 124
    iput-object v12, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    .line 125
    .line 126
    move-object/from16 v9, p5

    .line 127
    .line 128
    iput-object v9, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 129
    .line 130
    move-object/from16 v9, p6

    .line 131
    .line 132
    iput-object v9, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 133
    .line 134
    new-instance v9, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;

    .line 135
    .line 136
    invoke-direct {v9, v0, v10}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/os/Handler;)V

    .line 137
    .line 138
    .line 139
    new-instance v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    .line 140
    .line 141
    move-object/from16 v11, p3

    .line 142
    .line 143
    check-cast v11, Lcom/android/systemui/util/RingerModeTrackerImpl;

    .line 144
    .line 145
    iget-object v12, v11, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerMode:Lcom/android/systemui/util/RingerModeLiveData;

    .line 146
    .line 147
    iget-object v11, v11, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerModeInternal:Lcom/android/systemui/util/RingerModeLiveData;

    .line 148
    .line 149
    invoke-direct {v10, v0, v12, v11}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/util/RingerModeLiveData;Lcom/android/systemui/util/RingerModeLiveData;)V

    .line 150
    .line 151
    .line 152
    iput-object v10, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mRingerModeObservers:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    .line 153
    .line 154
    iget-object v11, v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerMode:Lcom/android/systemui/util/RingerModeLiveData;

    .line 155
    .line 156
    invoke-virtual {v11}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v12

    .line 164
    iget-object v13, v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 165
    .line 166
    const/4 v14, -0x1

    .line 167
    if-eq v12, v14, :cond_0

    .line 168
    .line 169
    iget-object v15, v13, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 170
    .line 171
    iput v12, v15, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    .line 172
    .line 173
    :cond_0
    iget-object v12, v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerModeObserver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1;

    .line 174
    .line 175
    invoke-virtual {v11, v12}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 176
    .line 177
    .line 178
    iget-object v11, v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerModeInternal:Lcom/android/systemui/util/RingerModeLiveData;

    .line 179
    .line 180
    invoke-virtual {v11}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    if-eq v12, v14, :cond_1

    .line 189
    .line 190
    iget-object v13, v13, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 191
    .line 192
    iput v12, v13, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 193
    .line 194
    :cond_1
    iget-object v10, v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerModeInternalObserver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;

    .line 195
    .line 196
    invoke-virtual {v11, v10}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 197
    .line 198
    .line 199
    move-object/from16 v10, p2

    .line 200
    .line 201
    iput-object v10, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 202
    .line 203
    iget-object v10, v9, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 204
    .line 205
    iget-object v10, v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    .line 206
    .line 207
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    iget-object v11, v9, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 212
    .line 213
    invoke-virtual {v10, v11, v4, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 214
    .line 215
    .line 216
    iget-object v10, v9, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 217
    .line 218
    iget-object v10, v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    .line 219
    .line 220
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    iget-object v11, v9, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    .line 225
    .line 226
    invoke-virtual {v10, v11, v4, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 227
    .line 228
    .line 229
    new-instance v4, Landroid/content/IntentFilter;

    .line 230
    .line 231
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 232
    .line 233
    .line 234
    const-string v9, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 235
    .line 236
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const-string v9, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 240
    .line 241
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const-string v9, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 245
    .line 246
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    const-string v9, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    .line 250
    .line 251
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    .line 255
    .line 256
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const-string v9, "android.intent.action.SCREEN_OFF"

    .line 260
    .line 261
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    const-string v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 265
    .line 266
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object v9, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 270
    .line 271
    iget-object v10, v9, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 272
    .line 273
    iget-object v9, v9, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 274
    .line 275
    invoke-virtual {v10, v3, v4, v9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    .line 276
    .line 277
    .line 278
    move-object/from16 v3, p7

    .line 279
    .line 280
    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 281
    .line 282
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/statusbar/VibratorHelper;->hasVibrator()Z

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    iput-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mHasVibrator:Z

    .line 287
    .line 288
    move-object/from16 v3, p8

    .line 289
    .line 290
    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudioService:Landroid/media/IAudioService;

    .line 291
    .line 292
    move-object/from16 v3, p12

    .line 293
    .line 294
    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 295
    .line 296
    move-object/from16 v3, p13

    .line 297
    .line 298
    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 299
    .line 300
    move-object/from16 v3, p14

    .line 301
    .line 302
    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 303
    .line 304
    iput-object v2, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 305
    .line 306
    move-object/from16 v3, p16

    .line 307
    .line 308
    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 309
    .line 310
    invoke-virtual/range {p9 .. p9}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    invoke-virtual {v5, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->setA11yMode(I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v7}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    move-object/from16 v1, p17

    .line 321
    .line 322
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSALoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

    .line 323
    .line 324
    move-object/from16 v1, p20

    .line 325
    .line 326
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDesktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    .line 327
    .line 328
    move-object/from16 v1, p25

    .line 329
    .line 330
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 331
    .line 332
    move-object/from16 v1, p18

    .line 333
    .line 334
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBroadcastReceiverManager:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    .line 335
    .line 336
    move-object/from16 v1, p19

    .line 337
    .line 338
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 339
    .line 340
    move-object/from16 v1, p21

    .line 341
    .line 342
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 343
    .line 344
    new-instance v1, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    .line 345
    .line 346
    invoke-direct {v1, v8}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;-><init>(Landroid/content/Context;)V

    .line 347
    .line 348
    .line 349
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    .line 350
    .line 351
    move-object/from16 v1, p22

    .line 352
    .line 353
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 354
    .line 355
    move-object/from16 v1, p23

    .line 356
    .line 357
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 358
    .line 359
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    .line 360
    .line 361
    if-eqz v1, :cond_2

    .line 362
    .line 363
    move-object/from16 v1, p24

    .line 364
    .line 365
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceStateManagerWrapper:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    .line 366
    .line 367
    goto :goto_0

    .line 368
    :cond_2
    const/4 v1, 0x0

    .line 369
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceStateManagerWrapper:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    .line 370
    .line 371
    :goto_0
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 372
    .line 373
    new-instance v3, Landroid/os/Handler;

    .line 374
    .line 375
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 380
    .line 381
    .line 382
    invoke-direct {v1, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 383
    .line 384
    .line 385
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 386
    .line 387
    invoke-virtual {v2, v6, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 388
    .line 389
    .line 390
    const-class v1, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    .line 391
    .line 392
    move-object/from16 v2, p26

    .line 393
    .line 394
    invoke-virtual {v2, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    check-cast v1, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    .line 399
    .line 400
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSoundAssistantChecker:Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    .line 401
    .line 402
    return-void
.end method

.method public static isMediaStream(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0x15

    .line 5
    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x16

    .line 9
    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 16
    :goto_1
    return p0
.end method

.method public static updateStreamRoutedToHomeMiniW(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    .line 4
    .line 5
    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard;->Companion:Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-short v0, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;->AI_SPEAKER_GALAXY_HOME_MINI:S

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    filled-new-array {v0}, [Ljava/lang/Short;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isSameDeviceIconType(Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    iput-boolean p0, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHomeMini:Z

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    iput-boolean p0, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHomeMini:Z

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/Map;

    .line 11
    .line 12
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final areCaptionsEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isSystemAudioCaptioningEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final checkRoutedToBluetoothW(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const v3, 0x280003a0

    .line 6
    .line 7
    .line 8
    const v4, 0x400000c

    .line 9
    .line 10
    .line 11
    const/4 v5, 0x3

    .line 12
    if-ne p1, v5, :cond_a

    .line 13
    .line 14
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    and-int/2addr v4, v0

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    move v4, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v4, v2

    .line 24
    :goto_0
    and-int/2addr v3, v0

    .line 25
    if-eqz v3, :cond_4

    .line 26
    .line 27
    const v3, 0x20000002

    .line 28
    .line 29
    .line 30
    if-ne v0, v3, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->leAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    sget-object v3, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothCommonUtil;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->connectedDevices(Landroid/bluetooth/BluetoothProfile;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    :cond_1
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 50
    .line 51
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-lez v0, :cond_4

    .line 56
    .line 57
    :cond_3
    move v0, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    move v0, v2

    .line 60
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 61
    .line 62
    if-eqz v3, :cond_6

    .line 63
    .line 64
    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 65
    .line 66
    if-eqz v3, :cond_6

    .line 67
    .line 68
    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 69
    .line 70
    if-nez v3, :cond_5

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->isEnabled()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    goto :goto_3

    .line 78
    :cond_6
    :goto_2
    move v3, v2

    .line 79
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 80
    .line 81
    iput-boolean v3, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->isLeBroadcasting:Z

    .line 82
    .line 83
    if-eqz v3, :cond_8

    .line 84
    .line 85
    if-eqz v0, :cond_7

    .line 86
    .line 87
    move v2, v1

    .line 88
    goto :goto_4

    .line 89
    :cond_7
    const/4 v2, 0x2

    .line 90
    :cond_8
    :goto_4
    iput v2, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->broadcastMode:I

    .line 91
    .line 92
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToHeadsetW(IZ)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMusicShareEnabled()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_9

    .line 101
    .line 102
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    goto :goto_5

    .line 107
    :cond_9
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    :goto_5
    or-int/2addr v2, p0

    .line 112
    goto/16 :goto_c

    .line 113
    .line 114
    :cond_a
    const/16 v5, 0x15

    .line 115
    .line 116
    if-ne p1, v5, :cond_10

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetPinDevice()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    and-int/2addr v4, v0

    .line 123
    if-eqz v4, :cond_b

    .line 124
    .line 125
    move v4, v1

    .line 126
    goto :goto_6

    .line 127
    :cond_b
    move v4, v2

    .line 128
    :goto_6
    and-int/2addr v3, v0

    .line 129
    if-eqz v3, :cond_c

    .line 130
    .line 131
    move v3, v1

    .line 132
    goto :goto_7

    .line 133
    :cond_c
    move v3, v2

    .line 134
    :goto_7
    const v5, 0x8000

    .line 135
    .line 136
    .line 137
    and-int/2addr v0, v5

    .line 138
    if-eqz v0, :cond_d

    .line 139
    .line 140
    move v0, v1

    .line 141
    goto :goto_8

    .line 142
    :cond_d
    move v0, v2

    .line 143
    :goto_8
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToHeadsetW(IZ)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    or-int/2addr v3, v4

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    iget-boolean v4, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->appMirroring:Z

    .line 157
    .line 158
    if-ne v4, v0, :cond_e

    .line 159
    .line 160
    move v1, v2

    .line 161
    goto :goto_9

    .line 162
    :cond_e
    iput-boolean v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->appMirroring:Z

    .line 163
    .line 164
    sget-boolean p0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 165
    .line 166
    if-eqz p0, :cond_f

    .line 167
    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string/jumbo v2, "updateStreamRoutedToAppMirroring stream="

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p1, " appMirroring="

    .line 180
    .line 181
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    :cond_f
    :goto_9
    or-int v2, v3, v1

    .line 197
    .line 198
    goto :goto_c

    .line 199
    :cond_10
    const/16 v4, 0x17

    .line 200
    .line 201
    if-eq p1, v4, :cond_13

    .line 202
    .line 203
    const/16 v4, 0x16

    .line 204
    .line 205
    if-ne p1, v4, :cond_11

    .line 206
    .line 207
    goto :goto_b

    .line 208
    :cond_11
    if-nez p1, :cond_14

    .line 209
    .line 210
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    and-int/2addr v0, v3

    .line 215
    if-eqz v0, :cond_12

    .line 216
    .line 217
    goto :goto_a

    .line 218
    :cond_12
    move v1, v2

    .line 219
    :goto_a
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    or-int/2addr v2, p0

    .line 224
    goto :goto_c

    .line 225
    :cond_13
    :goto_b
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    .line 226
    .line 227
    .line 228
    move-result p0

    .line 229
    or-int/2addr v2, p0

    .line 230
    :cond_14
    :goto_c
    return v2
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string p2, "VolumeDialogControllerImpl state:"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "  mVolumePolicy: "

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string p2, "  mState: "

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    invoke-virtual {p2, v0}, Lcom/android/systemui/plugins/VolumeDialogController$State;->toString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p2, "  mHasVibrator: "

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mHasVibrator:Z

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    .line 42
    .line 43
    iget-object p2, p2, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    .line 44
    .line 45
    monitor-enter p2

    .line 46
    :try_start_0
    const-string v0, "  mRemoteStreams: "

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const-string p2, "  mShowA11yStream: "

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    const-string p2, "MediaSessions state:"

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string p2, "  mInit: "

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-boolean p2, p0, Lcom/android/settingslib/volume/MediaSessions;->mInit:Z

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 94
    .line 95
    .line 96
    const-string p2, "  mRecords.size: "

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions;->mRecords:Ljava/util/Map;

    .line 102
    .line 103
    check-cast p0, Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const/4 p2, 0x0

    .line 121
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;

    .line 132
    .line 133
    add-int/lit8 p2, p2, 0x1

    .line 134
    .line 135
    iget-object v0, v0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->controller:Landroid/media/session/MediaController;

    .line 136
    .line 137
    const-string v1, "  Controller "

    .line 138
    .line 139
    const-string v2, ": "

    .line 140
    .line 141
    invoke-static {v1, p2, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    .line 164
    .line 165
    .line 166
    move-result-wide v2

    .line 167
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getQueueTitle()Ljava/lang/CharSequence;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getRatingType()I

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    new-instance v10, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v11, "    PlaybackState: "

    .line 198
    .line 199
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v6}, Lcom/android/settingslib/volume/Util;->playbackStateToString(Landroid/media/session/PlaybackState;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v10, "    PlaybackInfo: "

    .line 219
    .line 220
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v5}, Lcom/android/settingslib/volume/Util;->playbackInfoToString(Landroid/media/session/MediaController$PlaybackInfo;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    if-eqz v4, :cond_1

    .line 238
    .line 239
    new-instance v6, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v10, "  MediaMetadata.desc="

    .line 242
    .line 243
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v6, "    RatingType: "

    .line 263
    .line 264
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string v6, "    Flags: "

    .line 280
    .line 281
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const-string v2, "      "

    .line 295
    .line 296
    if-eqz v1, :cond_2

    .line 297
    .line 298
    const-string v3, "    Extras:"

    .line 299
    .line 300
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    if-eqz v4, :cond_2

    .line 316
    .line 317
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    check-cast v4, Ljava/lang/String;

    .line 322
    .line 323
    const-string v6, "="

    .line 324
    .line 325
    invoke-static {v2, v4, v6}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    goto :goto_1

    .line 344
    :cond_2
    if-eqz v8, :cond_3

    .line 345
    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    const-string v3, "    QueueTitle: "

    .line 349
    .line 350
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    :cond_3
    if-eqz v7, :cond_4

    .line 364
    .line 365
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-nez v1, :cond_4

    .line 370
    .line 371
    const-string v1, "    Queue:"

    .line 372
    .line 373
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-eqz v3, :cond_4

    .line 385
    .line 386
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    check-cast v3, Landroid/media/session/MediaSession$QueueItem;

    .line 391
    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto :goto_2

    .line 408
    :cond_4
    if-eqz v5, :cond_0

    .line 409
    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    const-string v2, "    sessionActivity: "

    .line 413
    .line 414
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_0

    .line 428
    .line 429
    :cond_5
    return-void

    .line 430
    :catchall_0
    move-exception p0

    .line 431
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    throw p0
.end method

.method public final getAudioManager()Landroid/media/AudioManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAudioManagerStreamMaxVolume(I)I
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isSmartViewEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 12
    .line 13
    iget p1, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->maxSmartViewVol:I

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/android/systemui/volume/util/SystemServiceExtension;->getDisplayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "mivo"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->maxSmartViewVol:I

    .line 42
    .line 43
    :cond_0
    iget p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->maxSmartViewVol:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v0, 0x15

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 49
    .line 50
    if-eq p1, v0, :cond_5

    .line 51
    .line 52
    const/16 v0, 0x16

    .line 53
    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/16 v0, 0x17

    .line 58
    .line 59
    if-ne p1, v0, :cond_4

    .line 60
    .line 61
    :cond_3
    sget p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->DEFAULT_MAX_LEVEL:I

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    :goto_0
    const/4 p1, 0x3

    .line 70
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    :goto_1
    return p0
.end method

.method public final getAudioManagerStreamMinVolume(I)I
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isSmartViewEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 12
    .line 13
    iget p1, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->minSmartViewVol:I

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/android/systemui/volume/util/SystemServiceExtension;->getDisplayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "mavo"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->minSmartViewVol:I

    .line 42
    .line 43
    :cond_0
    iget p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->minSmartViewVol:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v0, 0x15

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 49
    .line 50
    if-eq p1, v0, :cond_5

    .line 51
    .line 52
    const/16 v0, 0x16

    .line 53
    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/16 v0, 0x17

    .line 58
    .line 59
    if-ne p1, v0, :cond_4

    .line 60
    .line 61
    :cond_3
    const/4 p0, 0x0

    .line 62
    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    goto :goto_1

    .line 68
    :cond_5
    :goto_0
    const/4 p1, 0x3

    .line 69
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    :goto_1
    return p0
.end method

.method public final getCaptionsComponentState(Z)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final getLastAudibleStreamVolume(I)I
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_8

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 16
    .line 17
    iget-boolean v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedDevices()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v5, 0x2

    .line 33
    if-ne v3, v5, :cond_0

    .line 34
    .line 35
    move v3, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v3, v2

    .line 38
    :goto_0
    new-instance v5, Landroid/util/Pair;

    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-direct {v5, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v3, 0x3

    .line 56
    const/16 v6, 0x15

    .line 57
    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Ljava/util/List;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMultiSoundBT()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    if-ne p1, v3, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    goto :goto_3

    .line 77
    :cond_1
    if-ne p1, v6, :cond_2

    .line 78
    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :goto_1
    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    .line 89
    .line 90
    invoke-virtual {v1, p0, v3}, Landroid/media/AudioManager;->semGetFineVolume(Landroid/bluetooth/BluetoothDevice;I)I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    goto :goto_3

    .line 95
    :cond_3
    if-ne p1, v6, :cond_4

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetPinDevice()I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    invoke-virtual {v1, v3, p0}, Landroid/media/AudioManager;->getFineVolume(II)I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    goto :goto_3

    .line 106
    :cond_4
    if-ne p1, v3, :cond_5

    .line 107
    .line 108
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    :goto_2
    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    .line 118
    .line 119
    invoke-virtual {v1, p0, v3}, Landroid/media/AudioManager;->semGetFineVolume(Landroid/bluetooth/BluetoothDevice;I)I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    goto :goto_3

    .line 124
    :cond_6
    if-ne p1, v6, :cond_7

    .line 125
    .line 126
    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetPinDevice()I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    invoke-virtual {v1, v3, p0}, Landroid/media/AudioManager;->getFineVolume(II)I

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    goto :goto_3

    .line 135
    :cond_7
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    :goto_3
    mul-int/lit8 v2, p0, 0xa

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_8
    const/16 v0, 0x14

    .line 143
    .line 144
    if-ne p1, v0, :cond_9

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isSmartViewEnabled()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_b

    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 153
    .line 154
    iget v2, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->displayCurrentVolume:I

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_9
    const/16 v0, 0x17

    .line 158
    .line 159
    if-ne p1, v0, :cond_a

    .line 160
    .line 161
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsBudsTogetherEnabled:Z

    .line 162
    .line 163
    if-eqz p1, :cond_b

    .line 164
    .line 165
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    .line 166
    .line 167
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->service:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    .line 168
    .line 169
    if-eqz p0, :cond_b

    .line 170
    .line 171
    const/4 p1, 0x0

    .line 172
    invoke-virtual {p0, p1}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getAudioSharingDeviceVolume(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    goto :goto_4

    .line 177
    :cond_a
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    :cond_b
    :goto_4
    return v2
.end method

.method public final getState()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final hasVibrator()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mHasVibrator:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isAODVolumePanel()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->aodEnabled:Z

    .line 4
    .line 5
    return p0
.end method

.method public final isAudioMirroring()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsAudioMirroringEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isBudsTogetherEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsBudsTogetherEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isDLNAEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isLeBroadcasting()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 3
    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->isEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :cond_1
    :goto_0
    return v0
.end method

.method public final isMultiSoundBT()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getMultiSoundDevice()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eq p0, v0, :cond_0

    .line 24
    .line 25
    const/16 p0, 0x8

    .line 26
    .line 27
    if-ne v0, p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
.end method

.method public final isMusicShareEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsMusicShareEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsBudsTogetherEnabled:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final isSmartViewEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

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

.method public final isVolumeStarEnabled()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVolumeStarEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final notifyVisible(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVolumeDialogShowing:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->aodEnabled:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iput-boolean v2, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->aodEnabled:Z

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 15
    .line 16
    const/16 v0, 0xc

    .line 17
    .line 18
    invoke-virtual {p0, v0, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onVolumeChangedW(II)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDesktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    iget-object v3, v3, Lcom/android/systemui/volume/util/DesktopManagerWrapper;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 11
    .line 12
    check-cast v3, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/android/systemui/util/DesktopManagerImpl;->isStandalone()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    sget-boolean v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVolumeStarEnabled:Z

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->shouldShowUI(I)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    and-int/lit16 v4, v1, 0x1000

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v4, v2

    .line 36
    :goto_0
    and-int/lit16 v6, v1, 0x800

    .line 37
    .line 38
    if-eqz v6, :cond_2

    .line 39
    .line 40
    const/4 v6, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v6, v2

    .line 43
    :goto_1
    and-int/lit16 v7, v1, 0x80

    .line 44
    .line 45
    if-eqz v7, :cond_3

    .line 46
    .line 47
    const/4 v7, 0x1

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    move v7, v2

    .line 50
    :goto_2
    const/high16 v8, 0x40000

    .line 51
    .line 52
    and-int/2addr v8, v1

    .line 53
    if-eqz v8, :cond_4

    .line 54
    .line 55
    const/4 v8, 0x1

    .line 56
    goto :goto_3

    .line 57
    :cond_4
    move v8, v2

    .line 58
    :goto_3
    iget-object v9, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 59
    .line 60
    iput-boolean v8, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->fixedSCOVolume:Z

    .line 61
    .line 62
    const/high16 v8, 0x4000000

    .line 63
    .line 64
    and-int/2addr v8, v1

    .line 65
    if-eqz v8, :cond_5

    .line 66
    .line 67
    const/4 v8, 0x1

    .line 68
    goto :goto_4

    .line 69
    :cond_5
    move v8, v2

    .line 70
    :goto_4
    iput-boolean v8, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->remoteMic:Z

    .line 71
    .line 72
    const/high16 v8, 0x800000

    .line 73
    .line 74
    and-int/2addr v8, v1

    .line 75
    if-eqz v8, :cond_6

    .line 76
    .line 77
    const/4 v8, 0x1

    .line 78
    goto :goto_5

    .line 79
    :cond_6
    move v8, v2

    .line 80
    :goto_5
    if-eqz v8, :cond_7

    .line 81
    .line 82
    const/16 v8, 0x15

    .line 83
    .line 84
    goto :goto_6

    .line 85
    :cond_7
    move/from16 v8, p1

    .line 86
    .line 87
    :goto_6
    const/high16 v10, 0x400000

    .line 88
    .line 89
    and-int/2addr v10, v1

    .line 90
    if-eqz v10, :cond_8

    .line 91
    .line 92
    const/4 v10, 0x1

    .line 93
    goto :goto_7

    .line 94
    :cond_8
    move v10, v2

    .line 95
    :goto_7
    if-eqz v10, :cond_9

    .line 96
    .line 97
    sget v8, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->FLAG_SMART_VIEW_NONE:I

    .line 98
    .line 99
    iput v8, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSmartViewFlag:I

    .line 100
    .line 101
    const/16 v8, 0x14

    .line 102
    .line 103
    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamMinVolume(I)I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    iput v11, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 112
    .line 113
    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamMaxVolume(I)I

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    iput v11, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 122
    .line 123
    :cond_9
    const/high16 v10, 0x80000

    .line 124
    .line 125
    and-int/2addr v10, v1

    .line 126
    const/4 v11, 0x2

    .line 127
    iget-object v12, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 128
    .line 129
    if-eqz v10, :cond_a

    .line 130
    .line 131
    invoke-virtual {v12}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedDevices()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    if-ne v10, v11, :cond_a

    .line 140
    .line 141
    const/4 v10, 0x1

    .line 142
    goto :goto_8

    .line 143
    :cond_a
    move v10, v2

    .line 144
    :goto_8
    if-eqz v10, :cond_b

    .line 145
    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->shouldDualAudioUIEnabled()Z

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    if-eqz v10, :cond_b

    .line 151
    .line 152
    const/4 v10, 0x1

    .line 153
    goto :goto_9

    .line 154
    :cond_b
    move v10, v2

    .line 155
    :goto_9
    iput-boolean v10, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    .line 156
    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMultiSoundBT()Z

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    sget v13, Lcom/android/systemui/volume/util/StreamUtil;->$r8$clinit:I

    .line 162
    .line 163
    if-eqz v10, :cond_c

    .line 164
    .line 165
    const/16 v10, 0x15

    .line 166
    .line 167
    goto :goto_a

    .line 168
    :cond_c
    const/4 v10, 0x3

    .line 169
    :goto_a
    invoke-virtual {v0, v10}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    const/16 v13, 0x16

    .line 174
    .line 175
    invoke-virtual {v0, v13}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    invoke-virtual {v12}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedDevices()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v14

    .line 183
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v15

    .line 187
    const/4 v5, 0x0

    .line 188
    if-eqz v15, :cond_d

    .line 189
    .line 190
    iget-object v14, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    .line 191
    .line 192
    if-eqz v14, :cond_16

    .line 193
    .line 194
    iput-object v5, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    .line 195
    .line 196
    iput-object v5, v13, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    .line 197
    .line 198
    goto/16 :goto_10

    .line 199
    .line 200
    :cond_d
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 205
    .line 206
    iget-boolean v5, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    .line 207
    .line 208
    if-eqz v5, :cond_e

    .line 209
    .line 210
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    if-ne v5, v11, :cond_e

    .line 215
    .line 216
    const/4 v5, 0x1

    .line 217
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v14

    .line 221
    check-cast v14, Landroid/bluetooth/BluetoothDevice;

    .line 222
    .line 223
    goto :goto_b

    .line 224
    :cond_e
    const/4 v14, 0x0

    .line 225
    :goto_b
    invoke-virtual {v0, v2, v10}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBudsW(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v14, v13}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBudsW(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v2, v10}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToHomeMiniW(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v14, v13}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToHomeMiniW(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)V

    .line 235
    .line 236
    .line 237
    iget-object v5, v12, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->hearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 238
    .line 239
    if-eqz v5, :cond_10

    .line 240
    .line 241
    sget-object v15, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothCommonUtil;

    .line 242
    .line 243
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    invoke-static {v5}, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->connectedDevices(Landroid/bluetooth/BluetoothProfile;)Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    if-eqz v5, :cond_10

    .line 251
    .line 252
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 253
    .line 254
    .line 255
    move-result v15

    .line 256
    xor-int/lit8 v15, v15, 0x1

    .line 257
    .line 258
    if-eqz v15, :cond_f

    .line 259
    .line 260
    goto :goto_c

    .line 261
    :cond_f
    const/4 v5, 0x0

    .line 262
    :goto_c
    if-nez v5, :cond_11

    .line 263
    .line 264
    :cond_10
    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 265
    .line 266
    :cond_11
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    if-nez v5, :cond_12

    .line 271
    .line 272
    const/4 v5, 0x1

    .line 273
    iput-boolean v5, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHearingAid:Z

    .line 274
    .line 275
    goto :goto_d

    .line 276
    :cond_12
    const/4 v5, 0x0

    .line 277
    iput-boolean v5, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHearingAid:Z

    .line 278
    .line 279
    :goto_d
    if-eqz v2, :cond_13

    .line 280
    .line 281
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    goto :goto_e

    .line 286
    :cond_13
    const/4 v2, 0x0

    .line 287
    :goto_e
    if-eqz v14, :cond_14

    .line 288
    .line 289
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    goto :goto_f

    .line 294
    :cond_14
    const/4 v5, 0x0

    .line 295
    :goto_f
    iget-object v14, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    .line 296
    .line 297
    invoke-static {v2, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v14

    .line 301
    if-eqz v14, :cond_15

    .line 302
    .line 303
    iget-object v14, v13, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    .line 304
    .line 305
    invoke-static {v5, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v14

    .line 309
    if-eqz v14, :cond_15

    .line 310
    .line 311
    const/4 v2, 0x0

    .line 312
    goto :goto_11

    .line 313
    :cond_15
    iput-object v2, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    .line 314
    .line 315
    iput-object v5, v13, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    .line 316
    .line 317
    :goto_10
    const/4 v2, 0x1

    .line 318
    :cond_16
    :goto_11
    or-int/lit8 v2, v2, 0x0

    .line 319
    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMultiSoundBT()Z

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    if-eqz v5, :cond_17

    .line 325
    .line 326
    const/16 v5, 0x15

    .line 327
    .line 328
    goto :goto_12

    .line 329
    :cond_17
    const/4 v5, 0x3

    .line 330
    :goto_12
    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    const/16 v10, 0x16

    .line 335
    .line 336
    invoke-virtual {v0, v10}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 337
    .line 338
    .line 339
    move-result-object v10

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMusicShareEnabled()Z

    .line 341
    .line 342
    .line 343
    move-result v13

    .line 344
    if-eqz v13, :cond_19

    .line 345
    .line 346
    iget-object v12, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    .line 347
    .line 348
    invoke-virtual {v12}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->getCastDeviceConnectedName()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v12

    .line 352
    :cond_18
    const/4 v13, 0x0

    .line 353
    goto/16 :goto_1c

    .line 354
    .line 355
    :cond_19
    iget-object v13, v12, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 356
    .line 357
    if-eqz v13, :cond_1a

    .line 358
    .line 359
    sget-object v14, Lcom/android/systemui/volume/util/BluetoothA2dpUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothA2dpUtil;

    .line 360
    .line 361
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    sget-object v14, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothCommonUtil;

    .line 365
    .line 366
    invoke-static {v13}, Lcom/android/systemui/volume/util/BluetoothA2dpUtil;->getOrderConnectedDevices(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/List;

    .line 367
    .line 368
    .line 369
    move-result-object v13

    .line 370
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    invoke-static {v13}, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->mapNames(Ljava/util/List;)Ljava/util/List;

    .line 374
    .line 375
    .line 376
    move-result-object v13

    .line 377
    goto :goto_13

    .line 378
    :cond_1a
    const/4 v13, 0x0

    .line 379
    :goto_13
    if-eqz v13, :cond_1b

    .line 380
    .line 381
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    .line 382
    .line 383
    .line 384
    move-result v14

    .line 385
    const/4 v15, 0x1

    .line 386
    xor-int/2addr v14, v15

    .line 387
    goto :goto_14

    .line 388
    :cond_1b
    const/4 v14, 0x0

    .line 389
    :goto_14
    if-eqz v14, :cond_1c

    .line 390
    .line 391
    goto :goto_15

    .line 392
    :cond_1c
    const/4 v13, 0x0

    .line 393
    :goto_15
    if-nez v13, :cond_23

    .line 394
    .line 395
    iget-object v13, v12, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->leAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 396
    .line 397
    if-eqz v13, :cond_1d

    .line 398
    .line 399
    sget-object v14, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothCommonUtil;

    .line 400
    .line 401
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    invoke-static {v13}, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->connectedDevices(Landroid/bluetooth/BluetoothProfile;)Ljava/util/List;

    .line 405
    .line 406
    .line 407
    move-result-object v13

    .line 408
    invoke-static {v13}, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->mapNames(Ljava/util/List;)Ljava/util/List;

    .line 409
    .line 410
    .line 411
    move-result-object v13

    .line 412
    goto :goto_16

    .line 413
    :cond_1d
    const/4 v13, 0x0

    .line 414
    :goto_16
    if-eqz v13, :cond_1e

    .line 415
    .line 416
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    .line 417
    .line 418
    .line 419
    move-result v14

    .line 420
    const/4 v15, 0x1

    .line 421
    xor-int/2addr v14, v15

    .line 422
    goto :goto_17

    .line 423
    :cond_1e
    const/4 v14, 0x0

    .line 424
    :goto_17
    if-eqz v14, :cond_1f

    .line 425
    .line 426
    goto :goto_18

    .line 427
    :cond_1f
    const/4 v13, 0x0

    .line 428
    :goto_18
    if-nez v13, :cond_23

    .line 429
    .line 430
    iget-object v12, v12, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->hearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 431
    .line 432
    if-eqz v12, :cond_20

    .line 433
    .line 434
    sget-object v13, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothCommonUtil;

    .line 435
    .line 436
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    invoke-static {v12}, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->connectedDevices(Landroid/bluetooth/BluetoothProfile;)Ljava/util/List;

    .line 440
    .line 441
    .line 442
    move-result-object v12

    .line 443
    invoke-static {v12}, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->mapNames(Ljava/util/List;)Ljava/util/List;

    .line 444
    .line 445
    .line 446
    move-result-object v12

    .line 447
    goto :goto_19

    .line 448
    :cond_20
    const/4 v12, 0x0

    .line 449
    :goto_19
    if-eqz v12, :cond_21

    .line 450
    .line 451
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 452
    .line 453
    .line 454
    move-result v13

    .line 455
    const/4 v14, 0x1

    .line 456
    xor-int/2addr v13, v14

    .line 457
    goto :goto_1a

    .line 458
    :cond_21
    const/4 v13, 0x0

    .line 459
    :goto_1a
    if-eqz v13, :cond_22

    .line 460
    .line 461
    goto :goto_1b

    .line 462
    :cond_22
    const/4 v12, 0x0

    .line 463
    :goto_1b
    move-object v13, v12

    .line 464
    if-nez v13, :cond_23

    .line 465
    .line 466
    sget-object v13, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 467
    .line 468
    :cond_23
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 469
    .line 470
    .line 471
    move-result v12

    .line 472
    if-eqz v12, :cond_24

    .line 473
    .line 474
    iget-object v12, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    .line 475
    .line 476
    if-eqz v12, :cond_25

    .line 477
    .line 478
    const/4 v12, 0x0

    .line 479
    iput-object v12, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    .line 480
    .line 481
    iput-object v12, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    .line 482
    .line 483
    goto :goto_1d

    .line 484
    :cond_24
    const/4 v12, 0x0

    .line 485
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v12

    .line 489
    check-cast v12, Ljava/lang/String;

    .line 490
    .line 491
    iget-boolean v14, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    .line 492
    .line 493
    if-eqz v14, :cond_18

    .line 494
    .line 495
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 496
    .line 497
    .line 498
    move-result v14

    .line 499
    if-ne v14, v11, :cond_18

    .line 500
    .line 501
    const/4 v14, 0x1

    .line 502
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v13

    .line 506
    check-cast v13, Ljava/lang/String;

    .line 507
    .line 508
    :goto_1c
    iget-object v14, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    .line 509
    .line 510
    invoke-static {v12, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v14

    .line 514
    if-eqz v14, :cond_26

    .line 515
    .line 516
    iget-object v14, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    .line 517
    .line 518
    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result v14

    .line 522
    if-eqz v14, :cond_26

    .line 523
    .line 524
    :cond_25
    const/4 v5, 0x0

    .line 525
    goto :goto_1e

    .line 526
    :cond_26
    iput-object v12, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    .line 527
    .line 528
    iput-object v13, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    .line 529
    .line 530
    :goto_1d
    const/4 v5, 0x1

    .line 531
    :goto_1e
    or-int/2addr v2, v5

    .line 532
    const/16 v5, 0x16

    .line 533
    .line 534
    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getLastAudibleStreamVolume(I)I

    .line 535
    .line 536
    .line 537
    move-result v10

    .line 538
    invoke-virtual {v0, v5, v10}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    .line 539
    .line 540
    .line 541
    move-result v10

    .line 542
    or-int/2addr v2, v10

    .line 543
    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    .line 544
    .line 545
    .line 546
    move-result v5

    .line 547
    or-int/2addr v2, v5

    .line 548
    if-eqz v3, :cond_27

    .line 549
    .line 550
    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    .line 551
    .line 552
    .line 553
    move-result v5

    .line 554
    or-int/2addr v2, v5

    .line 555
    const/4 v5, 0x3

    .line 556
    if-ne v8, v5, :cond_27

    .line 557
    .line 558
    const/16 v5, 0x15

    .line 559
    .line 560
    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    .line 561
    .line 562
    .line 563
    move-result v5

    .line 564
    or-int/2addr v2, v5

    .line 565
    :cond_27
    sget-boolean v5, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    .line 566
    .line 567
    if-eqz v5, :cond_2c

    .line 568
    .line 569
    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 570
    .line 571
    .line 572
    move-result-object v10

    .line 573
    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getLastAudibleStreamVolume(I)I

    .line 574
    .line 575
    .line 576
    move-result v12

    .line 577
    iget v13, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 578
    .line 579
    invoke-static {v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    .line 580
    .line 581
    .line 582
    move-result v14

    .line 583
    if-eqz v14, :cond_28

    .line 584
    .line 585
    div-int/lit8 v14, v12, 0x64

    .line 586
    .line 587
    goto :goto_1f

    .line 588
    :cond_28
    move v14, v12

    .line 589
    :goto_1f
    if-ne v13, v14, :cond_29

    .line 590
    .line 591
    iget v13, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 592
    .line 593
    if-ne v13, v12, :cond_29

    .line 594
    .line 595
    goto :goto_21

    .line 596
    :cond_29
    iget v11, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 597
    .line 598
    invoke-static {v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    .line 599
    .line 600
    .line 601
    move-result v13

    .line 602
    if-eqz v13, :cond_2a

    .line 603
    .line 604
    div-int/lit8 v13, v12, 0x64

    .line 605
    .line 606
    goto :goto_20

    .line 607
    :cond_2a
    move v13, v12

    .line 608
    :goto_20
    if-ne v11, v13, :cond_2b

    .line 609
    .line 610
    iget v11, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 611
    .line 612
    if-ne v11, v12, :cond_2b

    .line 613
    .line 614
    const/4 v11, 0x3

    .line 615
    goto :goto_21

    .line 616
    :cond_2b
    iget v10, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 617
    .line 618
    if-ge v10, v12, :cond_2c

    .line 619
    .line 620
    const/4 v11, 0x1

    .line 621
    goto :goto_21

    .line 622
    :cond_2c
    const/4 v11, 0x0

    .line 623
    :goto_21
    if-eqz v3, :cond_2d

    .line 624
    .line 625
    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    .line 626
    .line 627
    .line 628
    move-result v10

    .line 629
    or-int/2addr v2, v10

    .line 630
    :cond_2d
    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getLastAudibleStreamVolume(I)I

    .line 631
    .line 632
    .line 633
    move-result v10

    .line 634
    invoke-virtual {v0, v8, v10}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    .line 635
    .line 636
    .line 637
    move-result v12

    .line 638
    or-int/2addr v2, v12

    .line 639
    const-string/jumbo v12, "onVolumeChangedW stream = "

    .line 640
    .line 641
    .line 642
    const-string v13, ", flags = "

    .line 643
    .line 644
    const-string v14, ", lastAudibleStreamVolume = "

    .line 645
    .line 646
    invoke-static {v12, v8, v13, v1, v14}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    move-result-object v12

    .line 650
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    const-string v13, ", changed = "

    .line 654
    .line 655
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    const-string v13, ", showUI = "

    .line 662
    .line 663
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    const-string v13, ", dualAudio = "

    .line 670
    .line 671
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    iget-boolean v13, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    .line 675
    .line 676
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v12

    .line 683
    sget-object v13, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 684
    .line 685
    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .line 687
    .line 688
    iget-object v12, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 689
    .line 690
    if-eqz v2, :cond_2e

    .line 691
    .line 692
    invoke-virtual {v12, v9}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 693
    .line 694
    .line 695
    :cond_2e
    if-eqz v3, :cond_2f

    .line 696
    .line 697
    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 698
    .line 699
    invoke-virtual {v13}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 700
    .line 701
    .line 702
    move-result v13

    .line 703
    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 704
    .line 705
    invoke-virtual {v14}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    .line 706
    .line 707
    .line 708
    move-result v14

    .line 709
    const/4 v15, 0x1

    .line 710
    invoke-virtual {v12, v15, v13, v14}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowRequested(IZI)V

    .line 711
    .line 712
    .line 713
    :cond_2f
    if-eqz v6, :cond_30

    .line 714
    .line 715
    invoke-virtual {v12}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowVibrateHint()V

    .line 716
    .line 717
    .line 718
    :cond_30
    if-eqz v7, :cond_31

    .line 719
    .line 720
    invoke-virtual {v12}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowSilentHint()V

    .line 721
    .line 722
    .line 723
    :cond_31
    and-int/lit8 v6, v1, 0x4

    .line 724
    .line 725
    if-eqz v6, :cond_32

    .line 726
    .line 727
    const/4 v6, 0x1

    .line 728
    goto :goto_22

    .line 729
    :cond_32
    const/4 v6, 0x0

    .line 730
    :goto_22
    if-eqz v5, :cond_36

    .line 731
    .line 732
    if-eqz v3, :cond_37

    .line 733
    .line 734
    if-nez v6, :cond_33

    .line 735
    .line 736
    const/4 v5, 0x3

    .line 737
    if-eq v11, v5, :cond_33

    .line 738
    .line 739
    const/4 v5, 0x2

    .line 740
    if-ne v11, v5, :cond_34

    .line 741
    .line 742
    :cond_33
    invoke-virtual {v12, v8, v4, v11}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onPlaySound(IZI)V

    .line 743
    .line 744
    .line 745
    :cond_34
    invoke-static {v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    .line 746
    .line 747
    .line 748
    move-result v5

    .line 749
    if-eqz v5, :cond_35

    .line 750
    .line 751
    div-int/lit8 v5, v10, 0x64

    .line 752
    .line 753
    goto :goto_23

    .line 754
    :cond_35
    move v5, v10

    .line 755
    :goto_23
    new-instance v6, Landroid/content/Intent;

    .line 756
    .line 757
    const-string v7, "com.android.server.LightsService.action.LED_CONTROL_WHITE_LED_PATTERN"

    .line 758
    .line 759
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    const-string v7, "details"

    .line 763
    .line 764
    const-string v11, "Volume:Light"

    .line 765
    .line 766
    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    .line 768
    .line 769
    const-string v7, "mode"

    .line 770
    .line 771
    const/16 v11, 0xa

    .line 772
    .line 773
    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 774
    .line 775
    .line 776
    const-string v7, "extra"

    .line 777
    .line 778
    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 779
    .line 780
    .line 781
    iget-object v5, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    .line 782
    .line 783
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 784
    .line 785
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 786
    .line 787
    .line 788
    goto :goto_24

    .line 789
    :cond_36
    if-eqz v6, :cond_37

    .line 790
    .line 791
    invoke-virtual {v12, v8, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onPlaySound(IZ)V

    .line 792
    .line 793
    .line 794
    :cond_37
    :goto_24
    if-eqz v4, :cond_38

    .line 795
    .line 796
    if-eqz v3, :cond_38

    .line 797
    .line 798
    sget-object v5, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_KEY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 799
    .line 800
    iget-object v6, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSALoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

    .line 801
    .line 802
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    .line 804
    .line 805
    invoke-static {v5}, Lcom/android/systemui/volume/util/SALoggingWrapper;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    .line 806
    .line 807
    .line 808
    :cond_38
    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 809
    .line 810
    .line 811
    move-result-object v5

    .line 812
    iget v6, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 813
    .line 814
    iget v7, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 815
    .line 816
    if-ne v6, v7, :cond_39

    .line 817
    .line 818
    const/high16 v7, 0x10000

    .line 819
    .line 820
    and-int/2addr v7, v1

    .line 821
    if-eqz v7, :cond_39

    .line 822
    .line 823
    const/4 v5, -0x1

    .line 824
    goto :goto_25

    .line 825
    :cond_39
    invoke-static {v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    .line 826
    .line 827
    .line 828
    move-result v7

    .line 829
    iget v5, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 830
    .line 831
    if-eqz v7, :cond_3a

    .line 832
    .line 833
    mul-int/lit8 v5, v5, 0x64

    .line 834
    .line 835
    :cond_3a
    if-ne v6, v5, :cond_3b

    .line 836
    .line 837
    const/high16 v5, 0x20000

    .line 838
    .line 839
    and-int/2addr v1, v5

    .line 840
    if-eqz v1, :cond_3b

    .line 841
    .line 842
    const/4 v5, 0x1

    .line 843
    goto :goto_25

    .line 844
    :cond_3b
    const/4 v5, 0x0

    .line 845
    :goto_25
    if-eqz v4, :cond_3f

    .line 846
    .line 847
    if-eqz v5, :cond_3e

    .line 848
    .line 849
    if-eqz v3, :cond_3e

    .line 850
    .line 851
    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKeyDown:Z

    .line 852
    .line 853
    if-nez v1, :cond_3f

    .line 854
    .line 855
    const/4 v5, 0x1

    .line 856
    iput-boolean v5, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKeyDown:Z

    .line 857
    .line 858
    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVibrating:Z

    .line 859
    .line 860
    if-nez v1, :cond_3d

    .line 861
    .line 862
    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 863
    .line 864
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 865
    .line 866
    .line 867
    move-result v0

    .line 868
    if-ne v0, v5, :cond_3c

    .line 869
    .line 870
    iget v0, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 871
    .line 872
    const/4 v1, 0x2

    .line 873
    if-ne v0, v1, :cond_3c

    .line 874
    .line 875
    goto :goto_26

    .line 876
    :cond_3c
    const/4 v0, 0x0

    .line 877
    goto :goto_27

    .line 878
    :cond_3d
    :goto_26
    move v0, v5

    .line 879
    :goto_27
    invoke-virtual {v12, v5, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onKeyEvent(ZZ)V

    .line 880
    .line 881
    .line 882
    goto :goto_28

    .line 883
    :cond_3e
    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKeyDown:Z

    .line 884
    .line 885
    if-eqz v1, :cond_3f

    .line 886
    .line 887
    const/4 v1, 0x0

    .line 888
    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKeyDown:Z

    .line 889
    .line 890
    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVibrating:Z

    .line 891
    .line 892
    invoke-virtual {v12, v1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onKeyEvent(ZZ)V

    .line 893
    .line 894
    .line 895
    :cond_3f
    :goto_28
    if-eqz v2, :cond_40

    .line 896
    .line 897
    if-eqz v4, :cond_40

    .line 898
    .line 899
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 904
    .line 905
    .line 906
    move-result-object v1

    .line 907
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    const/4 v1, 0x4

    .line 912
    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 913
    .line 914
    .line 915
    :cond_40
    return v2
.end method

.method public final removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/Map;

    .line 4
    .line 5
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final scheduleTouchFeedback()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLastToggledRingerOn:J

    .line 6
    .line 7
    return-void
.end method

.method public final setActiveStream(I)V
    .locals 2

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 5
    .line 6
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setCaptionsEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/accessibility/CaptioningManager;->setSystemAudioCaptioningEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setRingerMode(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setSafeVolumeDialogShowing(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudioService:Landroid/media/IAudioService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Landroid/media/IAudioService;->notifySafetyVolumeDialogVisible(Landroid/media/IVolumeController;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void
.end method

.method public final setStreamVolume(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setStreamVolume(IILjava/lang/String;)V
    .locals 5

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    if-eqz v0, :cond_5

    .line 4
    div-int/lit8 p2, p2, 0xa

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    if-eqz v4, :cond_1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    .line 9
    :goto_0
    new-instance v4, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v4, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    iget-object p0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    .line 11
    iget-object p0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    .line 12
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    if-eqz p0, :cond_2

    .line 15
    invoke-virtual {v3, p0, v0, p2, v1}, Landroid/media/AudioManager;->semSetFineVolume(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v3, v0, p2, v1}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    goto :goto_1

    :cond_3
    const/16 p0, 0x15

    if-ne p1, p0, :cond_4

    .line 17
    invoke-virtual {v3}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result p0

    .line 18
    invoke-virtual {v3, v0, p2, v1, p0}, Landroid/media/AudioManager;->setFineVolume(IIII)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v3, v0, p2, v1}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    goto :goto_1

    :cond_5
    const/16 p3, 0x17

    if-ne p1, p3, :cond_7

    .line 20
    iget-boolean p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsBudsTogetherEnabled:Z

    if-eqz p3, :cond_8

    .line 21
    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    iget-object p3, p3, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->service:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-eqz p3, :cond_6

    .line 22
    invoke-virtual {p3, v2, p2}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->setAudioSharingDeviceVolume(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;I)Z

    .line 23
    :cond_6
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    goto :goto_1

    .line 24
    :cond_7
    invoke-virtual {v3, p1, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final setStreamVolumeDualAudio(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 2
    .line 3
    const/16 v0, 0x13

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public shouldDualAudioUIEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getMultiSoundDevice()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eq v0, p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    :goto_1
    return p0
.end method

.method public final shouldShowUI(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-boolean v2, v2, Lcom/android/systemui/knox/CustomSdkMonitor;->mVolumePanelEnabledState:Z

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    move v2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v0

    .line 20
    :goto_0
    if-nez v2, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "KnoxStateMonitor : Disable VolumeDialog"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v0

    .line 30
    :cond_1
    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceStateManagerWrapper:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iget-boolean v2, v2, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;->isFolded:Z

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    and-int/lit8 v2, p1, 0x1

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    return v1

    .line 51
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 52
    .line 53
    iget v2, v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 56
    .line 57
    iget-boolean v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->aodEnabled:Z

    .line 58
    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    .line 62
    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    and-int/lit8 p0, p1, 0x1

    .line 66
    .line 67
    if-eqz p0, :cond_3

    .line 68
    .line 69
    move v0, v1

    .line 70
    :cond_3
    return v0

    .line 71
    :cond_4
    if-eqz v2, :cond_5

    .line 72
    .line 73
    const/4 v3, 0x3

    .line 74
    if-eq v2, v3, :cond_5

    .line 75
    .line 76
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceInteractive:Z

    .line 77
    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    and-int/2addr p1, v1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    .line 84
    .line 85
    if-eqz p0, :cond_5

    .line 86
    .line 87
    move v0, v1

    .line 88
    :cond_5
    return v0
.end method

.method public final streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object v0
.end method

.method public final supportTvVolumeControl()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final updateActiveStreamW(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    .line 4
    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iput p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 24
    .line 25
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string/jumbo v2, "updateActiveStreamW "

    .line 30
    .line 31
    .line 32
    invoke-static {v2, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    const/16 v2, 0x64

    .line 36
    .line 37
    if-ge p1, v2, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p1, -0x1

    .line 41
    :goto_0
    const/16 v2, 0x15

    .line 42
    .line 43
    if-ne p1, v2, :cond_3

    .line 44
    .line 45
    const/16 p1, 0x2713

    .line 46
    .line 47
    :cond_3
    const/16 v2, 0x17

    .line 48
    .line 49
    if-eq p1, v2, :cond_4

    .line 50
    .line 51
    const/16 v2, 0x14

    .line 52
    .line 53
    if-eq p1, v2, :cond_4

    .line 54
    .line 55
    const/16 v2, 0x16

    .line 56
    .line 57
    if-ne p1, v2, :cond_5

    .line 58
    .line 59
    :cond_4
    const/4 p1, 0x3

    .line 60
    :cond_5
    if-eqz v0, :cond_6

    .line 61
    .line 62
    const-string v0, "forceVolumeControlStream "

    .line 63
    .line 64
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x1

    .line 73
    return p0
.end method

.method public final updateEffectsSuppressorW(Landroid/content/ComponentName;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 4
    .line 5
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    iput-object p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v1, ""

    .line 34
    .line 35
    invoke-static {p0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    if-lez v1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    :cond_2
    move-object p0, p1

    .line 51
    :goto_0
    iput-object p0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    .line 52
    .line 53
    iget-object p0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 54
    .line 55
    iget-object p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    .line 56
    .line 57
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const/16 p1, 0xe

    .line 62
    .line 63
    invoke-static {p1, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x1

    .line 67
    return p0
.end method

.method public final updateRingerModeInternalW(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne p1, v1, :cond_1

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVibrating:Z

    .line 13
    .line 14
    new-instance v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    invoke-direct {v3, p0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v4, 0x2bc

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 22
    .line 23
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    iput p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/16 v2, 0xb

    .line 37
    .line 38
    invoke-static {v2, p1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    if-ne p1, v0, :cond_2

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    iget-wide v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLastToggledRingerOn:J

    .line 51
    .line 52
    sub-long/2addr v2, v4

    .line 53
    const-wide/16 v4, 0x3e8

    .line 54
    .line 55
    cmp-long p1, v2, v4

    .line 56
    .line 57
    if-gez p1, :cond_2

    .line 58
    .line 59
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudioService:Landroid/media/IAudioService;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 62
    .line 63
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    const/4 v0, 0x5

    .line 70
    invoke-interface {p1, v0, p0}, Landroid/media/IAudioService;->playSoundEffect(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    :catch_0
    :cond_2
    return v1
.end method

.method public final updateStreamLevelW(II)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-ne v0, p2, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iput p2, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    packed-switch p1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_0
    move v1, p0

    .line 19
    :goto_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/16 p2, 0xa

    .line 34
    .line 35
    invoke-static {p2, p1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateStreamMuteW(IZ)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v1, p2, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iput-boolean p2, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    packed-switch p1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move v1, v2

    .line 18
    goto :goto_0

    .line 19
    :pswitch_0
    move v1, v0

    .line 20
    :goto_0
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/16 v3, 0xf

    .line 35
    .line 36
    invoke-static {v3, v1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    if-eqz p2, :cond_4

    .line 40
    .line 41
    const/4 p2, 0x2

    .line 42
    if-eq p1, p2, :cond_2

    .line 43
    .line 44
    const/4 p2, 0x5

    .line 45
    if-ne p1, p2, :cond_3

    .line 46
    .line 47
    :cond_2
    move v2, v0

    .line 48
    :cond_3
    if-eqz v2, :cond_4

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mRingerModeObservers:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerModeInternal:Lcom/android/systemui/util/RingerModeLiveData;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateRingerModeInternalW(I)Z

    .line 63
    .line 64
    .line 65
    :cond_4
    return v0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateStreamNameMusicShare()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMusicShareEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const v2, 0x7f131231

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v2, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->nameRes:Ljava/lang/String;

    .line 29
    .line 30
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string/jumbo v1, "updateStreamNameMusicShare "

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMusicShareEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public final updateStreamRoutedToBluetoothW(IZ)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 6
    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 12
    .line 13
    sget-boolean p0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v0, "updateStreamRoutedToBluetoothW stream="

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " routedToBluetooth="

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 p0, 0x1

    .line 46
    return p0
.end method

.method public final updateStreamRoutedToBudsW(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    sget-object v1, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    .line 5
    .line 6
    sget-object v1, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard;->Companion:Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-short v1, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;->GALAXY_BUDS:S

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-short v2, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;->GALAXY_BUDS_LIVE:S

    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    filled-new-array {v1, v2}, [Ljava/lang/Short;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v1}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isSameDeviceIconType(Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iput-boolean v2, p2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds:Z

    .line 44
    .line 45
    iput-boolean v0, p2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds3:Z

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    sget-short v1, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;->GALAXY_BUDS3:S

    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    filled-new-array {v1}, [Ljava/lang/Short;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {p1, v1}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isSameDeviceIconType(Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSoundAssistantChecker:Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    .line 69
    .line 70
    iget-boolean p0, p0, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;->isNeedToChangeBuds3IconToBtIcon:Z

    .line 71
    .line 72
    if-nez p0, :cond_1

    .line 73
    .line 74
    iput-boolean v0, p2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds:Z

    .line 75
    .line 76
    iput-boolean v2, p2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds3:Z

    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    iput-boolean v0, p2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds:Z

    .line 80
    .line 81
    iput-boolean v0, p2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds3:Z

    .line 82
    .line 83
    return-void
.end method

.method public final updateStreamRoutedToHeadsetW(IZ)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHeadset:Z

    .line 6
    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHeadset:Z

    .line 12
    .line 13
    sget-boolean p0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v0, "updateStreamRoutedToHeadsetW stream="

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " routedToHeadset="

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 p0, 0x1

    .line 46
    return p0
.end method

.method public final updateZenConfig()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 8
    .line 9
    and-int/lit8 v2, v1, 0x20

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    move v2, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v4

    .line 18
    :goto_0
    and-int/lit8 v5, v1, 0x40

    .line 19
    .line 20
    if-nez v5, :cond_1

    .line 21
    .line 22
    move v5, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v5, v4

    .line 25
    :goto_1
    and-int/lit16 v1, v1, 0x80

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    move v1, v3

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move v1, v4

    .line 32
    :goto_2
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 37
    .line 38
    iget-boolean v6, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    .line 39
    .line 40
    if-ne v6, v2, :cond_3

    .line 41
    .line 42
    iget-boolean v6, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    .line 43
    .line 44
    if-ne v6, v5, :cond_3

    .line 45
    .line 46
    iget-boolean v6, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    .line 47
    .line 48
    if-ne v6, v0, :cond_3

    .line 49
    .line 50
    iget-boolean v6, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    .line 51
    .line 52
    if-ne v6, v1, :cond_3

    .line 53
    .line 54
    return v4

    .line 55
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    .line 56
    .line 57
    iput-boolean v5, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    .line 60
    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    .line 62
    .line 63
    const-string p0, "disallowAlarms="

    .line 64
    .line 65
    const-string v4, " disallowMedia="

    .line 66
    .line 67
    const-string v6, " disallowSystem="

    .line 68
    .line 69
    invoke-static {p0, v2, v4, v5, v6}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string v2, " disallowRinger="

    .line 74
    .line 75
    invoke-static {p0, v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const/16 v0, 0x11

    .line 84
    .line 85
    invoke-static {v0, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return v3
.end method

.method public final updateZenModeW()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "zen_mode"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 16
    .line 17
    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    .line 18
    .line 19
    if-ne v1, v0, :cond_0

    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    iput v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/16 v0, 0xd

    .line 33
    .line 34
    invoke-static {v0, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method public final userActivity()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 2
    .line 3
    const/16 v0, 0xd

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final vibrate(Landroid/os/VibrationEffect;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 2
    .line 3
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
