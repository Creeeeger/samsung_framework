.class public final Lcom/android/systemui/keyguardimage/ClockImageCreator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguardimage/ImageCreator;


# instance fields
.field public final mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

.field public final mContext:Landroid/content/Context;

.field public final mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

.field public final mPluginFaceWidget:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

.field public final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-class p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 15
    .line 16
    const-class p1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mPluginFaceWidget:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 25
    .line 26
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const-class p1, Lcom/android/systemui/subscreen/SubScreenManager;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/android/systemui/subscreen/SubScreenManager;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object p1, v0

    .line 41
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 42
    .line 43
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    const-class p1, Lcom/android/systemui/cover/CoverScreenManager;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/android/systemui/cover/CoverScreenManager;

    .line 55
    .line 56
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "createImage() option: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v3, "ClockImageCreator"

    .line 23
    .line 24
    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iget-object v4, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 31
    .line 32
    const/4 v5, 0x4

    .line 33
    if-ne v0, v5, :cond_11

    .line 34
    .line 35
    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    .line 36
    .line 37
    const/16 v5, 0x21

    .line 38
    .line 39
    if-ne v0, v5, :cond_0

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v0, v1

    .line 44
    :goto_0
    const-string/jumbo v5, "setClockPreviewColor() no plugin"

    .line 45
    .line 46
    .line 47
    const-string v6, ", customColor="

    .line 48
    .line 49
    const-string v7, ", fontColorType="

    .line 50
    .line 51
    const-string/jumbo v8, "setClockPreviewColor() paletteIndex="

    .line 52
    .line 53
    .line 54
    const-string v9, "getClockPreview() no plugin"

    .line 55
    .line 56
    if-eqz v0, :cond_8

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    .line 59
    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    const-string p0, "createImage return null - mCoverScreenManager is null"

    .line 63
    .line 64
    new-array p1, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-static {v3, p0, p1}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-object v2

    .line 70
    :cond_1
    iget-object v10, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    .line 71
    .line 72
    const-string v11, "CoverScreenManager"

    .line 73
    .line 74
    if-eqz v10, :cond_3

    .line 75
    .line 76
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    iget-object v12, v0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 81
    .line 82
    if-nez v12, :cond_2

    .line 83
    .line 84
    invoke-static {v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-interface {v12, v10}, Lcom/android/systemui/plugins/cover/PluginCover;->getCoverScreenPreview(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    iget-object v10, v0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 94
    .line 95
    if-nez v10, :cond_4

    .line 96
    .line 97
    invoke-static {v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :goto_1
    move-object v9, v2

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    invoke-interface {v10}, Lcom/android/systemui/plugins/cover/PluginCover;->getCoverScreenPreview()Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    :goto_2
    if-nez v9, :cond_5

    .line 107
    .line 108
    const-string p0, "createImage return null - getClockPreview is null"

    .line 109
    .line 110
    new-array p1, v1, [Ljava/lang/Object;

    .line 111
    .line 112
    invoke-static {v3, p0, p1}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return-object v2

    .line 116
    :cond_5
    iget v2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColor:I

    .line 117
    .line 118
    if-nez v2, :cond_6

    .line 119
    .line 120
    iget v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorIndex:I

    .line 121
    .line 122
    const/4 v10, -0x1

    .line 123
    if-eq v3, v10, :cond_10

    .line 124
    .line 125
    :cond_6
    iget v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorIndex:I

    .line 126
    .line 127
    iget v10, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorType:I

    .line 128
    .line 129
    iget-object v12, v0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 130
    .line 131
    if-nez v12, :cond_7

    .line 132
    .line 133
    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    goto/16 :goto_5

    .line 137
    .line 138
    :cond_7
    invoke-static {v8, v3, v7, v10, v6}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    iget-object v0, v0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 157
    .line 158
    invoke-interface {v0, v9, v3, v10, v2}, Lcom/android/systemui/plugins/cover/PluginCover;->setClockColor(Landroid/view/View;III)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_5

    .line 162
    .line 163
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 164
    .line 165
    if-nez v0, :cond_9

    .line 166
    .line 167
    const-string p0, "createImage returns null - SubScreenManager is null"

    .line 168
    .line 169
    new-array p1, v1, [Ljava/lang/Object;

    .line 170
    .line 171
    invoke-static {v3, p0, p1}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_b

    .line 175
    .line 176
    :cond_9
    iget-object v2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    .line 177
    .line 178
    const-string v10, "SubScreenManager"

    .line 179
    .line 180
    if-eqz v2, :cond_b

    .line 181
    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    iget-object v11, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 187
    .line 188
    if-nez v11, :cond_a

    .line 189
    .line 190
    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_a
    invoke-interface {v11, v2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getSubScreenPreview(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    goto :goto_4

    .line 199
    :cond_b
    iget-object v2, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 200
    .line 201
    if-nez v2, :cond_c

    .line 202
    .line 203
    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :goto_3
    const/4 v2, 0x0

    .line 207
    goto :goto_4

    .line 208
    :cond_c
    invoke-interface {v2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getSubScreenPreview()Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    :goto_4
    move-object v9, v2

    .line 213
    if-nez v9, :cond_d

    .line 214
    .line 215
    const-string p0, "createImage returns null - getClockPreview is null"

    .line 216
    .line 217
    new-array p1, v1, [Ljava/lang/Object;

    .line 218
    .line 219
    invoke-static {v3, p0, p1}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_b

    .line 223
    .line 224
    :cond_d
    iget v2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColor:I

    .line 225
    .line 226
    if-nez v2, :cond_e

    .line 227
    .line 228
    iget v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorIndex:I

    .line 229
    .line 230
    const/4 v11, -0x1

    .line 231
    if-eq v3, v11, :cond_10

    .line 232
    .line 233
    :cond_e
    iget v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorIndex:I

    .line 234
    .line 235
    iget v11, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorType:I

    .line 236
    .line 237
    iget-object v12, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 238
    .line 239
    if-nez v12, :cond_f

    .line 240
    .line 241
    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_f
    invoke-static {v8, v3, v7, v11, v6}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    iget-object v0, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 264
    .line 265
    invoke-interface {v0, v9, v3, v11, v2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->setClockColor(Landroid/view/View;III)V

    .line 266
    .line 267
    .line 268
    :cond_10
    :goto_5
    const/4 v0, 0x2

    .line 269
    goto/16 :goto_d

    .line 270
    .line 271
    :cond_11
    iget-object v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    .line 272
    .line 273
    if-nez v0, :cond_17

    .line 274
    .line 275
    iget-object v0, v4, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 276
    .line 277
    if-eqz v0, :cond_12

    .line 278
    .line 279
    invoke-interface {v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getDefaultClockType()I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    goto :goto_6

    .line 284
    :cond_12
    const/4 v0, 0x2

    .line 285
    :goto_6
    iget-object v2, v4, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 286
    .line 287
    if-eqz v2, :cond_13

    .line 288
    .line 289
    invoke-interface {v2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getConsideredClockType()I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    goto :goto_7

    .line 294
    :cond_13
    const/4 v2, 0x2

    .line 295
    :goto_7
    const/4 v6, -0x1

    .line 296
    if-ne v2, v6, :cond_14

    .line 297
    .line 298
    goto :goto_9

    .line 299
    :cond_14
    iget-object v6, v4, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 300
    .line 301
    if-eqz v6, :cond_15

    .line 302
    .line 303
    invoke-interface {v6, v2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockGroup(I)I

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    goto :goto_8

    .line 308
    :cond_15
    const/4 v6, 0x2

    .line 309
    :goto_8
    const/4 v7, 0x1

    .line 310
    if-eq v6, v7, :cond_16

    .line 311
    .line 312
    const/4 v7, 0x2

    .line 313
    if-eq v6, v7, :cond_16

    .line 314
    .line 315
    if-eq v6, v5, :cond_16

    .line 316
    .line 317
    const/4 v5, 0x5

    .line 318
    if-eq v6, v5, :cond_16

    .line 319
    .line 320
    const/4 v5, 0x7

    .line 321
    if-eq v6, v5, :cond_16

    .line 322
    .line 323
    const/16 v5, 0x9

    .line 324
    .line 325
    if-eq v6, v5, :cond_16

    .line 326
    .line 327
    const/16 v5, 0xa

    .line 328
    .line 329
    if-eq v6, v5, :cond_16

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_16
    move v0, v2

    .line 333
    goto :goto_9

    .line 334
    :cond_17
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    :goto_9
    const-string v2, "createImage clockType: "

    .line 339
    .line 340
    invoke-static {v2, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    new-array v5, v1, [Ljava/lang/Object;

    .line 345
    .line 346
    invoke-static {v3, v2, v5}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    iget-object v2, v4, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 350
    .line 351
    if-eqz v2, :cond_18

    .line 352
    .line 353
    invoke-interface {v2, v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockView(I)Landroid/view/View;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    goto :goto_a

    .line 358
    :cond_18
    const/4 v2, 0x0

    .line 359
    :goto_a
    move-object v9, v2

    .line 360
    if-nez v9, :cond_19

    .line 361
    .line 362
    const-string p0, "createImage returns null - clockView is null"

    .line 363
    .line 364
    new-array p1, v1, [Ljava/lang/Object;

    .line 365
    .line 366
    invoke-static {v3, p0, p1}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    :goto_b
    const/4 p0, 0x0

    .line 370
    return-object p0

    .line 371
    :cond_19
    iget-boolean v2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    .line 372
    .line 373
    if-nez v2, :cond_1a

    .line 374
    .line 375
    iget-object v2, v4, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 376
    .line 377
    if-eqz v2, :cond_1d

    .line 378
    .line 379
    iget-object v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    .line 380
    .line 381
    invoke-interface {v2, v9, v3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->setAdaptiveColors(Landroid/view/View;[I)V

    .line 382
    .line 383
    .line 384
    goto :goto_c

    .line 385
    :cond_1a
    iget-boolean v2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    .line 386
    .line 387
    if-eqz v2, :cond_1c

    .line 388
    .line 389
    iget v2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColor:I

    .line 390
    .line 391
    if-eqz v2, :cond_1c

    .line 392
    .line 393
    iget v2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->legibilityColor:I

    .line 394
    .line 395
    const/4 v3, -0x1

    .line 396
    if-eq v2, v3, :cond_1b

    .line 397
    .line 398
    iget-object v3, v4, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 399
    .line 400
    if-eqz v3, :cond_1b

    .line 401
    .line 402
    invoke-interface {v3, v9, v2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->setFontColorType(Landroid/view/View;I)V

    .line 403
    .line 404
    .line 405
    :cond_1b
    iget v2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColor:I

    .line 406
    .line 407
    iget-object v3, v4, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 408
    .line 409
    if-eqz v3, :cond_1d

    .line 410
    .line 411
    invoke-interface {v3, v9, v2, v1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->setColorThemeAdaptiveColor(Landroid/view/View;IZ)V

    .line 412
    .line 413
    .line 414
    goto :goto_c

    .line 415
    :cond_1c
    iget-object v2, v4, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 416
    .line 417
    if-eqz v2, :cond_1d

    .line 418
    .line 419
    invoke-interface {v2, v9}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->setPreDefineOrCustomColor(Landroid/view/View;)V

    .line 420
    .line 421
    .line 422
    :cond_1d
    :goto_c
    iget-boolean v2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->isRtl:Z

    .line 423
    .line 424
    if-eqz v2, :cond_1e

    .line 425
    .line 426
    const/4 v2, 0x1

    .line 427
    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 428
    .line 429
    .line 430
    :cond_1e
    iget-object v2, v4, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 431
    .line 432
    if-eqz v2, :cond_1f

    .line 433
    .line 434
    invoke-interface {v2, v9}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->forceRefresh(Landroid/view/View;)V

    .line 435
    .line 436
    .line 437
    :cond_1f
    :goto_d
    invoke-static {v9, p1}, Lcom/android/systemui/keyguardimage/ImageCreator;->getViewImage(Landroid/view/View;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)Landroid/graphics/Bitmap;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    const/4 v3, 0x0

    .line 442
    if-nez v2, :cond_20

    .line 443
    .line 444
    return-object v3

    .line 445
    :cond_20
    if-nez p2, :cond_21

    .line 446
    .line 447
    return-object v2

    .line 448
    :cond_21
    iget-object v5, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    .line 449
    .line 450
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 451
    .line 452
    .line 453
    move-result-object v6

    .line 454
    new-instance v7, Landroid/util/TypedValue;

    .line 455
    .line 456
    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 457
    .line 458
    .line 459
    const v8, 0x7f07034f

    .line 460
    .line 461
    .line 462
    const/4 v9, 0x1

    .line 463
    invoke-virtual {v6, v8, v7, v9}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 464
    .line 465
    .line 466
    iget v6, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 467
    .line 468
    iget v7, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 469
    .line 470
    if-ge v6, v7, :cond_22

    .line 471
    .line 472
    const/4 v6, 0x1

    .line 473
    goto :goto_e

    .line 474
    :cond_22
    move v6, v1

    .line 475
    :goto_e
    iget-object v7, v4, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 476
    .line 477
    if-nez v7, :cond_23

    .line 478
    .line 479
    move v7, v1

    .line 480
    goto :goto_f

    .line 481
    :cond_23
    invoke-interface {v7}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockGravity()I

    .line 482
    .line 483
    .line 484
    move-result v7

    .line 485
    :goto_f
    const/high16 v8, 0x40000000    # 2.0f

    .line 486
    .line 487
    const/4 v9, -0x1

    .line 488
    if-eq v7, v9, :cond_28

    .line 489
    .line 490
    if-nez v7, :cond_24

    .line 491
    .line 492
    goto :goto_11

    .line 493
    :cond_24
    iget-object v3, v4, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 494
    .line 495
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object v9

    .line 499
    if-nez v3, :cond_25

    .line 500
    .line 501
    new-instance v3, Landroid/util/Pair;

    .line 502
    .line 503
    invoke-direct {v3, v9, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    goto :goto_10

    .line 507
    :cond_25
    :try_start_0
    invoke-interface {v3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getKeyguardClockHorizontalPadding()Landroid/util/Pair;

    .line 508
    .line 509
    .line 510
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    goto :goto_10

    .line 512
    :catch_0
    new-instance v3, Landroid/util/Pair;

    .line 513
    .line 514
    invoke-direct {v3, v9, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    :goto_10
    const/4 v9, 0x1

    .line 518
    if-ne v7, v9, :cond_26

    .line 519
    .line 520
    iget v7, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 521
    .line 522
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 523
    .line 524
    .line 525
    move-result v10

    .line 526
    sub-int/2addr v7, v10

    .line 527
    int-to-float v7, v7

    .line 528
    iget v10, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    .line 529
    .line 530
    iget-object v11, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 531
    .line 532
    check-cast v11, Ljava/lang/Integer;

    .line 533
    .line 534
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 535
    .line 536
    .line 537
    move-result v11

    .line 538
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 539
    .line 540
    check-cast v3, Ljava/lang/Integer;

    .line 541
    .line 542
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    int-to-float v3, v3

    .line 551
    mul-float/2addr v10, v3

    .line 552
    div-float/2addr v10, v8

    .line 553
    add-float/2addr v10, v7

    .line 554
    div-float/2addr v10, v8

    .line 555
    float-to-int v3, v10

    .line 556
    iput v3, p2, Landroid/graphics/Point;->x:I

    .line 557
    .line 558
    goto/16 :goto_14

    .line 559
    .line 560
    :cond_26
    const v10, 0x800003

    .line 561
    .line 562
    .line 563
    if-ne v7, v10, :cond_27

    .line 564
    .line 565
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 566
    .line 567
    check-cast v3, Ljava/lang/Integer;

    .line 568
    .line 569
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    int-to-float v3, v3

    .line 574
    iget v7, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    .line 575
    .line 576
    mul-float/2addr v3, v7

    .line 577
    float-to-int v3, v3

    .line 578
    iput v3, p2, Landroid/graphics/Point;->x:I

    .line 579
    .line 580
    goto/16 :goto_14

    .line 581
    .line 582
    :cond_27
    iget v7, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 583
    .line 584
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 585
    .line 586
    check-cast v3, Ljava/lang/Integer;

    .line 587
    .line 588
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 589
    .line 590
    .line 591
    move-result v3

    .line 592
    int-to-float v3, v3

    .line 593
    iget v10, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    .line 594
    .line 595
    mul-float/2addr v3, v10

    .line 596
    float-to-int v3, v3

    .line 597
    sub-int/2addr v7, v3

    .line 598
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    sub-int/2addr v7, v3

    .line 603
    iput v7, p2, Landroid/graphics/Point;->x:I

    .line 604
    .line 605
    goto/16 :goto_14

    .line 606
    .line 607
    :cond_28
    :goto_11
    const/4 v9, 0x1

    .line 608
    iget-object v7, v4, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 609
    .line 610
    if-eqz v7, :cond_29

    .line 611
    .line 612
    invoke-interface {v7, v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->isStartAlignClock(I)Z

    .line 613
    .line 614
    .line 615
    move-result v7

    .line 616
    goto :goto_12

    .line 617
    :cond_29
    move v7, v1

    .line 618
    :goto_12
    if-eqz v7, :cond_2f

    .line 619
    .line 620
    iget v7, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 621
    .line 622
    iget v10, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 623
    .line 624
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 625
    .line 626
    .line 627
    move-result-object v11

    .line 628
    const-class v12, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 629
    .line 630
    invoke-static {v12}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v12

    .line 634
    check-cast v12, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 635
    .line 636
    if-eqz v12, :cond_2a

    .line 637
    .line 638
    iget-object v3, v12, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginKeyguardSidePadding:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;

    .line 639
    .line 640
    :cond_2a
    const v12, 0x7f070351

    .line 641
    .line 642
    .line 643
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 644
    .line 645
    .line 646
    move-result v11

    .line 647
    if-nez v3, :cond_2b

    .line 648
    .line 649
    goto :goto_13

    .line 650
    :cond_2b
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 651
    .line 652
    .line 653
    move-result v11

    .line 654
    if-eqz v11, :cond_2c

    .line 655
    .line 656
    xor-int/lit8 v11, v6, 0x1

    .line 657
    .line 658
    invoke-interface {v3, v7, v10, v11}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;->getTabletClockSidePadding(IIZ)I

    .line 659
    .line 660
    .line 661
    move-result v11

    .line 662
    goto :goto_13

    .line 663
    :cond_2c
    if-eqz v6, :cond_2d

    .line 664
    .line 665
    invoke-interface {v3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;->getClockSidePadding()I

    .line 666
    .line 667
    .line 668
    move-result v11

    .line 669
    goto :goto_13

    .line 670
    :cond_2d
    invoke-interface {v3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;->needToSidePaddingForClock()Z

    .line 671
    .line 672
    .line 673
    move-result v10

    .line 674
    if-eqz v10, :cond_2e

    .line 675
    .line 676
    invoke-interface {v3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;->getSidePaddingWhenIndisplayFP()I

    .line 677
    .line 678
    .line 679
    move-result v11

    .line 680
    goto :goto_13

    .line 681
    :cond_2e
    int-to-float v3, v7

    .line 682
    const v7, 0x3e25e354    # 0.162f

    .line 683
    .line 684
    .line 685
    mul-float/2addr v3, v7

    .line 686
    float-to-int v11, v3

    .line 687
    :goto_13
    int-to-float v3, v11

    .line 688
    iget v7, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    .line 689
    .line 690
    mul-float/2addr v3, v7

    .line 691
    float-to-int v3, v3

    .line 692
    iput v3, p2, Landroid/graphics/Point;->x:I

    .line 693
    .line 694
    iget-boolean v7, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->isRtl:Z

    .line 695
    .line 696
    if-eqz v7, :cond_30

    .line 697
    .line 698
    iget v7, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 699
    .line 700
    sub-int/2addr v7, v3

    .line 701
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 702
    .line 703
    .line 704
    move-result v3

    .line 705
    sub-int/2addr v7, v3

    .line 706
    iput v7, p2, Landroid/graphics/Point;->x:I

    .line 707
    .line 708
    goto :goto_14

    .line 709
    :cond_2f
    iget v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 710
    .line 711
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 712
    .line 713
    .line 714
    move-result v7

    .line 715
    sub-int/2addr v3, v7

    .line 716
    div-int/lit8 v3, v3, 0x2

    .line 717
    .line 718
    iput v3, p2, Landroid/graphics/Point;->x:I

    .line 719
    .line 720
    :cond_30
    :goto_14
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 721
    .line 722
    .line 723
    move-result v3

    .line 724
    int-to-float v3, v3

    .line 725
    iget v7, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    .line 726
    .line 727
    const/4 v10, 0x0

    .line 728
    cmpg-float v11, v10, v7

    .line 729
    .line 730
    const/high16 v12, 0x3f800000    # 1.0f

    .line 731
    .line 732
    if-gez v11, :cond_31

    .line 733
    .line 734
    cmpg-float v11, v7, v12

    .line 735
    .line 736
    if-gez v11, :cond_31

    .line 737
    .line 738
    div-float/2addr v3, v7

    .line 739
    :cond_31
    iget-object v7, v4, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 740
    .line 741
    if-nez v7, :cond_32

    .line 742
    .line 743
    goto :goto_15

    .line 744
    :cond_32
    invoke-interface {v7, v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockScalePivot(I)I

    .line 745
    .line 746
    .line 747
    move-result v7

    .line 748
    const/high16 v11, 0x10000

    .line 749
    .line 750
    and-int/2addr v7, v11

    .line 751
    if-ne v7, v11, :cond_33

    .line 752
    .line 753
    goto :goto_15

    .line 754
    :cond_33
    move v9, v1

    .line 755
    :goto_15
    if-eqz v9, :cond_35

    .line 756
    .line 757
    iget-object v4, v4, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    .line 758
    .line 759
    if-nez v4, :cond_34

    .line 760
    .line 761
    move v4, v12

    .line 762
    goto :goto_16

    .line 763
    :cond_34
    invoke-interface {v4}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockScale()F

    .line 764
    .line 765
    .line 766
    move-result v4

    .line 767
    :goto_16
    div-float v4, v12, v4

    .line 768
    .line 769
    sub-float/2addr v4, v12

    .line 770
    mul-float/2addr v4, v3

    .line 771
    div-float/2addr v4, v8

    .line 772
    float-to-int v4, v4

    .line 773
    goto :goto_17

    .line 774
    :cond_35
    move v4, v1

    .line 775
    :goto_17
    iget v7, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    .line 776
    .line 777
    mul-float/2addr v7, v3

    .line 778
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 779
    .line 780
    .line 781
    move-result v8

    .line 782
    int-to-float v8, v8

    .line 783
    cmpg-float v7, v7, v8

    .line 784
    .line 785
    if-gtz v7, :cond_36

    .line 786
    .line 787
    move v3, v10

    .line 788
    goto :goto_18

    .line 789
    :cond_36
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 790
    .line 791
    .line 792
    move-result v7

    .line 793
    int-to-float v7, v7

    .line 794
    iget v8, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    .line 795
    .line 796
    div-float/2addr v7, v8

    .line 797
    sub-float/2addr v3, v7

    .line 798
    :goto_18
    if-eqz v6, :cond_37

    .line 799
    .line 800
    goto :goto_19

    .line 801
    :cond_37
    invoke-static {v5}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 802
    .line 803
    .line 804
    move-result v5

    .line 805
    int-to-float v10, v5

    .line 806
    :goto_19
    add-float/2addr v3, v10

    .line 807
    int-to-float v4, v4

    .line 808
    add-float/2addr v3, v4

    .line 809
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mPluginFaceWidget:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 810
    .line 811
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 812
    .line 813
    if-eqz p0, :cond_38

    .line 814
    .line 815
    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getMinTopMargin(IZ)I

    .line 816
    .line 817
    .line 818
    move-result v1

    .line 819
    :cond_38
    int-to-float p0, v1

    .line 820
    add-float/2addr v3, p0

    .line 821
    iget p0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    .line 822
    .line 823
    mul-float/2addr v3, p0

    .line 824
    float-to-int p0, v3

    .line 825
    iput p0, p2, Landroid/graphics/Point;->y:I

    .line 826
    .line 827
    return-object v2
.end method
