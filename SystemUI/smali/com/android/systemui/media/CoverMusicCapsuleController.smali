.class public final Lcom/android/systemui/media/CoverMusicCapsuleController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final bundle:Landroid/os/Bundle;

.field public final capsule:Landroid/widget/RemoteViews;

.field public isLiveStreaming:Z

.field public final isPlayerCoverPlayedSupplier:Ljava/util/function/BooleanSupplier;

.field public final subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/media/CoverMusicCapsuleController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/media/CoverMusicCapsuleController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/subscreen/SubScreenManager;Ljava/util/function/BooleanSupplier;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->isPlayerCoverPlayedSupplier:Ljava/util/function/BooleanSupplier;

    .line 7
    .line 8
    new-instance p2, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string p3, "com.samsung.android.widgetComponentName"

    .line 14
    .line 15
    const-string v0, "com.samsung.android.app.aodservice/MusicTile"

    .line 16
    .line 17
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->bundle:Landroid/os/Bundle;

    .line 21
    .line 22
    new-instance p3, Landroid/widget/RemoteViews;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const v0, 0x7f0d035a

    .line 29
    .line 30
    .line 31
    invoke-direct {p3, p1, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    iput-object p3, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->capsule:Landroid/widget/RemoteViews;

    .line 35
    .line 36
    const-string p1, "CoverMusicCapsuleController"

    .line 37
    .line 38
    const-string v0, "capsule created"

    .line 39
    .line 40
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    const-string/jumbo p1, "visible"

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    const-string p1, "capsule_layout"

    .line 51
    .line 52
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 53
    .line 54
    .line 55
    const-string p1, "capsule_priority"

    .line 56
    .line 57
    const-string p3, "low"

    .line 58
    .line 59
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/media/CoverMusicCapsuleController;->updateCapsule()V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final updateCapsule()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->isPlayerCoverPlayedSupplier:Ljava/util/function/BooleanSupplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "updateCapsule Called, isPlayerCoverPlayed : "

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "CoverMusicCapsuleController"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    const-string p0, "SubScreenManager"

    .line 41
    .line 42
    const-string/jumbo v0, "updateCapsule() no plugin"

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->bundle:Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->updateCapsule(Landroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public final updateEqualizerState(Landroid/media/session/PlaybackState;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string/jumbo v1, "state is null"

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object/from16 v1, p1

    .line 10
    .line 11
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v3, "updateEqualizerState: "

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "CoverMusicCapsuleController"

    .line 27
    .line 28
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/media/CoverMusicCapsuleController;->capsule:Landroid/widget/RemoteViews;

    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getState()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v9, 0x3

    .line 41
    const/4 v10, 0x1

    .line 42
    const/4 v11, 0x0

    .line 43
    if-ne v2, v9, :cond_2

    .line 44
    .line 45
    move v2, v10

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v2, v11

    .line 48
    :goto_1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/16 v4, 0x8

    .line 53
    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    new-instance v2, Lkotlin/Triple;

    .line 61
    .line 62
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-direct {v2, v3, v4, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    new-instance v2, Lkotlin/Triple;

    .line 69
    .line 70
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-direct {v2, v4, v3, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :goto_2
    invoke-virtual {v2}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Ljava/lang/Number;

    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    invoke-virtual {v2}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Ljava/lang/Number;

    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-virtual {v2}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Ljava/lang/Boolean;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    iget-boolean v2, v0, Lcom/android/systemui/media/CoverMusicCapsuleController;->isLiveStreaming:Z

    .line 106
    .line 107
    if-eqz v2, :cond_4

    .line 108
    .line 109
    new-instance v2, Lkotlin/Triple;

    .line 110
    .line 111
    invoke-direct {v2, v4, v4, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    const/high16 v7, 0x3f800000    # 1.0f

    .line 120
    .line 121
    cmpg-float v2, v2, v7

    .line 122
    .line 123
    if-nez v2, :cond_5

    .line 124
    .line 125
    move v2, v10

    .line 126
    goto :goto_3

    .line 127
    :cond_5
    move v2, v11

    .line 128
    :goto_3
    if-nez v2, :cond_8

    .line 129
    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    const/4 v7, 0x0

    .line 135
    cmpg-float v2, v2, v7

    .line 136
    .line 137
    if-nez v2, :cond_6

    .line 138
    .line 139
    move v2, v10

    .line 140
    goto :goto_4

    .line 141
    :cond_6
    move v2, v11

    .line 142
    :goto_4
    if-eqz v2, :cond_7

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_7
    new-instance v2, Lkotlin/Triple;

    .line 146
    .line 147
    invoke-direct {v2, v4, v3, v4}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_8
    :goto_5
    new-instance v2, Lkotlin/Triple;

    .line 152
    .line 153
    invoke-direct {v2, v3, v4, v4}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :goto_6
    invoke-virtual {v2}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Ljava/lang/Number;

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-virtual {v2}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    check-cast v4, Ljava/lang/Number;

    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    invoke-virtual {v2}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Ljava/lang/Number;

    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 187
    .line 188
    .line 189
    move-result-wide v12

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 191
    .line 192
    .line 193
    move-result-wide v14

    .line 194
    sub-long/2addr v12, v14

    .line 195
    const v7, 0x7f0a0998

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 199
    .line 200
    .line 201
    const v5, 0x7f0a0999

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 205
    .line 206
    .line 207
    const v5, 0x7f0a0997

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 211
    .line 212
    .line 213
    const v3, 0x7f0a099b

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 217
    .line 218
    .line 219
    const v4, 0x7f0a099a

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 223
    .line 224
    .line 225
    sget v2, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    .line 226
    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    const-string/jumbo v4, "x%.2f"

    .line 244
    .line 245
    .line 246
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    const v4, 0x7f0a0997

    .line 254
    .line 255
    .line 256
    const/4 v7, 0x0

    .line 257
    move-object v3, v1

    .line 258
    move-wide v5, v12

    .line 259
    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getState()I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-ne v2, v9, :cond_9

    .line 267
    .line 268
    goto :goto_7

    .line 269
    :cond_9
    move v10, v11

    .line 270
    :goto_7
    if-eqz v10, :cond_a

    .line 271
    .line 272
    const-string/jumbo v2, "normal"

    .line 273
    .line 274
    .line 275
    goto :goto_8

    .line 276
    :cond_a
    const-string v2, "low"

    .line 277
    .line 278
    :goto_8
    iget-object v3, v0, Lcom/android/systemui/media/CoverMusicCapsuleController;->bundle:Landroid/os/Bundle;

    .line 279
    .line 280
    const-string v4, "capsule_layout"

    .line 281
    .line 282
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 283
    .line 284
    .line 285
    const-string v1, "capsule_priority"

    .line 286
    .line 287
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/CoverMusicCapsuleController;->updateCapsule()V

    .line 291
    .line 292
    .line 293
    return-void
.end method
