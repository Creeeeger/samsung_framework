.class public final Lcom/android/systemui/edgelighting/manager/PolicyJSONManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeJson(Landroid/content/Context;JILandroid/util/SparseArray;)V
    .locals 3

    .line 1
    const-string v0, "edge_lighting_policy.json"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    :try_start_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 13
    .line 14
    const-string v2, "UTF-8"

    .line 15
    .line 16
    invoke-direct {v0, p0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    .line 18
    .line 19
    :try_start_2
    new-instance v2, Landroid/util/JsonWriter;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 22
    .line 23
    .line 24
    :try_start_3
    const-string v1, " "

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/systemui/edgelighting/manager/PolicyJSONManager;->writePolicy(Landroid/util/JsonWriter;JILandroid/util/SparseArray;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    .line 31
    .line 32
    :try_start_4
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :goto_0
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_1
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :goto_1
    if-eqz p0, :cond_2

    .line 49
    .line 50
    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 51
    .line 52
    .line 53
    goto :goto_5

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    move-object v1, v2

    .line 56
    goto :goto_6

    .line 57
    :catch_2
    move-exception p1

    .line 58
    move-object v1, v2

    .line 59
    goto :goto_2

    .line 60
    :catch_3
    move-exception p1

    .line 61
    goto :goto_2

    .line 62
    :catchall_1
    move-exception p1

    .line 63
    move-object v0, v1

    .line 64
    goto :goto_6

    .line 65
    :catch_4
    move-exception p1

    .line 66
    move-object v0, v1

    .line 67
    goto :goto_2

    .line 68
    :catchall_2
    move-exception p1

    .line 69
    move-object p0, v1

    .line 70
    move-object v0, p0

    .line 71
    goto :goto_6

    .line 72
    :catch_5
    move-exception p1

    .line 73
    move-object p0, v1

    .line 74
    move-object v0, p0

    .line 75
    :goto_2
    :try_start_7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 76
    .line 77
    .line 78
    if-eqz v1, :cond_0

    .line 79
    .line 80
    :try_start_8
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :catch_6
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    :cond_0
    :goto_3
    if-eqz v0, :cond_1

    .line 89
    .line 90
    :try_start_9
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :catch_7
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    :cond_1
    :goto_4
    if-eqz p0, :cond_2

    .line 99
    .line 100
    :try_start_a
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :catch_8
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_5
    return-void

    .line 109
    :catchall_3
    move-exception p1

    .line 110
    :goto_6
    if-eqz v1, :cond_3

    .line 111
    .line 112
    :try_start_b
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 113
    .line 114
    .line 115
    goto :goto_7

    .line 116
    :catch_9
    move-exception p2

    .line 117
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    :cond_3
    :goto_7
    if-eqz v0, :cond_4

    .line 121
    .line 122
    :try_start_c
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 123
    .line 124
    .line 125
    goto :goto_8

    .line 126
    :catch_a
    move-exception p2

    .line 127
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    :cond_4
    :goto_8
    if-eqz p0, :cond_5

    .line 131
    .line 132
    :try_start_d
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 133
    .line 134
    .line 135
    goto :goto_9

    .line 136
    :catch_b
    move-exception p0

    .line 137
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 138
    .line 139
    .line 140
    :cond_5
    :goto_9
    throw p1
.end method

.method public static writePolicy(Landroid/util/JsonWriter;JILandroid/util/SparseArray;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "policy_version"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 12
    .line 13
    .line 14
    const-string/jumbo p1, "policy_type"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    int-to-long p2, p3

    .line 22
    invoke-virtual {p1, p2, p3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 23
    .line 24
    .line 25
    const-string p1, "edge_lighting_policy"

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/4 p2, 0x0

    .line 38
    :goto_0
    const-string p3, "color"

    .line 39
    .line 40
    const-string v0, "item"

    .line 41
    .line 42
    if-ge p2, p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/util/HashMap;

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    if-eq v1, v3, :cond_0

    .line 56
    .line 57
    const/4 v3, 0x2

    .line 58
    if-ne v1, v3, :cond_1

    .line 59
    .line 60
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Ljava/util/Map$Entry;

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    iget-object v4, v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 96
    .line 97
    .line 98
    const-string v3, "category"

    .line 99
    .line 100
    invoke-virtual {p0, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iget v4, v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    .line 105
    .line 106
    int-to-long v4, v4

    .line 107
    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 108
    .line 109
    .line 110
    const-string/jumbo v3, "range"

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iget v4, v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->range:I

    .line 118
    .line 119
    int-to-long v4, v4

    .line 120
    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 121
    .line 122
    .line 123
    const-string/jumbo v3, "versionCode"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    iget v4, v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->versionCode:I

    .line 131
    .line 132
    int-to-long v4, v4

    .line 133
    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iget v2, v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->color:I

    .line 141
    .line 142
    int-to-long v4, v2

    .line 143
    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 154
    .line 155
    .line 156
    const/16 p1, 0xa

    .line 157
    .line 158
    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Ljava/util/HashMap;

    .line 163
    .line 164
    if-nez p1, :cond_3

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_3
    const-string p2, "edge_lighting_priority"

    .line 168
    .line 169
    invoke-virtual {p0, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    if-eqz p2, :cond_4

    .line 188
    .line 189
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    check-cast p2, Ljava/util/Map$Entry;

    .line 194
    .line 195
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    check-cast p2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    iget-object v2, p2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 211
    .line 212
    .line 213
    const-string/jumbo v1, "priority"

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    iget v2, p2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->priority:I

    .line 221
    .line 222
    int-to-long v2, v2

    .line 223
    invoke-virtual {v1, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 224
    .line 225
    .line 226
    const-string v1, "default_on"

    .line 227
    .line 228
    invoke-virtual {p0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    iget-boolean v2, p2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->defaultOn:Z

    .line 233
    .line 234
    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, p3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    iget p2, p2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->color:I

    .line 242
    .line 243
    int-to-long v2, p2

    .line 244
    invoke-virtual {v1, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 248
    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 252
    .line 253
    .line 254
    :goto_3
    const/16 p1, 0xb

    .line 255
    .line 256
    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    check-cast p1, Ljava/util/HashMap;

    .line 261
    .line 262
    if-nez p1, :cond_5

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_5
    const-string p2, "edge_lighting_whitelist"

    .line 266
    .line 267
    invoke-virtual {p0, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    if-eqz p2, :cond_6

    .line 286
    .line 287
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    check-cast p2, Ljava/util/Map$Entry;

    .line 292
    .line 293
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    check-cast p2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 298
    .line 299
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 303
    .line 304
    .line 305
    move-result-object p3

    .line 306
    iget-object p2, p2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {p3, p2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 309
    .line 310
    .line 311
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 312
    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 316
    .line 317
    .line 318
    :goto_5
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 319
    .line 320
    .line 321
    return-void
.end method
