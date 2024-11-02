.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$9$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$9$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$9$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    .line 6
    .line 7
    check-cast v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;

    .line 8
    .line 9
    const-string v1, ")"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    iget v4, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 16
    .line 17
    if-ne v4, v3, :cond_0

    .line 18
    .line 19
    iget-object v5, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;->buttonSpec:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object v6, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-object v6, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->buttonSpace:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    iget-object p0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 40
    .line 41
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 45
    .line 46
    iget-object v3, v3, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 47
    .line 48
    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;->landscape:Z

    .line 49
    .line 50
    invoke-interface {p0, v3, v0, v2}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getSpaceWidth(Landroid/graphics/Point;ZZ)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    iget-object v2, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 55
    .line 56
    iget-object v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 57
    .line 58
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 62
    .line 63
    iget-object v3, v3, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 64
    .line 65
    invoke-interface {v2, v3, v0}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonWidth(Landroid/graphics/Point;Z)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 70
    .line 71
    iget-object v3, v3, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 72
    .line 73
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v4, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 77
    .line 78
    iget-object v4, v4, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 79
    .line 80
    invoke-interface {v3, v4, v0}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonDistanceSize(Landroid/graphics/Point;Z)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    add-int/2addr p0, v2

    .line 85
    add-int/2addr p0, v3

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v3, "getButtonSpaceSize(land: "

    .line 89
    .line 90
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :cond_0
    if-ne v4, v3, :cond_3

    .line 124
    .line 125
    iget-object v4, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;->buttonSpec:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    sget-object v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    sget-object v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftRemoteView:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-nez v5, :cond_2

    .line 142
    .line 143
    sget-object v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightRemoteView:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_1
    move v4, v2

    .line 153
    goto :goto_1

    .line 154
    :cond_2
    :goto_0
    move v4, v3

    .line 155
    :goto_1
    if-eqz v4, :cond_3

    .line 156
    .line 157
    iget-boolean p0, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;->landscape:Z

    .line 158
    .line 159
    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->getButtonWidth(Z)I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    goto/16 :goto_4

    .line 168
    .line 169
    :cond_3
    iget-object v4, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;->buttonSpec:Ljava/lang/String;

    .line 170
    .line 171
    iget-object v5, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->mMainKeyList:Ljava/util/List;

    .line 172
    .line 173
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-nez v5, :cond_5

    .line 178
    .line 179
    sget-object v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

    .line 180
    .line 181
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    sget-object v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navkey:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_4

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_4
    move v4, v2

    .line 194
    goto :goto_3

    .line 195
    :cond_5
    :goto_2
    move v4, v3

    .line 196
    :goto_3
    iget-boolean v5, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;->landscape:Z

    .line 197
    .line 198
    if-eqz v4, :cond_6

    .line 199
    .line 200
    invoke-virtual {p1, v5}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->getButtonWidth(Z)I

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    goto/16 :goto_4

    .line 209
    .line 210
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->mExtraKeyList:Ljava/util/List;

    .line 211
    .line 212
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;->buttonSpec:Ljava/lang/String;

    .line 213
    .line 214
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    if-nez p0, :cond_7

    .line 219
    .line 220
    const-string p0, "key"

    .line 221
    .line 222
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    if-eqz p0, :cond_8

    .line 227
    .line 228
    :cond_7
    move v2, v3

    .line 229
    :cond_8
    if-eqz v2, :cond_9

    .line 230
    .line 231
    invoke-virtual {p1, v5}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->getSpaceWidth(Z)I

    .line 232
    .line 233
    .line 234
    move-result p0

    .line 235
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    goto :goto_4

    .line 240
    :cond_9
    const-string p0, "home_handle"

    .line 241
    .line 242
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    if-eqz p0, :cond_a

    .line 247
    .line 248
    invoke-virtual {p1, v5}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->getGestureWidth(Z)I

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    goto :goto_4

    .line 257
    :cond_a
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

    .line 258
    .line 259
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->keymargin:Ljava/lang/String;

    .line 263
    .line 264
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result p0

    .line 268
    if-eqz p0, :cond_b

    .line 269
    .line 270
    iget-object p0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 271
    .line 272
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 273
    .line 274
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    iget-object v0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 278
    .line 279
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 280
    .line 281
    invoke-interface {p0, v0, v5}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonDistanceSize(Landroid/graphics/Point;Z)I

    .line 282
    .line 283
    .line 284
    move-result p0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v2, "getButtonDistanceSize(land: "

    .line 288
    .line 289
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 313
    .line 314
    .line 315
    move-result p0

    .line 316
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    goto :goto_4

    .line 321
    :cond_b
    const/4 p0, 0x0

    .line 322
    :goto_4
    return-object p0
.end method
