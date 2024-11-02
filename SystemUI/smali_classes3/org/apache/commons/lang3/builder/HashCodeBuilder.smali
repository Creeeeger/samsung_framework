.class public final Lorg/apache/commons/lang3/builder/HashCodeBuilder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final REGISTRY:Ljava/lang/ThreadLocal;


# instance fields
.field public final iConstant:I

.field public iTotal:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x25

    .line 2
    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    const/16 v0, 0x11

    .line 3
    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 6
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v3, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 7
    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 8
    iput p2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    .line 9
    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-void

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HashCodeBuilder requires an odd multiplier"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HashCodeBuilder requires an odd initial value"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/HashCodeBuilder;[Ljava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/Set;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v4, Lorg/apache/commons/lang3/builder/IDKey;

    .line 14
    .line 15
    invoke-direct {v4, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    move v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v3

    .line 27
    :goto_0
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/Set;

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    new-instance v1, Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    new-instance v4, Lorg/apache/commons/lang3/builder/IDKey;

    .line 47
    .line 48
    invoke-direct {v4, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v1, Lorg/apache/commons/lang3/builder/HashCodeBuilder$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    invoke-direct {v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder$$ExternalSyntheticLambda0;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 71
    .line 72
    .line 73
    array-length v1, p1

    .line 74
    move v4, v3

    .line 75
    :goto_1
    if-ge v4, v1, :cond_9

    .line 76
    .line 77
    aget-object v5, p1, v4

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const/4 v7, -0x1

    .line 84
    if-nez v6, :cond_4

    .line 85
    .line 86
    move v6, v3

    .line 87
    :goto_2
    array-length v8, p3

    .line 88
    if-ge v6, v8, :cond_6

    .line 89
    .line 90
    aget-object v8, p3, v6

    .line 91
    .line 92
    if-nez v8, :cond_3

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move v8, v3

    .line 99
    :goto_3
    array-length v9, p3

    .line 100
    if-ge v8, v9, :cond_6

    .line 101
    .line 102
    aget-object v9, p3, v8

    .line 103
    .line 104
    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-eqz v9, :cond_5

    .line 109
    .line 110
    move v6, v8

    .line 111
    goto :goto_4

    .line 112
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_6
    move v6, v7

    .line 116
    :goto_4
    if-eq v6, v7, :cond_7

    .line 117
    .line 118
    move v6, v2

    .line 119
    goto :goto_5

    .line 120
    :cond_7
    move v6, v3

    .line 121
    :goto_5
    if-nez v6, :cond_8

    .line 122
    .line 123
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    const-string v7, "$"

    .line 128
    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-nez v6, :cond_8

    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-nez v6, :cond_8

    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-nez v6, :cond_8

    .line 154
    .line 155
    const-class v6, Lorg/apache/commons/lang3/builder/HashCodeExclude;

    .line 156
    .line 157
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 158
    .line 159
    .line 160
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    if-nez v6, :cond_8

    .line 162
    .line 163
    :try_start_1
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {p2, v5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .line 169
    .line 170
    goto :goto_6

    .line 171
    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/InternalError;

    .line 172
    .line 173
    const-string p2, "Unexpected IllegalAccessException"

    .line 174
    .line 175
    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_9
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Ljava/util/Set;

    .line 187
    .line 188
    if-eqz p1, :cond_a

    .line 189
    .line 190
    new-instance p2, Lorg/apache/commons/lang3/builder/IDKey;

    .line 191
    .line 192
    invoke-direct {p2, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-eqz p0, :cond_a

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 205
    .line 206
    .line 207
    :cond_a
    return-void

    .line 208
    :catchall_0
    move-exception p1

    .line 209
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    check-cast p2, Ljava/util/Set;

    .line 214
    .line 215
    if-eqz p2, :cond_b

    .line 216
    .line 217
    new-instance p3, Lorg/apache/commons/lang3/builder/IDKey;

    .line 218
    .line 219
    invoke-direct {p3, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-interface {p2, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 226
    .line 227
    .line 228
    move-result p0

    .line 229
    if-eqz p0, :cond_b

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 232
    .line 233
    .line 234
    :cond_b
    throw p1
.end method


# virtual methods
.method public final append(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 6
    .line 7
    mul-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 9
    .line 10
    goto/16 :goto_9

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_9

    .line 21
    .line 22
    instance-of v1, p1, [J

    .line 23
    .line 24
    const/16 v2, 0x20

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast p1, [J

    .line 30
    .line 31
    array-length v1, p1

    .line 32
    :goto_0
    if-ge v3, v1, :cond_a

    .line 33
    .line 34
    aget-wide v4, p1, v3

    .line 35
    .line 36
    iget v6, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 37
    .line 38
    mul-int/2addr v6, v0

    .line 39
    shr-long v7, v4, v2

    .line 40
    .line 41
    xor-long/2addr v4, v7

    .line 42
    long-to-int v4, v4

    .line 43
    add-int/2addr v6, v4

    .line 44
    iput v6, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    instance-of v1, p1, [I

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    check-cast p1, [I

    .line 54
    .line 55
    array-length v1, p1

    .line 56
    :goto_1
    if-ge v3, v1, :cond_a

    .line 57
    .line 58
    aget v2, p1, v3

    .line 59
    .line 60
    iget v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 61
    .line 62
    mul-int/2addr v4, v0

    .line 63
    add-int/2addr v4, v2

    .line 64
    iput v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    instance-of v1, p1, [S

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    check-cast p1, [S

    .line 74
    .line 75
    array-length v1, p1

    .line 76
    :goto_2
    if-ge v3, v1, :cond_a

    .line 77
    .line 78
    aget-short v2, p1, v3

    .line 79
    .line 80
    iget v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 81
    .line 82
    mul-int/2addr v4, v0

    .line 83
    add-int/2addr v4, v2

    .line 84
    iput v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 85
    .line 86
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    instance-of v1, p1, [C

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    check-cast p1, [C

    .line 94
    .line 95
    array-length v1, p1

    .line 96
    :goto_3
    if-ge v3, v1, :cond_a

    .line 97
    .line 98
    aget-char v2, p1, v3

    .line 99
    .line 100
    iget v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 101
    .line 102
    mul-int/2addr v4, v0

    .line 103
    add-int/2addr v4, v2

    .line 104
    iput v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 105
    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_4
    instance-of v1, p1, [B

    .line 110
    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    check-cast p1, [B

    .line 114
    .line 115
    array-length v1, p1

    .line 116
    :goto_4
    if-ge v3, v1, :cond_a

    .line 117
    .line 118
    aget-byte v2, p1, v3

    .line 119
    .line 120
    iget v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 121
    .line 122
    mul-int/2addr v4, v0

    .line 123
    add-int/2addr v4, v2

    .line 124
    iput v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 125
    .line 126
    add-int/lit8 v3, v3, 0x1

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_5
    instance-of v1, p1, [D

    .line 130
    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    check-cast p1, [D

    .line 134
    .line 135
    array-length v1, p1

    .line 136
    :goto_5
    if-ge v3, v1, :cond_a

    .line 137
    .line 138
    aget-wide v4, p1, v3

    .line 139
    .line 140
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 141
    .line 142
    .line 143
    move-result-wide v4

    .line 144
    iget v6, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 145
    .line 146
    mul-int/2addr v6, v0

    .line 147
    shr-long v7, v4, v2

    .line 148
    .line 149
    xor-long/2addr v4, v7

    .line 150
    long-to-int v4, v4

    .line 151
    add-int/2addr v6, v4

    .line 152
    iput v6, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 153
    .line 154
    add-int/lit8 v3, v3, 0x1

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_6
    instance-of v1, p1, [F

    .line 158
    .line 159
    if-eqz v1, :cond_7

    .line 160
    .line 161
    check-cast p1, [F

    .line 162
    .line 163
    array-length v1, p1

    .line 164
    :goto_6
    if-ge v3, v1, :cond_a

    .line 165
    .line 166
    aget v2, p1, v3

    .line 167
    .line 168
    iget v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 169
    .line 170
    mul-int/2addr v4, v0

    .line 171
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    add-int/2addr v2, v4

    .line 176
    iput v2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 177
    .line 178
    add-int/lit8 v3, v3, 0x1

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_7
    instance-of v1, p1, [Z

    .line 182
    .line 183
    if-eqz v1, :cond_8

    .line 184
    .line 185
    check-cast p1, [Z

    .line 186
    .line 187
    array-length v1, p1

    .line 188
    :goto_7
    if-ge v3, v1, :cond_a

    .line 189
    .line 190
    aget-boolean v2, p1, v3

    .line 191
    .line 192
    iget v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 193
    .line 194
    mul-int/2addr v4, v0

    .line 195
    xor-int/lit8 v2, v2, 0x1

    .line 196
    .line 197
    add-int/2addr v4, v2

    .line 198
    iput v4, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 199
    .line 200
    add-int/lit8 v3, v3, 0x1

    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_8
    check-cast p1, [Ljava/lang/Object;

    .line 204
    .line 205
    array-length v0, p1

    .line 206
    :goto_8
    if-ge v3, v0, :cond_a

    .line 207
    .line 208
    aget-object v1, p1, v3

    .line 209
    .line 210
    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    add-int/lit8 v3, v3, 0x1

    .line 214
    .line 215
    goto :goto_8

    .line 216
    :cond_9
    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 217
    .line 218
    mul-int/2addr v1, v0

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    add-int/2addr p1, v1

    .line 224
    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 225
    .line 226
    :cond_a
    :goto_9
    return-void
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 2
    .line 3
    return p0
.end method
