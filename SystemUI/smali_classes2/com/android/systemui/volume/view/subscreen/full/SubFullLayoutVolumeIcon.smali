.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# instance fields
.field public currentMediaIconState:I

.field public final iconActiveColor:Landroid/content/res/ColorStateList;

.field public final iconEarShockColor:Landroid/content/res/ColorStateList;

.field public final iconMutedColor:Landroid/content/res/ColorStateList;

.field public iconType:I

.field public iconView:Landroid/view/View;

.field public isAnimatableIcon:Z

.field public final storeInteractor$delegate:Lkotlin/Lazy;

.field public stream:I

.field public volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const p2, 0x7f06097a

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p1}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconActiveColor:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    invoke-static {p2, p1}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconMutedColor:Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    const p2, 0x7f06097b

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconEarShockColor:Landroid/content/res/ColorStateList;

    .line 27
    .line 28
    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->currentMediaIconState:I

    .line 30
    .line 31
    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    .line 32
    .line 33
    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon$storeInteractor$2;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon$storeInteractor$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->storeInteractor$delegate:Lkotlin/Lazy;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    const-class p0, Landroid/widget/Button;

    .line 2
    .line 3
    const-string p0, "android.widget.Button"

    .line 4
    .line 5
    return-object p0
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v3, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aget v2, v3, v2

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eq v2, v3, :cond_d

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    if-eq v2, v4, :cond_5

    .line 26
    .line 27
    if-eq v2, v5, :cond_4

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    if-eq v2, v4, :cond_3

    .line 31
    .line 32
    const/4 v4, 0x5

    .line 33
    if-eq v2, v4, :cond_0

    .line 34
    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_0
    iget-boolean v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->isAnimatableIcon:Z

    .line 38
    .line 39
    if-eqz v2, :cond_e

    .line 40
    .line 41
    iget v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ne v2, v4, :cond_e

    .line 48
    .line 49
    iget v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 50
    .line 51
    invoke-static {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    iget v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 58
    .line 59
    invoke-static {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIconTargetState()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIconCurrentState()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->setMediaIconState(IIZ)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIconTargetState()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIconCurrentState()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iget v4, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    .line 88
    .line 89
    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->setSoundIconState(IIIZ)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :cond_3
    iget v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-ne v2, v4, :cond_e

    .line 101
    .line 102
    sget-object v2, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 103
    .line 104
    iget v4, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 105
    .line 106
    invoke-virtual {v2, v1, v4}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_e

    .line 111
    .line 112
    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_6

    .line 119
    .line 120
    :cond_4
    iget v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-ne v2, v3, :cond_e

    .line 127
    .line 128
    sget-object v2, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 129
    .line 130
    iget v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 131
    .line 132
    invoke-virtual {v2, v1, v3}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-eqz v1, :cond_e

    .line 137
    .line 138
    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_6

    .line 142
    .line 143
    :cond_5
    sget-object v2, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 144
    .line 145
    iget v4, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 146
    .line 147
    invoke-virtual {v2, v1, v4}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-eqz v2, :cond_e

    .line 152
    .line 153
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    const/4 v7, 0x0

    .line 158
    if-eqz v4, :cond_6

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_6
    move-object v2, v7

    .line 162
    :goto_1
    if-eqz v2, :cond_e

    .line 163
    .line 164
    invoke-virtual {v0, v2, v6}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    invoke-static {v4, v8}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isWaveAnimatableIcon(II)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-nez v4, :cond_7

    .line 180
    .line 181
    invoke-virtual {v0, v2, v6}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 182
    .line 183
    .line 184
    :cond_7
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    iget-object v8, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconView:Landroid/view/View;

    .line 189
    .line 190
    if-nez v8, :cond_8

    .line 191
    .line 192
    goto/16 :goto_5

    .line 193
    .line 194
    :cond_8
    iget v9, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    .line 195
    .line 196
    if-eq v9, v4, :cond_c

    .line 197
    .line 198
    iget v9, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 199
    .line 200
    invoke-static {v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    if-eqz v9, :cond_c

    .line 205
    .line 206
    if-eq v4, v5, :cond_c

    .line 207
    .line 208
    const v5, 0x7f0a0ce2

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    check-cast v5, Landroid/widget/ImageView;

    .line 216
    .line 217
    const v9, 0x7f0a0ceb

    .line 218
    .line 219
    .line 220
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    move-object v15, v9

    .line 225
    check-cast v15, Landroid/widget/ImageView;

    .line 226
    .line 227
    const v9, 0x7f0a0cee

    .line 228
    .line 229
    .line 230
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    move-object v11, v9

    .line 235
    check-cast v11, Landroid/widget/ImageView;

    .line 236
    .line 237
    const v9, 0x7f0a0d19

    .line 238
    .line 239
    .line 240
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    move-object v13, v9

    .line 245
    check-cast v13, Landroid/widget/ImageView;

    .line 246
    .line 247
    const v9, 0x7f0a0d1a

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    move-object v12, v9

    .line 255
    check-cast v12, Landroid/widget/ImageView;

    .line 256
    .line 257
    const v9, 0x7f0a0d1f

    .line 258
    .line 259
    .line 260
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    check-cast v8, Landroid/widget/ImageView;

    .line 265
    .line 266
    if-ne v4, v3, :cond_a

    .line 267
    .line 268
    iget-object v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 269
    .line 270
    if-nez v3, :cond_9

    .line 271
    .line 272
    move-object v9, v7

    .line 273
    goto :goto_2

    .line 274
    :cond_9
    move-object v9, v3

    .line 275
    :goto_2
    iget v10, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 276
    .line 277
    move-object v14, v8

    .line 278
    move-object/from16 v16, v5

    .line 279
    .line 280
    invoke-virtual/range {v9 .. v16}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 281
    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_a
    iget-object v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 285
    .line 286
    if-nez v3, :cond_b

    .line 287
    .line 288
    move-object v9, v7

    .line 289
    goto :goto_3

    .line 290
    :cond_b
    move-object v9, v3

    .line 291
    :goto_3
    move-object v10, v8

    .line 292
    move-object v14, v15

    .line 293
    move-object v15, v5

    .line 294
    invoke-virtual/range {v9 .. v15}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 295
    .line 296
    .line 297
    :goto_4
    iput v6, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->currentMediaIconState:I

    .line 298
    .line 299
    iput v4, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    .line 300
    .line 301
    :cond_c
    :goto_5
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateEnableState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 305
    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_d
    iget-object v0, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->storeInteractor$delegate:Lkotlin/Lazy;

    .line 309
    .line 310
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    check-cast v0, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 315
    .line 316
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 317
    .line 318
    .line 319
    :cond_e
    :goto_6
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->storeInteractor$delegate:Lkotlin/Lazy;

    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setMediaIconState(IIZ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    goto/16 :goto_7

    .line 9
    .line 10
    :cond_1
    const/4 v1, 0x1

    .line 11
    if-eqz p3, :cond_4

    .line 12
    .line 13
    const/4 p3, -0x1

    .line 14
    if-ne p2, p3, :cond_2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    sub-int p3, p1, p2

    .line 18
    .line 19
    if-lez p3, :cond_3

    .line 20
    .line 21
    add-int/2addr p2, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_3
    sub-int/2addr p2, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_4
    :goto_0
    move p2, p1

    .line 26
    :goto_1
    const p3, 0x7f0a0ce2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    move-object v10, p3

    .line 34
    check-cast v10, Landroid/widget/ImageView;

    .line 35
    .line 36
    const p3, 0x7f0a0ce6

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    move-object v9, p3

    .line 44
    check-cast v9, Landroid/widget/ImageView;

    .line 45
    .line 46
    const p3, 0x7f0a0ce7

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    move-object v5, p3

    .line 54
    check-cast v5, Landroid/widget/ImageView;

    .line 55
    .line 56
    const p3, 0x7f0a0ce8

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    move-object v7, p3

    .line 64
    check-cast v7, Landroid/widget/ImageView;

    .line 65
    .line 66
    const p3, 0x7f0a0ce9

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    move-object v6, p3

    .line 74
    check-cast v6, Landroid/widget/ImageView;

    .line 75
    .line 76
    const/4 p3, 0x0

    .line 77
    if-eq p2, v1, :cond_a

    .line 78
    .line 79
    const/4 v0, 0x2

    .line 80
    if-eq p2, v0, :cond_8

    .line 81
    .line 82
    const/4 v0, 0x3

    .line 83
    if-eq p2, v0, :cond_6

    .line 84
    .line 85
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 86
    .line 87
    if-nez p2, :cond_5

    .line 88
    .line 89
    move-object v2, p3

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    move-object v2, p2

    .line 92
    :goto_2
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 93
    .line 94
    const/4 p2, 0x0

    .line 95
    move-object v4, v5

    .line 96
    move-object v5, v6

    .line 97
    move-object v6, v7

    .line 98
    move-object v7, p2

    .line 99
    move-object v8, v9

    .line 100
    move-object v9, v10

    .line 101
    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 106
    .line 107
    if-nez p2, :cond_7

    .line 108
    .line 109
    move-object v2, p3

    .line 110
    goto :goto_3

    .line 111
    :cond_7
    move-object v2, p2

    .line 112
    :goto_3
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 113
    .line 114
    const/4 p2, 0x0

    .line 115
    move-object v4, v5

    .line 116
    move-object v5, v6

    .line 117
    move-object v6, v7

    .line 118
    move-object v7, p2

    .line 119
    move-object v8, v9

    .line 120
    move-object v9, v10

    .line 121
    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 122
    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 126
    .line 127
    if-nez p2, :cond_9

    .line 128
    .line 129
    move-object v2, p3

    .line 130
    goto :goto_4

    .line 131
    :cond_9
    move-object v2, p2

    .line 132
    :goto_4
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 133
    .line 134
    const/4 v8, 0x0

    .line 135
    move v4, p1

    .line 136
    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 137
    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_a
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 141
    .line 142
    if-nez p2, :cond_b

    .line 143
    .line 144
    move-object v2, p3

    .line 145
    goto :goto_5

    .line 146
    :cond_b
    move-object v2, p2

    .line 147
    :goto_5
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 148
    .line 149
    const/4 v8, 0x0

    .line 150
    move v4, p1

    .line 151
    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    :goto_6
    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->currentMediaIconState:I

    .line 155
    .line 156
    :goto_7
    return-void
.end method

.method public final setSoundIconState(IIIZ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    .line 9
    .line 10
    if-eq v1, p3, :cond_10

    .line 11
    .line 12
    :cond_1
    iput p3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz p4, :cond_5

    .line 16
    .line 17
    const/4 p4, -0x1

    .line 18
    if-eq p2, p4, :cond_5

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    if-nez p3, :cond_3

    .line 24
    .line 25
    const/4 p4, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_3
    move p4, p2

    .line 28
    :goto_0
    sub-int p4, p1, p4

    .line 29
    .line 30
    if-lez p4, :cond_4

    .line 31
    .line 32
    add-int/2addr p2, v1

    .line 33
    goto :goto_2

    .line 34
    :cond_4
    sub-int/2addr p2, v1

    .line 35
    goto :goto_2

    .line 36
    :cond_5
    :goto_1
    move p2, p1

    .line 37
    :goto_2
    const p4, 0x7f0a0ce2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    move-object v10, p4

    .line 45
    check-cast v10, Landroid/widget/ImageView;

    .line 46
    .line 47
    const p4, 0x7f0a0ceb

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    move-object v9, p4

    .line 55
    check-cast v9, Landroid/widget/ImageView;

    .line 56
    .line 57
    const p4, 0x7f0a0cee

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p4

    .line 64
    move-object v5, p4

    .line 65
    check-cast v5, Landroid/widget/ImageView;

    .line 66
    .line 67
    const p4, 0x7f0a0d19

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    move-object v7, p4

    .line 75
    check-cast v7, Landroid/widget/ImageView;

    .line 76
    .line 77
    const p4, 0x7f0a0d1a

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    move-object v6, p4

    .line 85
    check-cast v6, Landroid/widget/ImageView;

    .line 86
    .line 87
    const p4, 0x7f0a0d1f

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p4

    .line 94
    move-object v8, p4

    .line 95
    check-cast v8, Landroid/widget/ImageView;

    .line 96
    .line 97
    iget p4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 98
    .line 99
    invoke-static {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 100
    .line 101
    .line 102
    move-result p4

    .line 103
    const/4 v0, 0x0

    .line 104
    if-eqz p4, :cond_9

    .line 105
    .line 106
    if-nez p1, :cond_9

    .line 107
    .line 108
    if-ne p3, v1, :cond_7

    .line 109
    .line 110
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 111
    .line 112
    if-nez p2, :cond_6

    .line 113
    .line 114
    move-object v2, v0

    .line 115
    goto :goto_3

    .line 116
    :cond_6
    move-object v2, p2

    .line 117
    :goto_3
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 118
    .line 119
    move-object v4, v5

    .line 120
    move-object v5, v6

    .line 121
    move-object v6, v7

    .line 122
    move-object v7, v8

    .line 123
    move-object v8, v9

    .line 124
    move-object v9, v10

    .line 125
    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_8

    .line 129
    .line 130
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 131
    .line 132
    if-nez p2, :cond_8

    .line 133
    .line 134
    move-object v2, v0

    .line 135
    goto :goto_4

    .line 136
    :cond_8
    move-object v2, p2

    .line 137
    :goto_4
    move-object v3, v8

    .line 138
    move-object v4, v5

    .line 139
    move-object v5, v6

    .line 140
    move-object v6, v7

    .line 141
    move-object v7, v9

    .line 142
    move-object v8, v10

    .line 143
    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    goto :goto_8

    .line 147
    :cond_9
    const/4 p3, 0x3

    .line 148
    if-ne p2, p3, :cond_b

    .line 149
    .line 150
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 151
    .line 152
    if-nez p2, :cond_a

    .line 153
    .line 154
    move-object v2, v0

    .line 155
    goto :goto_5

    .line 156
    :cond_a
    move-object v2, p2

    .line 157
    :goto_5
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 158
    .line 159
    move-object v4, v5

    .line 160
    move-object v5, v6

    .line 161
    move-object v6, v7

    .line 162
    move-object v7, v8

    .line 163
    move-object v8, v9

    .line 164
    move-object v9, v10

    .line 165
    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 166
    .line 167
    .line 168
    goto :goto_8

    .line 169
    :cond_b
    const/4 p3, 0x2

    .line 170
    if-ne p2, p3, :cond_d

    .line 171
    .line 172
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 173
    .line 174
    if-nez p2, :cond_c

    .line 175
    .line 176
    move-object v2, v0

    .line 177
    goto :goto_6

    .line 178
    :cond_c
    move-object v2, p2

    .line 179
    :goto_6
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 180
    .line 181
    move v4, p1

    .line 182
    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 183
    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_d
    if-ne p2, v1, :cond_f

    .line 187
    .line 188
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 189
    .line 190
    if-nez p2, :cond_e

    .line 191
    .line 192
    move-object v2, v0

    .line 193
    goto :goto_7

    .line 194
    :cond_e
    move-object v2, p2

    .line 195
    :goto_7
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 196
    .line 197
    move v4, p1

    .line 198
    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 199
    .line 200
    .line 201
    :cond_f
    :goto_8
    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->currentMediaIconState:I

    .line 202
    .line 203
    :cond_10
    return-void
.end method

.method public final updateEnableState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconClickable()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/4 v2, 0x0

    .line 57
    :goto_2
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void
.end method

.method public final updateIconLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {v0, p1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableIcon(II)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    iget-boolean p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->isAnimatableIcon:Z

    .line 16
    .line 17
    if-eq p2, p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p2, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 23
    :goto_1
    if-eqz p2, :cond_8

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-lez p2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    :cond_2
    const/4 p2, 0x0

    .line 35
    if-eqz p1, :cond_6

    .line 36
    .line 37
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 38
    .line 39
    invoke-static {v0}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const v1, 0x7f0d0427

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 62
    .line 63
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_5

    .line 68
    .line 69
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 70
    .line 71
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const v1, 0x7f0d0426

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 94
    .line 95
    if-eqz v1, :cond_7

    .line 96
    .line 97
    move-object p2, v0

    .line 98
    check-cast p2, Landroid/view/ViewGroup;

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const v1, 0x7f0d0428

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    goto :goto_3

    .line 117
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const v1, 0x7f0d042a

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    :cond_7
    :goto_3
    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconView:Landroid/view/View;

    .line 133
    .line 134
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    :cond_8
    iput-boolean p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->isAnimatableIcon:Z

    .line 138
    .line 139
    return-void
.end method

.method public final updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableIcon(II)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_10

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->isAnimatableIcon:Z

    .line 17
    .line 18
    if-eqz v0, :cond_10

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconView:Landroid/view/View;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_7

    .line 25
    .line 26
    :cond_0
    iget v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 27
    .line 28
    invoke-static {v2}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x3

    .line 34
    const/4 v5, 0x1

    .line 35
    if-nez v2, :cond_9

    .line 36
    .line 37
    iget v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 38
    .line 39
    invoke-static {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_9

    .line 44
    .line 45
    iget v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 46
    .line 47
    invoke-static {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_1
    const p2, 0x7f0a0cee

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Landroid/widget/ImageView;

    .line 63
    .line 64
    const v2, 0x7f0a0ceb

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroid/widget/ImageView;

    .line 72
    .line 73
    const v6, 0x7f0a0d1f

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Landroid/widget/ImageView;

    .line 81
    .line 82
    const v7, 0x7f0a0ce2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    invoke-static {v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isNotification(I)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_2

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    const v8, 0x7f0812ec

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    const v8, 0x7f0812ed

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    const v8, 0x7f0812ee

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_2
    invoke-static {v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSystem(I)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eqz v7, :cond_3

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    const v8, 0x7f0812f2

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    const v8, 0x7f0812f3

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    .line 177
    .line 178
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    iget v7, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    .line 183
    .line 184
    if-eq v7, p1, :cond_12

    .line 185
    .line 186
    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    .line 187
    .line 188
    if-eqz p1, :cond_7

    .line 189
    .line 190
    if-eq p1, v5, :cond_5

    .line 191
    .line 192
    if-eq p1, v4, :cond_4

    .line 193
    .line 194
    goto/16 :goto_7

    .line 195
    .line 196
    :cond_4
    sget-object p0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 197
    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    invoke-static {v2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v6}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_7

    .line 214
    .line 215
    :cond_5
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-static {p2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    invoke-static {v6}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 230
    .line 231
    .line 232
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 233
    .line 234
    if-nez p0, :cond_6

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_6
    move-object v1, p0

    .line 238
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-static {v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startSplashAnimation(Landroid/view/View;)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_7

    .line 245
    .line 246
    :cond_7
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-static {p2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 255
    .line 256
    .line 257
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 264
    .line 265
    if-nez p0, :cond_8

    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_8
    move-object v1, p0

    .line 269
    :goto_2
    invoke-virtual {v1, v6}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startVibrationAnimation(Landroid/view/View;)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_7

    .line 273
    .line 274
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevelMax()I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 279
    .line 280
    invoke-static {v1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_a

    .line 285
    .line 286
    const/16 v1, 0x64

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_a
    move v1, v5

    .line 290
    :goto_4
    mul-int/2addr v0, v1

    .line 291
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    int-to-double v6, v1

    .line 296
    int-to-double v8, v0

    .line 297
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 298
    .line 299
    mul-double/2addr v10, v8

    .line 300
    cmpl-double v0, v6, v10

    .line 301
    .line 302
    if-lez v0, :cond_b

    .line 303
    .line 304
    move v3, v4

    .line 305
    goto :goto_5

    .line 306
    :cond_b
    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    .line 307
    .line 308
    mul-double/2addr v8, v10

    .line 309
    cmpl-double v0, v6, v8

    .line 310
    .line 311
    if-lez v0, :cond_c

    .line 312
    .line 313
    const/4 v3, 0x2

    .line 314
    goto :goto_5

    .line 315
    :cond_c
    if-lez v1, :cond_d

    .line 316
    .line 317
    move v3, v5

    .line 318
    :cond_d
    :goto_5
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 319
    .line 320
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-nez v0, :cond_f

    .line 325
    .line 326
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 327
    .line 328
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_e

    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_e
    iget p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->currentMediaIconState:I

    .line 336
    .line 337
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->setMediaIconState(IIZ)V

    .line 338
    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_f
    :goto_6
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->currentMediaIconState:I

    .line 342
    .line 343
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    invoke-virtual {p0, v3, v0, p1, p2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->setSoundIconState(IIIZ)V

    .line 348
    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_10
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconView:Landroid/view/View;

    .line 352
    .line 353
    instance-of v0, p2, Landroid/widget/ImageView;

    .line 354
    .line 355
    if-eqz v0, :cond_11

    .line 356
    .line 357
    move-object v1, p2

    .line 358
    check-cast v1, Landroid/widget/ImageView;

    .line 359
    .line 360
    :cond_11
    if-eqz v1, :cond_12

    .line 361
    .line 362
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 367
    .line 368
    .line 369
    move-result p2

    .line 370
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    invoke-static {p2, p1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->getDefaultIconResId(II)I

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    .line 384
    .line 385
    :cond_12
    :goto_7
    return-void
.end method

.method public final updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x3

    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isMuted()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconMutedColor:Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaDeviceOn()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaPinDeviceOn()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_6

    .line 45
    .line 46
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAudioSharing(I)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    mul-int/lit8 p1, p1, 0x64

    .line 61
    .line 62
    :cond_4
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getEarProtectLevel()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x1

    .line 67
    if-gt v2, v1, :cond_5

    .line 68
    .line 69
    if-ge v1, p1, :cond_5

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    const/4 v2, 0x0

    .line 73
    :goto_0
    if-eqz v2, :cond_6

    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconEarShockColor:Landroid/content/res/ColorStateList;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconActiveColor:Landroid/content/res/ColorStateList;

    .line 79
    .line 80
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-static {v1, p2}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableIcon(II)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-nez p2, :cond_9

    .line 93
    .line 94
    instance-of p0, v0, Landroid/widget/ImageView;

    .line 95
    .line 96
    if-eqz p0, :cond_7

    .line 97
    .line 98
    move-object p0, v0

    .line 99
    check-cast p0, Landroid/widget/ImageView;

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_7
    const/4 p0, 0x0

    .line 103
    :goto_2
    if-nez p0, :cond_8

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_8
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_9
    iget p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 111
    .line 112
    invoke-static {p2}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    if-eqz p2, :cond_a

    .line 117
    .line 118
    const p0, 0x7f0a0ce7

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    check-cast p0, Landroid/widget/ImageView;

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 128
    .line 129
    .line 130
    const p0, 0x7f0a0ce8

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Landroid/widget/ImageView;

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 140
    .line 141
    .line 142
    const p0, 0x7f0a0ce9

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    check-cast p0, Landroid/widget/ImageView;

    .line 150
    .line 151
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_a
    iget p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 156
    .line 157
    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-nez p2, :cond_b

    .line 162
    .line 163
    iget p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 164
    .line 165
    invoke-static {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-eqz p0, :cond_c

    .line 170
    .line 171
    :cond_b
    const p0, 0x7f0a0cee

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    check-cast p0, Landroid/widget/ImageView;

    .line 179
    .line 180
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 181
    .line 182
    .line 183
    const p0, 0x7f0a0d19

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    check-cast p0, Landroid/widget/ImageView;

    .line 191
    .line 192
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 193
    .line 194
    .line 195
    const p0, 0x7f0a0d1a

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    check-cast p0, Landroid/widget/ImageView;

    .line 203
    .line 204
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 205
    .line 206
    .line 207
    :cond_c
    :goto_3
    const p0, 0x7f0a0ce2

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    check-cast p0, Landroid/widget/ImageView;

    .line 215
    .line 216
    if-eqz p0, :cond_d

    .line 217
    .line 218
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 219
    .line 220
    .line 221
    :cond_d
    return-void
.end method
