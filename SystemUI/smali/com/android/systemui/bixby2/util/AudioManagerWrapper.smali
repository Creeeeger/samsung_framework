.class public Lcom/android/systemui/bixby2/util/AudioManagerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "audio"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/media/AudioManager;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 13
    .line 14
    return-void
.end method

.method private getDefaultStream(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isMediaVolumeOn(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x3

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x2

    .line 10
    :goto_0
    return p0
.end method

.method private isMediaVolumeOn(Landroid/content/Context;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/bixby2/util/SemSoundAssistantManagerWrapper;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/util/SemSoundAssistantManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/bixby2/util/SemSoundAssistantManagerWrapper;->isAdjustMediaVolumeOnly()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isMusicActive()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 22
    :goto_1
    return p0
.end method

.method private isMusicActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/media/AudioManager;->isMusicActive()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private isStreamValid(I)Z
    .locals 1

    .line 1
    const/4 p0, 0x2

    .line 2
    const/4 v0, 0x1

    .line 3
    if-eq p1, p0, :cond_1

    .line 4
    .line 5
    const/4 p0, 0x3

    .line 6
    if-eq p1, p0, :cond_1

    .line 7
    .line 8
    const/4 p0, 0x5

    .line 9
    if-eq p1, p0, :cond_1

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public adjustStreamVolume(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAdjustedStreamType(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isStreamValid(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getDefaultStream(Landroid/content/Context;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :goto_0
    return v0
.end method

.method public getRingerMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getStreamMaxVolume(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getStreamMinVolume(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getStreamVolume(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isAllStreamMute()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getRingerMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isStreamMute(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0xb

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isStreamMute(I)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method

.method public isCurrentDeviceTypeBluetooth()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public isInCall()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/media/AudioManager;->getModeInternal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

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

.method public isStreamMute(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getStreamVolume(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getStreamMinVolume(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ne v0, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public setRingerMode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStreamVolume(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public shouldShowRingtoneVolume()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
