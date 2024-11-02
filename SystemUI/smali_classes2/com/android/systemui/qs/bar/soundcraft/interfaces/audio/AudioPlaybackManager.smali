.class public final Lcom/android/systemui/qs/bar/soundcraft/interfaces/audio/AudioPlaybackManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/audio/AudioPlaybackManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/audio/AudioPlaybackManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/audio/AudioPlaybackManager;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getPlayingAppPackage()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lcom/android/systemui/qs/bar/soundcraft/utils/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/utils/SystemServiceExtension;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/media/AudioManager;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/audio/AudioPlaybackManager;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/media/AudioManager;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v4, v1

    .line 37
    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->semGetPlayerState()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x2

    .line 44
    if-ne v4, v5, :cond_1

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v4, v2

    .line 49
    :goto_0
    if-eqz v4, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move-object v1, v3

    .line 53
    :goto_1
    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 54
    .line 55
    const-string v0, "SoundCraft.AudioPlaybackManager"

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    sget-object v4, Lcom/android/systemui/qs/bar/soundcraft/utils/PackageExt;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/utils/PackageExt;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->semGetClientUid()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const-string/jumbo v5, "uid="

    .line 66
    .line 67
    .line 68
    invoke-static {v5, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    :try_start_0
    sget v4, Lkotlin/Result;->$r8$clinit:I

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-eqz p0, :cond_3

    .line 87
    .line 88
    aget-object p0, p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    move-object p0, v3

    .line 92
    goto :goto_2

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    sget v1, Lkotlin/Result;->$r8$clinit:I

    .line 95
    .line 96
    new-instance v1, Lkotlin/Result$Failure;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    move-object p0, v1

    .line 102
    :goto_2
    instance-of v1, p0, Lkotlin/Result$Failure;

    .line 103
    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    move-object p0, v3

    .line 107
    :cond_4
    check-cast p0, Ljava/lang/String;

    .line 108
    .line 109
    const-string/jumbo v1, "packageName="

    .line 110
    .line 111
    .line 112
    invoke-static {v1, p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    if-eqz p0, :cond_5

    .line 116
    .line 117
    move-object v3, p0

    .line 118
    goto :goto_3

    .line 119
    :cond_5
    const-string/jumbo p0, "package name is null"

    .line 120
    .line 121
    .line 122
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :goto_3
    return-object v3
.end method
