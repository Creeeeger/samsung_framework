.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $soundId:I

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->$soundId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockSounds:Landroid/media/SoundPool;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockSoundStreamId:I

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->audioManager:Landroid/media/AudioManager;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->uiSoundsStreamType:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->audioManager:Landroid/media/AudioManager;

    .line 25
    .line 26
    iget v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->uiSoundsStreamType:I

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_LOCK_SITUATION_VOLUME:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    .line 41
    :goto_0
    move v4, v0

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 44
    .line 45
    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->$soundId:I

    .line 46
    .line 47
    iget v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockSoundId:I

    .line 48
    .line 49
    if-ne v1, v2, :cond_3

    .line 50
    .line 51
    const/4 v1, 0x7

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/4 v1, 0x4

    .line 54
    :goto_1
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->audioManager:Landroid/media/AudioManager;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    goto :goto_0

    .line 62
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 63
    .line 64
    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->$soundId:I

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string/jumbo v3, "playSound "

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 88
    .line 89
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockSounds:Landroid/media/SoundPool;

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;->$soundId:I

    .line 94
    .line 95
    const/4 v5, 0x1

    .line 96
    const/4 v6, 0x0

    .line 97
    const/high16 v7, 0x3f800000    # 1.0f

    .line 98
    .line 99
    move v3, v4

    .line 100
    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    iput p0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockSoundStreamId:I

    .line 105
    .line 106
    :cond_4
    return-void
.end method
