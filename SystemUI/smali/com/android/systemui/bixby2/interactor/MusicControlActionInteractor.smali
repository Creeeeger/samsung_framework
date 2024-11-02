.class public final Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/bixby2/interactor/ActionInteractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Action;,
        Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Companion;

.field private static final KEY_NEW_VALUE:Ljava/lang/String; = "key_new_value"

.field private static final MUTE_ACTION_PREFIX:Ljava/lang/String; = "mute"

.field public static final STREAM_ALL:I = 0x1f

.field public static final STREAM_BLUETOOTH:I = 0x1e

.field private static final SUPPORTED_FLAG:I = 0x3ff

.field private static final TAG:Ljava/lang/String; = "MusicControlActionInteractor"


# instance fields
.field private audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

.field private context:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->Companion:Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 12
    .line 13
    return-void
.end method

.method private final getStreamTypeFromString(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :sswitch_0
    const-string/jumbo p0, "volume_control_system"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_6

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :sswitch_1
    const-string/jumbo p0, "volume_control_media"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_4

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :sswitch_2
    const-string/jumbo p0, "volume_control_bixby"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_5

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :sswitch_3
    const-string/jumbo p0, "mute_bluetooth_volume"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_2

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :sswitch_4
    const-string/jumbo p0, "mute_all_volume"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_0

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_0
    const/16 p0, 0x1f

    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :sswitch_5
    const-string/jumbo v0, "volume_control"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-nez p2, :cond_1

    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getAdjustedStreamType(Landroid/content/Context;)I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    goto :goto_1

    .line 87
    :sswitch_6
    const-string/jumbo p0, "volume_control_bluetooth"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-nez p0, :cond_2

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const/16 p0, 0x1e

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :sswitch_7
    const-string/jumbo p0, "volume_control_ringtone"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-nez p0, :cond_3

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :sswitch_8
    const-string/jumbo p0, "mute_ringtones_volume"

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-nez p0, :cond_3

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    const/4 p0, 0x2

    .line 121
    goto :goto_1

    .line 122
    :sswitch_9
    const-string/jumbo p0, "mute_media_volume"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-nez p0, :cond_4

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    const/4 p0, 0x3

    .line 133
    goto :goto_1

    .line 134
    :sswitch_a
    const-string/jumbo p0, "volume_control_noti"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-nez p0, :cond_7

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :sswitch_b
    const-string/jumbo p0, "mute_bixby_volume"

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-nez p0, :cond_5

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_5
    const/16 p0, 0xb

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :sswitch_c
    const-string/jumbo p0, "mute_system_volume"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    if-nez p0, :cond_6

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_6
    const/4 p0, 0x1

    .line 168
    goto :goto_1

    .line 169
    :sswitch_d
    const-string/jumbo p0, "mute_noti_volume"

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    if-nez p0, :cond_7

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_7
    const/4 p0, 0x5

    .line 180
    goto :goto_1

    .line 181
    :goto_0
    const/4 p0, -0x1

    .line 182
    :goto_1
    return p0

    .line 183
    :sswitch_data_0
    .sparse-switch
        -0x74ea39a3 -> :sswitch_d
        -0x6e778c7c -> :sswitch_c
        -0x667eb989 -> :sswitch_b
        -0x5814cd63 -> :sswitch_a
        -0x2a696bc5 -> :sswitch_9
        -0x28ac1492 -> :sswitch_8
        -0x245ced37 -> :sswitch_7
        -0x5022f99 -> :sswitch_6
        0x1a0e3938 -> :sswitch_5
        0x3ae96d5e -> :sswitch_4
        0x4971c731 -> :sswitch_3
        0x54cf5b61 -> :sswitch_2
        0x5568421d -> :sswitch_1
        0x62fde716 -> :sswitch_0
    .end sparse-switch
.end method

.method private final matchAction(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Action;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public getSupportingActions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Action;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    array-length v1, p0

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    aget-object v3, p0, v2

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object v0
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;)Lcom/samsung/android/sdk/command/Command;
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "volume_control"

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    .line 3
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->Companion:Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

    iget-object v1, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->getStreamTypeFromString(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;->create(Landroid/content/Context;I)Lcom/android/systemui/bixby2/controller/volume/VolumeType;

    move-result-object p0

    .line 5
    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStatus()I

    move-result p2

    .line 7
    iput p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStatusCode()Ljava/lang/String;

    move-result-object p2

    .line 9
    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatusCode:Ljava/lang/String;

    .line 10
    new-instance p2, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMinVolume()I

    move-result v0

    int-to-float v1, v0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMaxVolume()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getVolume()I

    move-result p0

    int-to-float v3, p0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(FFFFLjava/lang/CharSequence;)V

    .line 13
    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo v0, "mute"

    .line 15
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 16
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->Companion:Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

    iget-object v2, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->getStreamTypeFromString(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;->create(Landroid/content/Context;I)Lcom/android/systemui/bixby2/controller/volume/VolumeType;

    move-result-object p0

    .line 17
    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iput v1, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 19
    new-instance p2, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isStreamMute()Z

    move-result p0

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Z)V

    .line 20
    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "control_music"

    .line 22
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 23
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 25
    new-instance p1, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;

    const/16 p2, 0x3ff

    const-string v0, ""

    invoke-direct {p1, v1, p2, v0}, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;-><init>(IILjava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;
    .locals 6

    .line 28
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadStateful in MusicActionInteractor(with CommandAction) action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cmdAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MusicControlActionInteractor"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p3, "volume_control"

    const/4 v0, 0x0

    .line 30
    invoke-static {p1, p3, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p3

    .line 31
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 32
    sget-object p3, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->Companion:Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->getStreamTypeFromString(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, v0, p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;->create(Landroid/content/Context;I)Lcom/android/systemui/bixby2/controller/volume/VolumeType;

    move-result-object p0

    .line 33
    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStatus()I

    move-result p2

    .line 35
    iput p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStatusCode()Ljava/lang/String;

    move-result-object p2

    .line 37
    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatusCode:Ljava/lang/String;

    .line 38
    new-instance p2, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMinVolume()I

    move-result p3

    int-to-float v1, p3

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMaxVolume()I

    move-result p3

    int-to-float v2, p3

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getVolume()I

    move-result p0

    int-to-float v3, p0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p2

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(FFFFLjava/lang/CharSequence;)V

    .line 41
    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p3, "mute"

    .line 43
    invoke-static {p1, p3, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 44
    sget-object p3, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->Companion:Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

    iget-object v1, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->getStreamTypeFromString(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, v1, p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;->create(Landroid/content/Context;I)Lcom/android/systemui/bixby2/controller/volume/VolumeType;

    move-result-object p0

    .line 45
    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    iput v0, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 47
    new-instance p2, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isStreamMute()Z

    move-result p0

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Z)V

    .line 48
    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "control_music"

    .line 50
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 51
    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iput v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 53
    new-instance p1, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;

    const/16 p2, 0x3ff

    const-string p3, ""

    invoke-direct {p1, v0, p2, p3}, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;-><init>(IILjava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public performCommandActionInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string/jumbo v0, "performCommandActionInteractor "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "MusicControlActionInteractor"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-eq v0, v1, :cond_3

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    .line 30
    const/4 p1, 0x6

    .line 31
    if-eq v0, p1, :cond_1

    .line 32
    .line 33
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 34
    .line 35
    const-string p1, "invalid_action"

    .line 36
    .line 37
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object v2, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    .line 44
    .line 45
    check-cast p2, Lcom/samsung/android/sdk/command/action/ModeAction;

    .line 46
    .line 47
    iget v4, p2, Lcom/samsung/android/sdk/command/action/ModeAction;->mNewMode:I

    .line 48
    .line 49
    iget-object p1, p2, Lcom/samsung/android/sdk/command/action/ModeAction;->mExtraValue:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/android/systemui/bixby2/util/MediaParamsParser;->getMediaInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    new-instance v6, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    .line 58
    .line 59
    invoke-direct {v6, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    .line 63
    .line 64
    const-string/jumbo p1, "media_session"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    move-object v7, p0

    .line 72
    check-cast v7, Landroid/media/session/MediaSessionManager;

    .line 73
    .line 74
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->create(Landroid/content/Context;ILcom/android/systemui/bixby2/util/MediaModeInfoBixby;Lcom/android/systemui/bixby2/util/AudioManagerWrapper;Landroid/media/session/MediaSessionManager;)Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->action()Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->Companion:Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    .line 86
    .line 87
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->getStreamTypeFromString(Landroid/content/Context;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;->create(Landroid/content/Context;I)Lcom/android/systemui/bixby2/controller/volume/VolumeType;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string p2, "key_new_value"

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    float-to-int p1, p1

    .line 106
    const/4 p2, 0x5

    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->setVolume(IIZ)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->Companion:Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    .line 116
    .line 117
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->getStreamTypeFromString(Landroid/content/Context;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;->create(Landroid/content/Context;I)Lcom/android/systemui/bixby2/controller/volume/VolumeType;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    check-cast p2, Lcom/samsung/android/sdk/command/action/BooleanAction;

    .line 126
    .line 127
    iget-boolean p1, p2, Lcom/samsung/android/sdk/command/action/BooleanAction;->mNewState:Z

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->setMute(Z)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    :goto_0
    iget p1, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 134
    .line 135
    iget-object p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 136
    .line 137
    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    .line 138
    .line 139
    invoke-virtual {p3, p1, p0}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method
