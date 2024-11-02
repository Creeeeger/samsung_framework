.class public final Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCaptureSound:Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;

.field public final mContext:Landroid/content/Context;

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mCaptureSound:Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, v0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mSoundIds:[I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aget v4, v2, v3

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    const/4 v6, -0x1

    .line 23
    if-ne v4, v6, :cond_0

    .line 24
    .line 25
    iget-object v4, v0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    .line 26
    .line 27
    aget-object v7, v1, v3

    .line 28
    .line 29
    invoke-virtual {v4, v7, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    aput v4, v2, v3

    .line 34
    .line 35
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundIds:[I

    .line 36
    .line 37
    aget v4, v2, v3

    .line 38
    .line 39
    if-ne v4, v6, :cond_1

    .line 40
    .line 41
    iget-object v4, v0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundPool:Landroid/media/SoundPool;

    .line 42
    .line 43
    aget-object v1, v1, v3

    .line 44
    .line 45
    invoke-virtual {v4, v1, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    aput v1, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    :cond_1
    monitor-exit v0

    .line 52
    const-string/jumbo v0, "vibrator"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/os/Vibrator;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mVibrator:Landroid/os/Vibrator;

    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0

    .line 66
    throw p0
.end method


# virtual methods
.method public final semPlayCameraSound()V
    .locals 11

    .line 1
    const-string/jumbo v0, "service.camera.running"

    .line 2
    .line 3
    .line 4
    const-string v1, "0"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v2, "1"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string/jumbo v3, "service.camera.rec.running"

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-string/jumbo v4, "service.camera.sfs.running"

    .line 28
    .line 29
    .line 30
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    sget-object v5, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    .line 39
    .line 40
    const-string/jumbo v5, "service.bioface.authenticating"

    .line 41
    .line 42
    .line 43
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iget-object v2, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string/jumbo v6, "skip_adaptive_sound"

    .line 58
    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    const/4 v6, 0x1

    .line 66
    if-ne v5, v6, :cond_0

    .line 67
    .line 68
    move v5, v6

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move v5, v7

    .line 71
    :goto_0
    const-string v8, "isCameraRunning = "

    .line 72
    .line 73
    const-string v9, ", isRecordRunning = "

    .line 74
    .line 75
    const-string v10, ", isSmartStayRunning = "

    .line 76
    .line 77
    invoke-static {v8, v0, v9, v3, v10}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    const-string v9, ", isVtCallRunning = false, isBioFaceRunning = "

    .line 82
    .line 83
    const-string v10, ", isAdaptiveBrightness = "

    .line 84
    .line 85
    invoke-static {v8, v4, v9, v1, v10}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    const-string v9, "Screenshot"

    .line 96
    .line 97
    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    const-string v10, "CscFeature_Framework_EnableScrCaptureSoundOnlyInCamera"

    .line 105
    .line 106
    invoke-virtual {v8, v10, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    iget-object v10, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mCaptureSound:Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;

    .line 111
    .line 112
    if-eqz v8, :cond_3

    .line 113
    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    xor-int/lit8 p0, v3, 0x1

    .line 117
    .line 118
    xor-int/lit8 v0, v4, 0x1

    .line 119
    .line 120
    and-int/2addr p0, v0

    .line 121
    xor-int/lit8 v0, v1, 0x1

    .line 122
    .line 123
    and-int/2addr p0, v0

    .line 124
    if-eqz p0, :cond_2

    .line 125
    .line 126
    if-eqz v5, :cond_1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_1
    const-string p0, "Camera is running. Play capture sound!"

    .line 130
    .line 131
    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    invoke-virtual {v10, v6}, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->play(Z)V

    .line 135
    .line 136
    .line 137
    :cond_2
    :goto_1
    return-void

    .line 138
    :cond_3
    const-string v3, "audio"

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Landroid/media/AudioManager;

    .line 145
    .line 146
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const-string v8, "csc_pref_camera_forced_shuttersound_key"

    .line 155
    .line 156
    invoke-static {v2, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-ne v2, v6, :cond_4

    .line 161
    .line 162
    move v2, v6

    .line 163
    goto :goto_2

    .line 164
    :cond_4
    move v2, v7

    .line 165
    :goto_2
    if-eqz v2, :cond_6

    .line 166
    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    if-nez v4, :cond_6

    .line 170
    .line 171
    if-nez v1, :cond_6

    .line 172
    .line 173
    if-eqz v5, :cond_5

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_5
    const-string p0, "[forcedShutterSound] Camera is running!!!!"

    .line 177
    .line 178
    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    invoke-virtual {v10, v6}, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->play(Z)V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_6
    :goto_3
    const/4 v0, 0x2

    .line 186
    if-ne v3, v0, :cond_7

    .line 187
    .line 188
    invoke-virtual {v10, v7}, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->play(Z)V

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_7
    if-ne v3, v6, :cond_9

    .line 193
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v1, "SupportedVibrationType() : "

    .line 197
    .line 198
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mVibrator:Landroid/os/Vibrator;

    .line 202
    .line 203
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    const/4 v1, -0x1

    .line 222
    if-le v0, v6, :cond_8

    .line 223
    .line 224
    const/4 v0, 0x4

    .line 225
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 230
    .line 231
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_8
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-ne v0, v6, :cond_9

    .line 244
    .line 245
    const/16 v0, 0x64

    .line 246
    .line 247
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 252
    .line 253
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 258
    .line 259
    .line 260
    :cond_9
    :goto_4
    return-void
.end method
