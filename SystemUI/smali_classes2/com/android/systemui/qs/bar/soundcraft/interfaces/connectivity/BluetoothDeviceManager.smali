.class public final Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final OFF:[B

.field public static final ON:[B


# instance fields
.field public final bluetoothMetadataBroadcastReceiver:Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;

.field public callback:Lkotlin/jvm/functions/Function1;

.field public final context:Landroid/content/Context;

.field public isSupportANC:Z

.field public isSupportAdaptive:Z

.field public isSupportAmbient:Z

.field public final mediaBluetoothHelper:Lcom/android/systemui/media/MediaBluetoothHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v1, v0, [B

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-byte v2, v1, v2

    .line 12
    .line 13
    sput-object v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->OFF:[B

    .line 14
    .line 15
    new-array v1, v0, [B

    .line 16
    .line 17
    aput-byte v0, v1, v2

    .line 18
    .line 19
    sput-object v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->ON:[B

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/MediaBluetoothHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->mediaBluetoothHelper:Lcom/android/systemui/media/MediaBluetoothHelper;

    .line 7
    .line 8
    new-instance p1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->bluetoothMetadataBroadcastReceiver:Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;

    .line 14
    .line 15
    return-void
.end method

.method public static intToBytes(I)[B
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    int-to-byte v2, p0

    .line 6
    aput-byte v2, v0, v1

    .line 7
    .line 8
    shr-int/lit8 p0, p0, 0x8

    .line 9
    .line 10
    int-to-byte p0, p0

    .line 11
    const/4 v1, 0x1

    .line 12
    aput-byte p0, v0, v1

    .line 13
    .line 14
    return-object v0
.end method

.method public static makeTlv(I[B)[B
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/bluetooth/SmepTag;->isValidConstantKey(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    array-length v0, p1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-static {p0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->intToBytes(I)[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 28
    .line 29
    .line 30
    array-length p0, p1

    .line 31
    int-to-byte p0, p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2
    :goto_2
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method


# virtual methods
.method public final getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->mediaBluetoothHelper:Lcom/android/systemui/media/MediaBluetoothHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/media/MediaBluetoothHelper;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/android/systemui/volume/util/BluetoothA2dpUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothA2dpUtil;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothA2dpUtil;->getOrderConnectedDevices(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    xor-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    if-nez p0, :cond_2

    .line 29
    .line 30
    :cond_1
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 31
    .line 32
    :cond_2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    .line 37
    .line 38
    return-object p0
.end method

.method public final getActiveNoiseControlTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x7f13108b

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getAdaptiveTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x7f131089

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getAmbientSoundTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x7f13108a

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getNoiseControlList(Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->intToBytes(I)[B

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "SoundCraft.BluetoothDeviceManager"

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    const/4 v4, 0x1

    .line 24
    const/4 v5, 0x0

    .line 25
    if-eqz v1, :cond_8

    .line 26
    .line 27
    array-length v6, v1

    .line 28
    const/4 v7, 0x5

    .line 29
    if-ge v6, v7, :cond_0

    .line 30
    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_0
    aget-byte v6, v1, v5

    .line 34
    .line 35
    and-int/lit16 v6, v6, 0xff

    .line 36
    .line 37
    aget-byte v7, v1, v4

    .line 38
    .line 39
    and-int/lit16 v7, v7, 0xff

    .line 40
    .line 41
    shl-int/lit8 v7, v7, 0x8

    .line 42
    .line 43
    or-int/2addr v6, v7

    .line 44
    const v7, 0xffff

    .line 45
    .line 46
    .line 47
    and-int/2addr v6, v7

    .line 48
    sget-object v8, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    .line 49
    .line 50
    invoke-virtual {v8}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-ne v6, v8, :cond_9

    .line 55
    .line 56
    const/4 v6, 0x2

    .line 57
    move v8, v6

    .line 58
    :goto_0
    array-length v9, v1

    .line 59
    if-ge v8, v9, :cond_9

    .line 60
    .line 61
    aget-byte v9, v1, v8

    .line 62
    .line 63
    and-int/lit16 v9, v9, 0xff

    .line 64
    .line 65
    add-int/lit8 v10, v8, 0x1

    .line 66
    .line 67
    aget-byte v10, v1, v10

    .line 68
    .line 69
    and-int/lit16 v10, v10, 0xff

    .line 70
    .line 71
    shl-int/lit8 v10, v10, 0x8

    .line 72
    .line 73
    or-int/2addr v9, v10

    .line 74
    and-int/2addr v9, v7

    .line 75
    add-int/lit8 v10, v8, 0x2

    .line 76
    .line 77
    aget-byte v10, v1, v10

    .line 78
    .line 79
    and-int/lit16 v10, v10, 0xff

    .line 80
    .line 81
    new-array v11, v10, [B

    .line 82
    .line 83
    add-int/lit8 v12, v8, 0x3

    .line 84
    .line 85
    invoke-static {v1, v12, v11, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    .line 87
    .line 88
    add-int/2addr v10, v3

    .line 89
    add-int/2addr v8, v10

    .line 90
    invoke-static {v9}, Lcom/samsung/android/bluetooth/SmepTag;->getSmepKey(I)Lcom/samsung/android/bluetooth/SmepTag;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    if-nez v9, :cond_1

    .line 95
    .line 96
    const/4 v9, -0x1

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    sget-object v10, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 99
    .line 100
    invoke-virtual {v9}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    aget v9, v10, v9

    .line 105
    .line 106
    :goto_1
    if-eq v9, v4, :cond_6

    .line 107
    .line 108
    if-eq v9, v6, :cond_4

    .line 109
    .line 110
    if-eq v9, v3, :cond_2

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    aget-byte v9, v11, v5

    .line 114
    .line 115
    if-ne v9, v4, :cond_3

    .line 116
    .line 117
    move v9, v4

    .line 118
    goto :goto_2

    .line 119
    :cond_3
    move v9, v5

    .line 120
    :goto_2
    iput-boolean v9, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isSupportAdaptive:Z

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    aget-byte v9, v11, v5

    .line 124
    .line 125
    if-ne v9, v4, :cond_5

    .line 126
    .line 127
    move v9, v4

    .line 128
    goto :goto_3

    .line 129
    :cond_5
    move v9, v5

    .line 130
    :goto_3
    iput-boolean v9, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isSupportAmbient:Z

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_6
    aget-byte v9, v11, v5

    .line 134
    .line 135
    if-ne v9, v4, :cond_7

    .line 136
    .line 137
    move v9, v4

    .line 138
    goto :goto_4

    .line 139
    :cond_7
    move v9, v5

    .line 140
    :goto_4
    iput-boolean v9, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isSupportANC:Z

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_8
    :goto_5
    const-string/jumbo v1, "parseSupportedFeatures :: DataPacket is too short."

    .line 144
    .line 145
    .line 146
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isSupportANC:Z

    .line 150
    .line 151
    iget-boolean v6, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isSupportAmbient:Z

    .line 152
    .line 153
    iget-boolean v7, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isSupportAdaptive:Z

    .line 154
    .line 155
    const-string v8, "getNoiseControlList isSupportANC: "

    .line 156
    .line 157
    const-string v9, ", isSupportAmbient: "

    .line 158
    .line 159
    const-string v10, ", isSupportAdaptive: "

    .line 160
    .line 161
    invoke-static {v8, v1, v9, v6, v10}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v1, v7, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isSupportANC:Z

    .line 169
    .line 170
    if-eqz v1, :cond_b

    .line 171
    .line 172
    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->STATE_ANC:Lcom/samsung/android/bluetooth/SmepTag;

    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-static {v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->intToBytes(I)[B

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-eqz v1, :cond_a

    .line 187
    .line 188
    array-length v2, v1

    .line 189
    if-le v2, v3, :cond_a

    .line 190
    .line 191
    aget-byte v1, v1, v3

    .line 192
    .line 193
    if-ne v1, v4, :cond_a

    .line 194
    .line 195
    move v1, v4

    .line 196
    goto :goto_6

    .line 197
    :cond_a
    move v1, v5

    .line 198
    :goto_6
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveNoiseControlTitle()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-direct {v2, v6, v1}, Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;-><init>(Ljava/lang/String;Z)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_b
    move v1, v5

    .line 212
    :goto_7
    iget-boolean v2, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isSupportAmbient:Z

    .line 213
    .line 214
    if-eqz v2, :cond_d

    .line 215
    .line 216
    sget-object v2, Lcom/samsung/android/bluetooth/SmepTag;->STATE_AMBIENT:Lcom/samsung/android/bluetooth/SmepTag;

    .line 217
    .line 218
    invoke-virtual {v2}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    invoke-static {v2}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->intToBytes(I)[B

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    if-eqz v2, :cond_c

    .line 231
    .line 232
    array-length v6, v2

    .line 233
    if-le v6, v3, :cond_c

    .line 234
    .line 235
    aget-byte v2, v2, v3

    .line 236
    .line 237
    if-ne v2, v4, :cond_c

    .line 238
    .line 239
    move v2, v4

    .line 240
    goto :goto_8

    .line 241
    :cond_c
    move v2, v5

    .line 242
    :goto_8
    new-instance v6, Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;

    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getAmbientSoundTitle()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    invoke-direct {v6, v7, v2}, Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;-><init>(Ljava/lang/String;Z)V

    .line 249
    .line 250
    .line 251
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    goto :goto_9

    .line 255
    :cond_d
    move v2, v5

    .line 256
    :goto_9
    iget-boolean v6, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->isSupportAdaptive:Z

    .line 257
    .line 258
    if-eqz v6, :cond_f

    .line 259
    .line 260
    sget-object v6, Lcom/samsung/android/bluetooth/SmepTag;->STATE_RESPONSIVE_HEARING:Lcom/samsung/android/bluetooth/SmepTag;

    .line 261
    .line 262
    invoke-virtual {v6}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    invoke-static {v6}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->intToBytes(I)[B

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-virtual {p1, v6}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    if-eqz p1, :cond_e

    .line 275
    .line 276
    array-length v6, p1

    .line 277
    if-le v6, v3, :cond_e

    .line 278
    .line 279
    aget-byte p1, p1, v3

    .line 280
    .line 281
    if-ne p1, v4, :cond_e

    .line 282
    .line 283
    move p1, v4

    .line 284
    goto :goto_a

    .line 285
    :cond_e
    move p1, v5

    .line 286
    :goto_a
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;

    .line 287
    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getAdaptiveTitle()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    invoke-direct {v3, v6, p1}, Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;-><init>(Ljava/lang/String;Z)V

    .line 293
    .line 294
    .line 295
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    goto :goto_b

    .line 299
    :cond_f
    move p1, v5

    .line 300
    :goto_b
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;

    .line 301
    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getNoiseControlOffTitle()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    if-nez v1, :cond_10

    .line 307
    .line 308
    if-nez v2, :cond_10

    .line 309
    .line 310
    if-nez p1, :cond_10

    .line 311
    .line 312
    goto :goto_c

    .line 313
    :cond_10
    move v4, v5

    .line 314
    :goto_c
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;-><init>(Ljava/lang/String;Z)V

    .line 315
    .line 316
    .line 317
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    return-object v0
.end method

.method public final getNoiseControlOffTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x7f13108d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final updateNoiseControlList(Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveNoiseControlTitle()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string/jumbo v2, "setAncState"

    .line 20
    .line 21
    .line 22
    sget-object v3, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->ON:[B

    .line 23
    .line 24
    const-string v4, "SoundCraft.BluetoothDeviceManager"

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    sget-object p0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_ANC:Lcom/samsung/android/bluetooth/SmepTag;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {p0, v3}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->makeTlv(I[B)[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    .line 42
    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getAmbientSoundTitle()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const-string/jumbo v5, "setAmbientState"

    .line 55
    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    sget-object p0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_AMBIENT:Lcom/samsung/android/bluetooth/SmepTag;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-static {p0, v3}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->makeTlv(I[B)[B

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getNoiseControlOffTitle()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const-string/jumbo v6, "setAdaptiveState"

    .line 85
    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    sget-object p0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_ANC:Lcom/samsung/android/bluetooth/SmepTag;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    sget-object p1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->OFF:[B

    .line 99
    .line 100
    invoke-static {p0, p1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->makeTlv(I[B)[B

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    .line 105
    .line 106
    .line 107
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    sget-object p0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_AMBIENT:Lcom/samsung/android/bluetooth/SmepTag;

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    invoke-static {p0, p1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->makeTlv(I[B)[B

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    .line 121
    .line 122
    .line 123
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    sget-object p0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_RESPONSIVE_HEARING:Lcom/samsung/android/bluetooth/SmepTag;

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    invoke-static {p0, p1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->makeTlv(I[B)[B

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getAdaptiveTitle()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    if-eqz p0, :cond_3

    .line 149
    .line 150
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    sget-object p0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_RESPONSIVE_HEARING:Lcom/samsung/android/bluetooth/SmepTag;

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    invoke-static {p0, v3}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->makeTlv(I[B)[B

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    .line 164
    .line 165
    .line 166
    :cond_3
    :goto_0
    return-void
.end method
