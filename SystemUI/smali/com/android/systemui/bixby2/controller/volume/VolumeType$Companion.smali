.class public final Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bixby2/controller/volume/VolumeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;I)Lcom/android/systemui/bixby2/controller/volume/VolumeType;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->access$setAudioManagerWrapper$cp(Lcom/android/systemui/bixby2/util/AudioManagerWrapper;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo p0, "notification"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/app/NotificationManager;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->access$setNotificationManager$cp(Landroid/app/NotificationManager;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->access$setContext$cp(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    const-string p0, "VolumeController_preferences"

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->access$setPreferences$cp(Landroid/content/SharedPreferences;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->access$getPreferences$cp()Landroid/content/SharedPreferences;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p0, 0x0

    .line 46
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->access$setEditor$cp(Landroid/content/SharedPreferences$Editor;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    if-eq p2, p0, :cond_7

    .line 51
    .line 52
    const/4 p0, 0x2

    .line 53
    if-eq p2, p0, :cond_6

    .line 54
    .line 55
    const/4 p0, 0x3

    .line 56
    if-eq p2, p0, :cond_5

    .line 57
    .line 58
    const/4 p0, 0x5

    .line 59
    if-eq p2, p0, :cond_4

    .line 60
    .line 61
    const/16 p0, 0xb

    .line 62
    .line 63
    if-eq p2, p0, :cond_3

    .line 64
    .line 65
    const/16 p0, 0x1e

    .line 66
    .line 67
    if-eq p2, p0, :cond_2

    .line 68
    .line 69
    const/16 p0, 0x1f

    .line 70
    .line 71
    if-eq p2, p0, :cond_1

    .line 72
    .line 73
    new-instance p0, Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController;

    .line 74
    .line 75
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController;-><init>()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    new-instance p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;

    .line 80
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    new-instance p0, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;

    .line 86
    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    new-instance p0, Lcom/android/systemui/bixby2/controller/volume/BixbyVolumeController;

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/BixbyVolumeController;-><init>()V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    new-instance p0, Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController;

    .line 98
    .line 99
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController;-><init>()V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    new-instance p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;

    .line 104
    .line 105
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;-><init>(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    new-instance p0, Lcom/android/systemui/bixby2/controller/volume/RingVolumeController;

    .line 110
    .line 111
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/RingVolumeController;-><init>()V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_7
    new-instance p0, Lcom/android/systemui/bixby2/controller/volume/SystemVolumeController;

    .line 116
    .line 117
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/SystemVolumeController;-><init>()V

    .line 118
    .line 119
    .line 120
    :goto_1
    return-object p0
.end method
