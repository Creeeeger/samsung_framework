.class public abstract Lcom/android/systemui/power/sound/PowerUiSound;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public mChargingType:I

.field public final mContext:Landroid/content/Context;

.field public mIsInCall:Z

.field public mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field public mRingerMode:I

.field public final mSoundType:I

.field public mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mSoundType:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final checkCommonCondition()Z
    .locals 8

    .line 1
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-boolean v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    const-string v3, "PowerUiSound"

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget v0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mSoundType:I

    .line 29
    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    const-string p0, "checkCommonCondition : Knox Custom disabled SOUND_TYPE_CHARGER_CONNECTION"

    .line 33
    .line 34
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mAudioManager:Landroid/media/AudioManager;

    .line 39
    .line 40
    const/4 v4, 0x3

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v5, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mAudioManager:Landroid/media/AudioManager;

    .line 48
    .line 49
    const/4 v6, -0x1

    .line 50
    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->semIsRecordActive(I)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_3

    .line 55
    .line 56
    if-eq v4, v0, :cond_3

    .line 57
    .line 58
    const-string p0, "checkCommonCondition : recording so doesn\'t play sound"

    .line 59
    .line 60
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return v2

    .line 64
    :cond_2
    move v0, v2

    .line 65
    :cond_3
    const/4 v5, 0x2

    .line 66
    iput v5, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mRingerMode:I

    .line 67
    .line 68
    iget-object v5, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const-string v6, "alertoncall_mode"

    .line 75
    .line 76
    const/4 v7, -0x2

    .line 77
    invoke-static {v5, v6, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-ne v5, v1, :cond_4

    .line 82
    .line 83
    move v5, v1

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    move v5, v2

    .line 86
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mIsInCall:Z

    .line 87
    .line 88
    if-nez v6, :cond_5

    .line 89
    .line 90
    if-ne v0, v4, :cond_6

    .line 91
    .line 92
    :cond_5
    if-eqz v5, :cond_7

    .line 93
    .line 94
    iput v1, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mRingerMode:I

    .line 95
    .line 96
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/power/sound/PowerUiSound;->checkCondition()Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    return p0

    .line 101
    :cond_7
    const-string p0, "checkCommonCondition : calling and doesn\'t notify during calls"

    .line 102
    .line 103
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    return v2
.end method

.method public abstract checkCondition()Z
.end method

.method public final playSound(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "playSound : type = "

    .line 4
    .line 5
    .line 6
    const-string v2, "PowerUiSound"

    .line 7
    .line 8
    invoke-static {v1, p1, v2}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/systemui/power/sound/SoundPathFinder;->getSoundPath(ILandroid/content/Context;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    new-instance v2, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-eq p1, v3, :cond_0

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    if-ne p1, v3, :cond_1

    .line 29
    .line 30
    :cond_0
    const-string p1, "FAST_TRACK"

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    .line 36
    .line 37
    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, v2}, Landroid/media/AudioAttributes$Builder;->replaceTags(Ljava/util/HashSet;)Landroid/media/AudioAttributes$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 53
    .line 54
    const/4 p2, 0x0

    .line 55
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZLandroid/media/AudioAttributes;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catch_0
    move-exception p0

    .line 60
    const-string/jumbo p1, "playSound : NPE occur"

    .line 61
    .line 62
    .line 63
    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public abstract playSoundAndVibration()V
.end method

.method public final playVibration(IILandroid/os/VibrationEffect$SemMagnitudeType;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "playVibration : index = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "PowerUiSound"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v0, -0x1

    .line 26
    invoke-static {p1, v0, p3}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eq p2, v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/os/VibrationEffect;->semSetMagnitude(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mVibrator:Landroid/os/Vibrator;

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string/jumbo p0, "playVibration : Charging vibration setting is on but Vibrator is null"

    .line 44
    .line 45
    .line 46
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method
