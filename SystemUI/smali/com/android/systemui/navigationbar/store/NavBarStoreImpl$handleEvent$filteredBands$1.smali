.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

.field public final synthetic $module:Ljava/lang/Object;

.field public final synthetic $targetDisplayId:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$1;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$1;->$module:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$1;->$event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$1;->$targetDisplayId:Lkotlin/jvm/internal/Ref$IntRef;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 10

    .line 1
    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$1;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$1;->$module:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$1;->$event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$1;->$targetDisplayId:Lkotlin/jvm/internal/Ref$IntRef;

    .line 10
    .line 11
    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v3, p1, Lcom/android/systemui/navigationbar/bandaid/Band;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/bandaid/BandAid;->getEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v3, v4

    .line 31
    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v3, :cond_11

    .line 40
    .line 41
    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/bandaid/Band;->runeDependency:Z

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto/16 :goto_8

    .line 46
    .line 47
    :cond_1
    iget-object v3, p1, Lcom/android/systemui/navigationbar/bandaid/Band;->sPluginTag:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const/4 v7, 0x1

    .line 54
    if-lez v6, :cond_2

    .line 55
    .line 56
    move v6, v7

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v6, v5

    .line 59
    :goto_1
    if-eqz v6, :cond_3

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0, v3, v5}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    goto/16 :goto_8

    .line 74
    .line 75
    :cond_3
    const/4 v3, -0x1

    .line 76
    iget v6, p1, Lcom/android/systemui/navigationbar/bandaid/Band;->targetDisplayId:I

    .line 77
    .line 78
    if-eq v6, v3, :cond_4

    .line 79
    .line 80
    if-eq v6, p0, :cond_4

    .line 81
    .line 82
    goto/16 :goto_8

    .line 83
    .line 84
    :cond_4
    iget-object v3, p1, Lcom/android/systemui/navigationbar/bandaid/Band;->targetEvents:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_6

    .line 95
    .line 96
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    move-object v8, v6

    .line 101
    check-cast v8, Ljava/lang/reflect/Type;

    .line 102
    .line 103
    invoke-interface {v8}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-virtual {v9}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_5

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_6
    move-object v6, v4

    .line 123
    :goto_2
    check-cast v6, Ljava/lang/reflect/Type;

    .line 124
    .line 125
    if-nez v6, :cond_7

    .line 126
    .line 127
    goto/16 :goto_8

    .line 128
    .line 129
    :cond_7
    iget-object v2, p1, Lcom/android/systemui/navigationbar/bandaid/Band;->targetModules:Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_b

    .line 140
    .line 141
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    move-object v6, v3

    .line 146
    check-cast v6, Ljava/lang/reflect/Type;

    .line 147
    .line 148
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    const-class v9, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;

    .line 153
    .line 154
    invoke-virtual {v9}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    invoke-static {v8, v9, v5}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    if-nez v8, :cond_a

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    invoke-virtual {v8}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-interface {v6}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    if-nez v8, :cond_a

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    invoke-virtual {v8}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    if-eqz v8, :cond_9

    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    invoke-virtual {v8}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    invoke-virtual {v8}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    invoke-interface {v6}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    if-eqz v6, :cond_9

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_9
    move v6, v5

    .line 216
    goto :goto_4

    .line 217
    :cond_a
    :goto_3
    move v6, v7

    .line 218
    :goto_4
    if-eqz v6, :cond_8

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_b
    move-object v3, v4

    .line 222
    :goto_5
    check-cast v3, Ljava/lang/reflect/Type;

    .line 223
    .line 224
    if-nez v3, :cond_c

    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_c
    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band;->moduleDependencies:Ljava/util/List;

    .line 228
    .line 229
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_10

    .line 238
    .line 239
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    move-object v2, v1

    .line 244
    check-cast v2, Ljava/lang/reflect/Type;

    .line 245
    .line 246
    iget-object v3, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    .line 247
    .line 248
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;

    .line 257
    .line 258
    if-eqz v3, :cond_e

    .line 259
    .line 260
    iget-object v3, v3, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;->modules:Ljava/util/HashMap;

    .line 261
    .line 262
    invoke-interface {v2}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    goto :goto_6

    .line 271
    :cond_e
    move-object v2, v4

    .line 272
    :goto_6
    if-nez v2, :cond_f

    .line 273
    .line 274
    move v2, v7

    .line 275
    goto :goto_7

    .line 276
    :cond_f
    move v2, v5

    .line 277
    :goto_7
    if-eqz v2, :cond_d

    .line 278
    .line 279
    move-object v4, v1

    .line 280
    :cond_10
    check-cast v4, Ljava/lang/reflect/Type;

    .line 281
    .line 282
    if-nez v4, :cond_11

    .line 283
    .line 284
    move v5, v7

    .line 285
    :cond_11
    :goto_8
    return v5
.end method
