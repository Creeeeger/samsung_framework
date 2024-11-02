.class public final Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final SOUND_FILES:[Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mForcedSoundIds:[I

.field public final mForcedSoundPool:Landroid/media/SoundPool;

.field public final mSoundIds:[I

.field public final mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "/system/media/audio/ui/Shutter.ogg"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->createSoundPool(Z)Landroid/media/SoundPool;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {v0}, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->createSoundPool(Z)Landroid/media/SoundPool;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundPool:Landroid/media/SoundPool;

    .line 19
    .line 20
    new-array v1, v0, [I

    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mSoundIds:[I

    .line 23
    .line 24
    move v1, p1

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mSoundIds:[I

    .line 26
    .line 27
    array-length v3, v2

    .line 28
    const/4 v4, -0x1

    .line 29
    if-ge v1, v3, :cond_0

    .line 30
    .line 31
    aput v4, v2, v1

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-array v0, v0, [I

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundIds:[I

    .line 39
    .line 40
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundIds:[I

    .line 41
    .line 42
    array-length v1, v0

    .line 43
    if-ge p1, v1, :cond_1

    .line 44
    .line 45
    aput v4, v0, p1

    .line 46
    .line 47
    add-int/lit8 p1, p1, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    return-void
.end method

.method public static createSoundPool(Z)Landroid/media/SoundPool;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "createSoundPool : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Screenshot"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x5

    .line 31
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    invoke-static {v1}, Landroid/media/AudioManager;->semGetStreamType(I)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-virtual {v0, p0}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 47
    .line 48
    .line 49
    :goto_0
    const-string p0, "CAMERA"

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    .line 52
    .line 53
    .line 54
    const-string/jumbo p0, "stv_shutter"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p0}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    new-instance v0, Landroid/media/SoundPool$Builder;

    .line 65
    .line 66
    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, p0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 83
    .line 84
    .line 85
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized play(Z)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mSoundIds:[I

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aget v4, v2, v3

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundPool:Landroid/media/SoundPool;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundIds:[I

    .line 16
    .line 17
    aget v5, v5, v3

    .line 18
    .line 19
    move v8, v5

    .line 20
    move-object v5, v4

    .line 21
    move v4, v8

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v5, v1

    .line 24
    :goto_0
    const/4 v6, -0x1

    .line 25
    if-ne v4, v6, :cond_2

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundIds:[I

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundPool:Landroid/media/SoundPool;

    .line 33
    .line 34
    aget-object v0, v0, v3

    .line 35
    .line 36
    invoke-virtual {v1, v0, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    aput v0, p1, v3

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    aget-object p1, v0, v3

    .line 44
    .line 45
    invoke-virtual {v1, p1, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    aput p1, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    const-string v0, "audio"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/media/AudioManager;

    .line 61
    .line 62
    const-string v0, "g_volume_situation_key;type=3;device=0"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 69
    .line 70
    .line 71
    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception p1

    .line 74
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    const/high16 p1, 0x3f800000    # 1.0f

    .line 78
    .line 79
    :goto_1
    move v3, p1

    .line 80
    const/4 p1, 0x0

    .line 81
    const/4 v6, 0x0

    .line 82
    const/high16 v7, 0x3f800000    # 1.0f

    .line 83
    .line 84
    move-object v0, v5

    .line 85
    move v1, v4

    .line 86
    move v2, v3

    .line 87
    move v4, p1

    .line 88
    move v5, v6

    .line 89
    move v6, v7

    .line 90
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .line 92
    .line 93
    :goto_2
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    monitor-exit p0

    .line 97
    throw p1
.end method
