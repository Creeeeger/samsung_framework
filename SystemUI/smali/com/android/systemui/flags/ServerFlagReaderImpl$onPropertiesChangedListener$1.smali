.class public final Lcom/android/systemui/flags/ServerFlagReaderImpl$onPropertiesChangedListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/flags/ServerFlagReaderImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/ServerFlagReaderImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl$onPropertiesChangedListener$1;->this$0:Lcom/android/systemui/flags/ServerFlagReaderImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl$onPropertiesChangedListener$1;->this$0:Lcom/android/systemui/flags/ServerFlagReaderImpl;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->isTestHarness:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object p0, v0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string p1, "Ignore server flag changes in Test Harness mode."

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl$onPropertiesChangedListener$1;->this$0:Lcom/android/systemui/flags/ServerFlagReaderImpl;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/systemui/flags/ServerFlagReaderImpl;->namespace:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl$onPropertiesChangedListener$1;->this$0:Lcom/android/systemui/flags/ServerFlagReaderImpl;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->listeners:Ljava/util/List;

    .line 33
    .line 34
    check-cast p0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_b

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lkotlin/Pair;

    .line 51
    .line 52
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease$1;

    .line 57
    .line 58
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/util/Collection;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_3

    .line 93
    .line 94
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Lcom/android/systemui/flags/Flag;

    .line 99
    .line 100
    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_4

    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, v3, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v1, v1, Lcom/android/systemui/flags/FeatureFlagsRelease$1;->this$0:Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 116
    .line 117
    iget-object v2, v1, Lcom/android/systemui/flags/FeatureFlagsRelease;->mBooleanCache:Ljava/util/Map;

    .line 118
    .line 119
    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v2, Ljava/util/HashMap;

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    const/4 v3, 0x0

    .line 130
    if-eqz v2, :cond_6

    .line 131
    .line 132
    if-nez v0, :cond_5

    .line 133
    .line 134
    move v0, v3

    .line 135
    goto :goto_1

    .line 136
    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    :goto_1
    iget-object v2, v1, Lcom/android/systemui/flags/FeatureFlagsRelease;->mBooleanCache:Ljava/util/Map;

    .line 141
    .line 142
    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v2, Ljava/util/HashMap;

    .line 147
    .line 148
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Ljava/lang/Boolean;

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eq v2, v0, :cond_a

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_6
    iget-object v2, v1, Lcom/android/systemui/flags/FeatureFlagsRelease;->mStringCache:Ljava/util/Map;

    .line 162
    .line 163
    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    check-cast v2, Ljava/util/HashMap;

    .line 168
    .line 169
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_8

    .line 174
    .line 175
    if-nez v0, :cond_7

    .line 176
    .line 177
    const-string v0, ""

    .line 178
    .line 179
    :cond_7
    iget-object v2, v1, Lcom/android/systemui/flags/FeatureFlagsRelease;->mStringCache:Ljava/util/Map;

    .line 180
    .line 181
    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    check-cast v2, Ljava/util/HashMap;

    .line 186
    .line 187
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    if-eq v2, v0, :cond_a

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_8
    iget-object v2, v1, Lcom/android/systemui/flags/FeatureFlagsRelease;->mIntCache:Ljava/util/Map;

    .line 195
    .line 196
    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    check-cast v2, Ljava/util/HashMap;

    .line 201
    .line 202
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_a

    .line 207
    .line 208
    if-nez v0, :cond_9

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_9
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_3

    .line 216
    :catch_0
    :goto_2
    move v0, v3

    .line 217
    :goto_3
    iget-object v2, v1, Lcom/android/systemui/flags/FeatureFlagsRelease;->mIntCache:Ljava/util/Map;

    .line 218
    .line 219
    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    check-cast v2, Ljava/util/HashMap;

    .line 224
    .line 225
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    check-cast v2, Ljava/lang/Integer;

    .line 230
    .line 231
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eq v2, v0, :cond_a

    .line 236
    .line 237
    :goto_4
    const/4 v3, 0x1

    .line 238
    :cond_a
    if-eqz v3, :cond_2

    .line 239
    .line 240
    iget-object v0, v1, Lcom/android/systemui/flags/FeatureFlagsRelease;->mRestarter:Lcom/android/systemui/flags/Restarter;

    .line 241
    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    const-string v2, "Server flag change: "

    .line 245
    .line 246
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getNamespace()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v2, "."

    .line 257
    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-interface {v0, v1}, Lcom/android/systemui/flags/Restarter;->restartSystemUI(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_b
    return-void
.end method
