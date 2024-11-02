.class public final Lcom/google/dexmaker/dx/rop/type/Prototype;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final internTable:Ljava/util/HashMap;


# instance fields
.field public final descriptor:Ljava/lang/String;

.field public final parameterTypes:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

.field public final returnType:Lcom/google/dexmaker/dx/rop/type/Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/16 v1, 0x1f4

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Prototype;->internTable:Ljava/util/HashMap;

    .line 9
    .line 10
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/StdTypeList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->returnType:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->parameterTypes:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 18
    .line 19
    const-string/jumbo p1, "parameterTypes == null"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 27
    .line 28
    const-string/jumbo p1, "returnType == null"

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 36
    .line 37
    const-string p1, "descriptor == null"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public static intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Prototype;
    .locals 10

    .line 1
    if-eqz p0, :cond_e

    .line 2
    .line 3
    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Prototype;->internTable:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/google/dexmaker/dx/rop/type/Prototype;

    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const-string v3, "bad descriptor"

    .line 26
    .line 27
    const/16 v4, 0x28

    .line 28
    .line 29
    if-ne v2, v4, :cond_d

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    move v5, v1

    .line 33
    move v4, v2

    .line 34
    :goto_0
    const/16 v6, 0x29

    .line 35
    .line 36
    if-ge v4, v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-ne v7, v6, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v6, 0x41

    .line 46
    .line 47
    if-lt v7, v6, :cond_2

    .line 48
    .line 49
    const/16 v6, 0x5a

    .line 50
    .line 51
    if-gt v7, v6, :cond_2

    .line 52
    .line 53
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move v4, v1

    .line 59
    :goto_1
    if-eqz v4, :cond_c

    .line 60
    .line 61
    sub-int/2addr v0, v2

    .line 62
    if-eq v4, v0, :cond_c

    .line 63
    .line 64
    add-int/2addr v4, v2

    .line 65
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/4 v4, -0x1

    .line 70
    if-ne v0, v4, :cond_b

    .line 71
    .line 72
    new-array v0, v5, [Lcom/google/dexmaker/dx/rop/type/Type;

    .line 73
    .line 74
    move v5, v1

    .line 75
    move v3, v2

    .line 76
    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-ne v7, v6, :cond_7

    .line 81
    .line 82
    add-int/2addr v3, v2

    .line 83
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    sget-object v3, Lcom/google/dexmaker/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    .line 88
    .line 89
    :try_start_1
    const-string v3, "V"

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_4

    .line 96
    .line 97
    sget-object v2, Lcom/google/dexmaker/dx/rop/type/Type;->VOID:Lcom/google/dexmaker/dx/rop/type/Type;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    invoke-static {v2}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    :goto_3
    new-instance v3, Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    .line 105
    .line 106
    invoke-direct {v3, v5}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;-><init>(I)V

    .line 107
    .line 108
    .line 109
    :goto_4
    if-ge v1, v5, :cond_5

    .line 110
    .line 111
    aget-object v4, v0, v1

    .line 112
    .line 113
    invoke-virtual {v3, v1, v4}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->set(ILcom/google/dexmaker/dx/rop/type/Type;)V

    .line 114
    .line 115
    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_5
    new-instance v0, Lcom/google/dexmaker/dx/rop/type/Prototype;

    .line 120
    .line 121
    invoke-direct {v0, p0, v2, v3}, Lcom/google/dexmaker/dx/rop/type/Prototype;-><init>(Ljava/lang/String;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/StdTypeList;)V

    .line 122
    .line 123
    .line 124
    sget-object p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->internTable:Ljava/util/HashMap;

    .line 125
    .line 126
    monitor-enter p0

    .line 127
    :try_start_2
    iget-object v1, v0, Lcom/google/dexmaker/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Lcom/google/dexmaker/dx/rop/type/Prototype;

    .line 134
    .line 135
    if-eqz v2, :cond_6

    .line 136
    .line 137
    monitor-exit p0

    .line 138
    move-object v0, v2

    .line 139
    goto :goto_5

    .line 140
    :cond_6
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    monitor-exit p0

    .line 144
    :goto_5
    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    throw v0

    .line 148
    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 149
    .line 150
    const-string v0, "descriptor == null"

    .line 151
    .line 152
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p0

    .line 156
    :cond_7
    move v8, v3

    .line 157
    :goto_6
    const/16 v9, 0x5b

    .line 158
    .line 159
    if-ne v7, v9, :cond_8

    .line 160
    .line 161
    add-int/lit8 v8, v8, 0x1

    .line 162
    .line 163
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    goto :goto_6

    .line 168
    :cond_8
    const/16 v9, 0x4c

    .line 169
    .line 170
    if-ne v7, v9, :cond_a

    .line 171
    .line 172
    const/16 v7, 0x3b

    .line 173
    .line 174
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-eq v7, v4, :cond_9

    .line 179
    .line 180
    add-int/lit8 v7, v7, 0x1

    .line 181
    .line 182
    goto :goto_7

    .line 183
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 184
    .line 185
    const-string v0, "bad descriptor"

    .line 186
    .line 187
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p0

    .line 191
    :cond_a
    add-int/lit8 v7, v8, 0x1

    .line 192
    .line 193
    :goto_7
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-static {v3}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    aput-object v3, v0, v5

    .line 202
    .line 203
    add-int/lit8 v5, v5, 0x1

    .line 204
    .line 205
    move v3, v7

    .line 206
    goto/16 :goto_2

    .line 207
    .line 208
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 209
    .line 210
    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p0

    .line 214
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 215
    .line 216
    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p0

    .line 220
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 221
    .line 222
    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p0

    .line 226
    :catchall_1
    move-exception p0

    .line 227
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 228
    throw p0

    .line 229
    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    .line 230
    .line 231
    const-string v0, "descriptor == null"

    .line 232
    .line 233
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw p0
.end method


# virtual methods
.method public final compareTo(Lcom/google/dexmaker/dx/rop/type/Prototype;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->returnType:Lcom/google/dexmaker/dx/rop/type/Type;

    iget-object v2, p1, Lcom/google/dexmaker/dx/rop/type/Prototype;->returnType:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 3
    iget-object v1, v1, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 4
    iget-object v2, v2, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->parameterTypes:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    .line 6
    iget-object v1, v1, Lcom/google/dexmaker/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    .line 7
    array-length v1, v1

    .line 8
    iget-object v2, p1, Lcom/google/dexmaker/dx/rop/type/Prototype;->parameterTypes:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    .line 9
    iget-object v2, v2, Lcom/google/dexmaker/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    .line 10
    array-length v2, v2

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 12
    iget-object v5, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->parameterTypes:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    invoke-virtual {v5, v4}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->get(I)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v5

    .line 13
    iget-object v6, p1, Lcom/google/dexmaker/dx/rop/type/Prototype;->parameterTypes:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    invoke-virtual {v6, v4}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->get(I)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v6

    .line 14
    iget-object v5, v5, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    return v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ge v1, v2, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    if-le v1, v2, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/dexmaker/dx/rop/type/Prototype;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/type/Prototype;->compareTo(Lcom/google/dexmaker/dx/rop/type/Prototype;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/type/Prototype;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    .line 12
    .line 13
    check-cast p1, Lcom/google/dexmaker/dx/rop/type/Prototype;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
