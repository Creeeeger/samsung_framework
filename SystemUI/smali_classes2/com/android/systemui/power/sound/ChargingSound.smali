.class public final Lcom/android/systemui/power/sound/ChargingSound;
.super Lcom/android/systemui/power/sound/PowerUiSound;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mChargingSoundVibrationHandler:Lcom/android/systemui/power/sound/ChargingSound$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/sound/PowerUiSound;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/systemui/power/sound/ChargingSound$1;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/power/sound/ChargingSound$1;-><init>(Lcom/android/systemui/power/sound/ChargingSound;Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/power/sound/ChargingSound;->mChargingSoundVibrationHandler:Lcom/android/systemui/power/sound/ChargingSound$1;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final checkCondition()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v0, "Check charging sound condition"

    .line 6
    .line 7
    const-string v1, "PowerUiSound.Charging"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mAudioManager:Landroid/media/AudioManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->AUDIO_DISABLE_HEADSET_CHARGING_SOUND:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    if-eq p0, v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    if-ne p0, v0, :cond_1

    .line 27
    .line 28
    :cond_0
    const-string p0, "Should skip charging sound headset noise model..."

    .line 29
    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_1
    const/4 p0, 0x1

    .line 36
    return p0
.end method

.method public final playSoundAndVibration()V
    .locals 10

    .line 1
    const-string v0, "PowerUiSound.Charging"

    .line 2
    .line 3
    const-string/jumbo v1, "playSoundAndVibration Charging sound"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "charging_sounds_enabled"

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, -0x2

    .line 19
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-ne v1, v3, :cond_0

    .line 25
    .line 26
    move v1, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v2

    .line 29
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-string v6, "charging_vibration_enabled"

    .line 34
    .line 35
    invoke-static {v5, v6, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-ne v4, v3, :cond_1

    .line 40
    .line 41
    move v4, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v4, v2

    .line 44
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/power/sound/PowerUiSound;->checkCommonCondition()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_7

    .line 49
    .line 50
    const/4 v5, 0x4

    .line 51
    const/4 v6, 0x3

    .line 52
    iget-object v7, p0, Lcom/android/systemui/power/sound/ChargingSound;->mChargingSoundVibrationHandler:Lcom/android/systemui/power/sound/ChargingSound$1;

    .line 53
    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    new-instance v1, Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setFastAudioOpenMode()V

    .line 62
    .line 63
    .line 64
    iget v0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mChargingType:I

    .line 65
    .line 66
    if-eq v0, v6, :cond_2

    .line 67
    .line 68
    if-eq v0, v5, :cond_2

    .line 69
    .line 70
    move v0, v2

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    move v0, v3

    .line 73
    :goto_2
    if-eqz v0, :cond_3

    .line 74
    .line 75
    const/4 v0, 0x2

    .line 76
    goto :goto_3

    .line 77
    :cond_3
    move v0, v3

    .line 78
    :goto_3
    invoke-virtual {v7, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/16 v1, 0x64

    .line 83
    .line 84
    int-to-long v8, v1

    .line 85
    invoke-virtual {v7, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 86
    .line 87
    .line 88
    :cond_4
    if-eqz v4, :cond_7

    .line 89
    .line 90
    iget p0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mChargingType:I

    .line 91
    .line 92
    if-eq p0, v6, :cond_5

    .line 93
    .line 94
    if-eq p0, v5, :cond_5

    .line 95
    .line 96
    move v3, v2

    .line 97
    :cond_5
    if-eqz v3, :cond_6

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_6
    move v5, v6

    .line 101
    :goto_4
    invoke-virtual {v7, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const/16 v0, 0xb4

    .line 106
    .line 107
    int-to-long v0, v0

    .line 108
    invoke-virtual {v7, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 109
    .line 110
    .line 111
    :cond_7
    return-void
.end method
