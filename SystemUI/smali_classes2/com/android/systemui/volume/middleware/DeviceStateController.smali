.class public final Lcom/android/systemui/volume/middleware/DeviceStateController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;


# instance fields
.field public final infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

.field public isCoverClosed:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 5
    .line 6
    check-cast p1, Lcom/android/systemui/volume/VolumeDependency;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/systemui/volume/middleware/DeviceStateController$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    aget v0, v1, v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :pswitch_0
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isCaptionEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isCaptionEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :pswitch_1
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSetupWizardComplete()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSetupWizardComplete(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :pswitch_2
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 61
    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isAllSoundOff()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isAllSoundOff(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :pswitch_3
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 80
    .line 81
    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isOrientationChanged()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isOrientationChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isDensityOrFontChanged()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isDensityOrFontChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isDisplayTypeChanged()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isDisplayTypeChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :pswitch_4
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isStandalone()Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-eqz p0, :cond_5

    .line 119
    .line 120
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 121
    .line 122
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_NONE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 123
    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    goto/16 :goto_2

    .line 132
    .line 133
    :pswitch_5
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 134
    .line 135
    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getSystemTime()J

    .line 139
    .line 140
    .line 141
    move-result-wide v0

    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->systemTimeNow(J)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :pswitch_6
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getZenMode()I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    invoke-interface {v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isZenModeEnabled(I)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-interface {v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isZenModePriorityOnly(I)Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-interface {v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isZenModeNone(I)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 176
    .line 177
    invoke-direct {v3, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isZenEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isZenPriorityOnly(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isZenNone(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getSystemTime()J

    .line 193
    .line 194
    .line 195
    move-result-wide v0

    .line 196
    invoke-virtual {p0, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->systemTimeNow(J)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    goto/16 :goto_2

    .line 205
    .line 206
    :pswitch_7
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isLcdOff()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-nez v0, :cond_0

    .line 211
    .line 212
    iget-boolean p0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->isCoverClosed:Z

    .line 213
    .line 214
    if-eqz p0, :cond_2

    .line 215
    .line 216
    :cond_0
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isDexMode()Z

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    if-eqz p0, :cond_1

    .line 221
    .line 222
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isVolumeStarEnabled()Z

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    if-nez p0, :cond_2

    .line 227
    .line 228
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 229
    .line 230
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_NONE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 231
    .line 232
    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    goto :goto_2

    .line 240
    :cond_1
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isAodVolumePanel()Z

    .line 241
    .line 242
    .line 243
    move-result p0

    .line 244
    if-nez p0, :cond_2

    .line 245
    .line 246
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 247
    .line 248
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_IDLE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 249
    .line 250
    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    goto :goto_2

    .line 258
    :cond_2
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 259
    .line 260
    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 261
    .line 262
    .line 263
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getCutoutHeight()I

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->cutoutHeight(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isMediaDefault()Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isMediaDefault(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getTimeoutControls()I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->timeOutControls(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getTimeoutControlsText()I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->timeOutControlsText(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isKeyguardState()Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    const/4 v2, 0x0

    .line 300
    if-nez v0, :cond_4

    .line 301
    .line 302
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isShadeLockedState()Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_3

    .line 307
    .line 308
    goto :goto_0

    .line 309
    :cond_3
    move v0, v2

    .line 310
    goto :goto_1

    .line 311
    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 312
    :goto_1
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isLockscreen(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 313
    .line 314
    .line 315
    invoke-interface {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getCaptionsComponentState(Z)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    goto :goto_2

    .line 323
    :pswitch_8
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isCoverClosed()Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    iput-boolean v0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->isCoverClosed:Z

    .line 328
    .line 329
    :cond_5
    :goto_2
    return-object p1

    .line 330
    nop

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final applyState(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/systemui/volume/middleware/DeviceStateController$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    aget v0, v1, v0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCaptionEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setCaptionEnabled(Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeSafetyWarningDialog()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setSafeVolumeDialogShowing(Z)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method
