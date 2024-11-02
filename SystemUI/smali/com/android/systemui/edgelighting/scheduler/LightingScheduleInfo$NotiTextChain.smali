.class public abstract Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mIsTextDirty:Z

.field public mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

.field public final mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

.field public mWith:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 5
    .line 6
    return-void
.end method

.method public static getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "\\s"

    .line 20
    .line 21
    const-string v0, " "

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final appendThisChainItemText(Ljava/lang/StringBuffer;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    const-string v1, " ["

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    const-string v0, "] "

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    iget-object p2, p2, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x0

    .line 40
    :goto_0
    if-ge v1, v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    const-string/jumbo v3, "with:"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->appendThisChainItemText(Ljava/lang/StringBuffer;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method public final getChainText()[Ljava/lang/String;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, " "

    .line 12
    .line 13
    const-string v3, "getChainText: invalid info at "

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const-string v5, "LightingScheduleInfo"

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    new-array v4, v4, [Ljava/lang/String;

    .line 30
    .line 31
    aput-object v0, v4, v6

    .line 32
    .line 33
    new-instance v7, Ljava/lang/StringBuffer;

    .line 34
    .line 35
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v8, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    .line 39
    .line 40
    if-eqz v8, :cond_5

    .line 41
    .line 42
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    :goto_0
    if-ge v6, v8, :cond_4

    .line 47
    .line 48
    iget-object v9, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    check-cast v9, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    .line 55
    .line 56
    if-nez v9, :cond_1

    .line 57
    .line 58
    sget-boolean v9, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    .line 59
    .line 60
    new-instance v9, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-static {v5, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v9}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-static {v1, v9}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    if-eqz v9, :cond_3

    .line 85
    .line 86
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-nez v10, :cond_3

    .line 91
    .line 92
    if-lez v6, :cond_2

    .line 93
    .line 94
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const/4 v2, 0x1

    .line 108
    aput-object v1, v4, v2

    .line 109
    .line 110
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    .line 111
    .line 112
    const-string v2, "getChainText: from "

    .line 113
    .line 114
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    .line 123
    .line 124
    sget-boolean p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    .line 125
    .line 126
    if-eqz p0, :cond_6

    .line 127
    .line 128
    const-string p0, " ["

    .line 129
    .line 130
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    .line 135
    .line 136
    const-string p0, " | "

    .line 137
    .line 138
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 142
    .line 143
    .line 144
    const-string p0, "]"

    .line 145
    .line 146
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    .line 148
    .line 149
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    return-object v4

    .line 157
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    .line 158
    .line 159
    if-eqz v0, :cond_c

    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuffer;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .line 165
    .line 166
    iget-object v7, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    move v8, v6

    .line 173
    :goto_3
    if-ge v8, v7, :cond_b

    .line 174
    .line 175
    iget-object v9, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    check-cast v9, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    .line 182
    .line 183
    if-nez v9, :cond_8

    .line 184
    .line 185
    sget-boolean v9, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    .line 186
    .line 187
    new-instance v9, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    invoke-static {v5, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_8
    invoke-virtual {v9}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    invoke-static {v1, v9}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    if-eqz v9, :cond_a

    .line 212
    .line 213
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    if-nez v10, :cond_a

    .line 218
    .line 219
    if-lez v8, :cond_9

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    .line 223
    .line 224
    :cond_9
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    .line 226
    .line 227
    :cond_a
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_b
    new-array p0, v4, [Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    aput-object v0, p0, v6

    .line 237
    .line 238
    return-object p0

    .line 239
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    .line 240
    .line 241
    if-eqz p0, :cond_d

    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getChainText()[Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    return-object p0

    .line 248
    :cond_d
    const/4 p0, 0x0

    .line 249
    return-object p0
.end method

.method public abstract getExtraKey()Ljava/lang/String;
.end method

.method public final isTextDirty()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    move v2, v1

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    .line 21
    .line 22
    iget-boolean v4, v4, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    .line 23
    .line 24
    or-int/2addr v3, v4

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v3, v1

    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    .line 30
    .line 31
    if-nez v0, :cond_4

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    .line 37
    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->isTextDirty()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_3
    return v1

    .line 46
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 47
    return p0
.end method

.method public final mergeText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p0, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mergeTextChainItem(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    .line 22
    .line 23
    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mergeTextChainItem(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mergeText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final mergeTextChainItem(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2, v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v3, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    move v3, v1

    .line 33
    :goto_1
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move v1, v2

    .line 43
    :cond_3
    :goto_2
    xor-int/lit8 v4, v1, 0x1

    .line 44
    .line 45
    iput-boolean v4, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    .line 46
    .line 47
    sget-boolean v4, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    .line 48
    .line 49
    const-string v5, "LightingScheduleInfo"

    .line 50
    .line 51
    if-eqz v4, :cond_4

    .line 52
    .line 53
    new-instance v4, Ljava/lang/StringBuffer;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v6, "_mergeText: ["

    .line 63
    .line 64
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    const-string v6, "] --> ["

    .line 71
    .line 72
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    .line 77
    .line 78
    const-string v6, "]"

    .line 79
    .line 80
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    const-string v4, " = isDirty : "

    .line 92
    .line 93
    const-string v6, " mergeTextChainItem :"

    .line 94
    .line 95
    if-nez v3, :cond_5

    .line 96
    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v8, ": prev : "

    .line 110
    .line 111
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-boolean v8, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    .line 125
    .line 126
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :cond_5
    if-nez v1, :cond_6

    .line 137
    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v6, " this : "

    .line 151
    .line 152
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-boolean v4, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    .line 166
    .line 167
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    .line 178
    .line 179
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    goto :goto_4

    .line 184
    :cond_7
    move v0, v2

    .line 185
    :goto_4
    if-nez v3, :cond_8

    .line 186
    .line 187
    if-nez v1, :cond_9

    .line 188
    .line 189
    :cond_8
    if-eqz v0, :cond_c

    .line 190
    .line 191
    :cond_9
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-eqz p2, :cond_b

    .line 196
    .line 197
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    if-nez v1, :cond_a

    .line 204
    .line 205
    new-instance v1, Landroid/os/Bundle;

    .line 206
    .line 207
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 208
    .line 209
    .line 210
    :cond_a
    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    .line 214
    .line 215
    .line 216
    :cond_b
    iput-boolean v2, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    .line 217
    .line 218
    :cond_c
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuffer;

    .line 6
    .line 7
    const-string v1, "NotiTextChain: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    move-object v1, p0

    .line 13
    :goto_0
    iget-object v2, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->appendThisChainItemText(Ljava/lang/StringBuffer;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->appendThisChainItemText(Ljava/lang/StringBuffer;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
