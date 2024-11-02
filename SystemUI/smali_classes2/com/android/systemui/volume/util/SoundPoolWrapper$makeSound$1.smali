.class public final Lcom/android/systemui/volume/util/SoundPoolWrapper$makeSound$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$makeSound$1;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$makeSound$1;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 2
    .line 3
    new-instance v1, Landroid/media/SoundPool$Builder;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    .line 14
    .line 15
    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    const/16 v4, 0xd

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$makeSound$1;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 41
    .line 42
    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    sget-object v2, Lcom/android/systemui/volume/util/SoundPoolWrapper;->HOME_HUB_FILES:[Ljava/lang/String;

    .line 48
    .line 49
    array-length v2, v2

    .line 50
    move v4, v3

    .line 51
    :goto_0
    if-ge v4, v2, :cond_2

    .line 52
    .line 53
    iget-object v5, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundIDs:[I

    .line 54
    .line 55
    sget-object v6, Lcom/android/systemui/volume/util/SoundPoolWrapper;->HOME_HUB_FILES:[Ljava/lang/String;

    .line 56
    .line 57
    aget-object v6, v6, v4

    .line 58
    .line 59
    invoke-virtual {v1, v6, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    aput v6, v5, v4

    .line 64
    .line 65
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    sget-boolean v2, Lcom/android/systemui/BasicRune;->SUPPORT_SOUND_THEME:Z

    .line 69
    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    sget-object v2, Lcom/android/systemui/volume/util/SoundPoolWrapper;->SOUND_THEME_FILES:[Ljava/lang/String;

    .line 73
    .line 74
    array-length v2, v2

    .line 75
    move v4, v3

    .line 76
    :goto_1
    if-ge v4, v2, :cond_2

    .line 77
    .line 78
    iget-object v5, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundIDs:[I

    .line 79
    .line 80
    sget-object v6, Lcom/android/systemui/volume/util/SoundPoolWrapper;->SOUND_THEME_FILES:[Ljava/lang/String;

    .line 81
    .line 82
    aget-object v6, v6, v4

    .line 83
    .line 84
    invoke-virtual {v1, v6, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    aput v6, v5, v4

    .line 89
    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    const-string/jumbo v2, "system/media/audio/ui/TW_Volume_control.ogg"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    iput v2, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundID:I

    .line 101
    .line 102
    :cond_2
    iput-object v1, v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundPool:Landroid/media/SoundPool;

    .line 103
    .line 104
    return-void
.end method
