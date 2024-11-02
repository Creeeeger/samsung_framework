.class public final synthetic Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

.field public final synthetic f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/samsung/systemui/splugins/volume/VolumeState;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;ILcom/samsung/systemui/splugins/volume/VolumeState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$4:Lcom/samsung/systemui/splugins/volume/VolumeState;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;->f$4:Lcom/samsung/systemui/splugins/volume/VolumeState;

    .line 10
    .line 11
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v4, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda13;

    .line 18
    .line 19
    const/4 v5, 0x3

    .line 20
    invoke-direct {v4, p1, v5}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 41
    .line 42
    invoke-direct {v4, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getNameRes()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->nameRes(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getLevel()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->level(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {p1, v0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineRemoteLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->remoteLabel(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBt()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isRoutedToBluetooth(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isMuted()Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isMuted(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-static {v0, v1, v5}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineRealVolumeLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->realLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isZenPriorityOnly()Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    invoke-static {v0, v1, v2, v5}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isSliderEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getMin()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    const/4 v8, 0x6

    .line 122
    if-nez v7, :cond_0

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    if-ne v5, v8, :cond_1

    .line 126
    .line 127
    invoke-virtual {v7}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isRemoteMic()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-nez v5, :cond_1

    .line 132
    .line 133
    const/4 v6, 0x1

    .line 134
    :cond_1
    :goto_0
    invoke-virtual {v4, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->levelMin(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MAX:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    .line 143
    .line 144
    invoke-virtual {v0, v6}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    if-nez v7, :cond_2

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    if-ne v5, v8, :cond_3

    .line 156
    .line 157
    invoke-virtual {v7}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isRemoteMic()Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-nez v5, :cond_3

    .line 162
    .line 163
    add-int/lit8 v6, v6, 0x1

    .line 164
    .line 165
    :cond_3
    :goto_1
    invoke-virtual {v4, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->levelMax(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isDualAudio()Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isMultiSoundBt()Z

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    invoke-static {p1, v3, v5, v6, v7}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZZZ)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isVisible(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-static {v0, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineIconState(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->iconType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-static {p1, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateAudibleLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->audibleLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineEarProtectLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)I

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->earProtectionLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isMultiSoundBt()Z

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    invoke-static {p1, v3, v5, v6}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineRowPriority(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZZ)I

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    invoke-virtual {v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->priority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isRemoteMic()Z

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    invoke-static {v4, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineIconClickable(IZ)Z

    .line 238
    .line 239
    .line 240
    move-result p0

    .line 241
    invoke-virtual {v3, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isIconClickable(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    invoke-static {v3, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineIconEnabled(IZ)Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isIconEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getSmartViewDeviceName()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    const/16 v2, 0x14

    .line 270
    .line 271
    if-ne p1, v2, :cond_4

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_4
    const-string v1, ""

    .line 275
    .line 276
    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->smartViewLabel(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getDualBtDeviceAddress()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->dualBtDeviceAddress(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getDualBtDeviceName()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->dualBtDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    :cond_5
    return-object p1
.end method
