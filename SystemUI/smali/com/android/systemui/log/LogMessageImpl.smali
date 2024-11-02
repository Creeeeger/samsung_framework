.class public final Lcom/android/systemui/log/LogMessageImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/log/LogMessage;


# static fields
.field public static final Factory:Lcom/android/systemui/log/LogMessageImpl$Factory;


# instance fields
.field private bool1:Z

.field private bool2:Z

.field private bool3:Z

.field private bool4:Z

.field private bool5:Z

.field private double1:D

.field private exception:Ljava/lang/Throwable;

.field private int1:I

.field private int2:I

.field private level:Lcom/android/systemui/log/LogLevel;

.field private long1:J

.field private long2:J

.field private messagePrinter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private str1:Ljava/lang/String;

.field private str2:Ljava/lang/String;

.field private str3:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private tagSeparator:Ljava/lang/Character;

.field private threadId:J

.field private timestamp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/log/LogMessageImpl$Factory;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/log/LogMessageImpl$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/log/LogMessageImpl;->Factory:Lcom/android/systemui/log/LogMessageImpl$Factory;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/log/LogLevel;Ljava/lang/String;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJDZZZZZJLjava/lang/Character;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/log/LogLevel;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/jvm/functions/Function1;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJJDZZZZZJ",
            "Ljava/lang/Character;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->level:Lcom/android/systemui/log/LogLevel;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->tag:Ljava/lang/String;

    move-wide v1, p3

    .line 4
    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->timestamp:J

    move-object v1, p5

    .line 5
    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->messagePrinter:Lkotlin/jvm/functions/Function1;

    move-object v1, p6

    .line 6
    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->exception:Ljava/lang/Throwable;

    move-object v1, p7

    .line 7
    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    move-object v1, p9

    .line 9
    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    move v1, p10

    .line 10
    iput v1, v0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    move v1, p11

    .line 11
    iput v1, v0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    move-wide v1, p12

    .line 12
    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    move-wide/from16 v1, p14

    .line 13
    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    move-wide/from16 v1, p16

    .line 14
    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    move/from16 v1, p18

    .line 15
    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    move/from16 v1, p19

    .line 16
    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    move/from16 v1, p20

    .line 17
    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    move/from16 v1, p21

    .line 18
    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    move/from16 v1, p22

    .line 19
    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool5:Z

    move-wide/from16 v1, p23

    .line 20
    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->threadId:J

    move-object/from16 v1, p25

    .line 21
    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->tagSeparator:Ljava/lang/Character;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/log/LogMessageImpl;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJDZZZZZJLjava/lang/Character;ILjava/lang/Object;)Lcom/android/systemui/log/LogMessageImpl;
    .locals 22

    .line 1
    move/from16 v0, p26

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object/from16 v1, p1

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v2, v0, 0x2

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object/from16 v2, p2

    .line 24
    .line 25
    :goto_1
    and-int/lit8 v3, v0, 0x4

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getTimestamp()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move-wide/from16 v3, p3

    .line 35
    .line 36
    :goto_2
    and-int/lit8 v5, v0, 0x8

    .line 37
    .line 38
    if-eqz v5, :cond_3

    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    move-object/from16 v5, p5

    .line 46
    .line 47
    :goto_3
    and-int/lit8 v6, v0, 0x10

    .line 48
    .line 49
    if-eqz v6, :cond_4

    .line 50
    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getException()Ljava/lang/Throwable;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    goto :goto_4

    .line 56
    :cond_4
    move-object/from16 v6, p6

    .line 57
    .line 58
    :goto_4
    and-int/lit8 v7, v0, 0x20

    .line 59
    .line 60
    if-eqz v7, :cond_5

    .line 61
    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    goto :goto_5

    .line 67
    :cond_5
    move-object/from16 v7, p7

    .line 68
    .line 69
    :goto_5
    and-int/lit8 v8, v0, 0x40

    .line 70
    .line 71
    if-eqz v8, :cond_6

    .line 72
    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    goto :goto_6

    .line 78
    :cond_6
    move-object/from16 v8, p8

    .line 79
    .line 80
    :goto_6
    and-int/lit16 v9, v0, 0x80

    .line 81
    .line 82
    if-eqz v9, :cond_7

    .line 83
    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    goto :goto_7

    .line 89
    :cond_7
    move-object/from16 v9, p9

    .line 90
    .line 91
    :goto_7
    and-int/lit16 v10, v0, 0x100

    .line 92
    .line 93
    if-eqz v10, :cond_8

    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt1()I

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    goto :goto_8

    .line 100
    :cond_8
    move/from16 v10, p10

    .line 101
    .line 102
    :goto_8
    and-int/lit16 v11, v0, 0x200

    .line 103
    .line 104
    if-eqz v11, :cond_9

    .line 105
    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt2()I

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    goto :goto_9

    .line 111
    :cond_9
    move/from16 v11, p11

    .line 112
    .line 113
    :goto_9
    and-int/lit16 v12, v0, 0x400

    .line 114
    .line 115
    if-eqz v12, :cond_a

    .line 116
    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong1()J

    .line 118
    .line 119
    .line 120
    move-result-wide v12

    .line 121
    goto :goto_a

    .line 122
    :cond_a
    move-wide/from16 v12, p12

    .line 123
    .line 124
    :goto_a
    and-int/lit16 v14, v0, 0x800

    .line 125
    .line 126
    if-eqz v14, :cond_b

    .line 127
    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong2()J

    .line 129
    .line 130
    .line 131
    move-result-wide v14

    .line 132
    goto :goto_b

    .line 133
    :cond_b
    move-wide/from16 v14, p14

    .line 134
    .line 135
    :goto_b
    move-wide/from16 p14, v14

    .line 136
    .line 137
    and-int/lit16 v14, v0, 0x1000

    .line 138
    .line 139
    if-eqz v14, :cond_c

    .line 140
    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getDouble1()D

    .line 142
    .line 143
    .line 144
    move-result-wide v14

    .line 145
    goto :goto_c

    .line 146
    :cond_c
    move-wide/from16 v14, p16

    .line 147
    .line 148
    :goto_c
    move-wide/from16 p16, v14

    .line 149
    .line 150
    and-int/lit16 v14, v0, 0x2000

    .line 151
    .line 152
    if-eqz v14, :cond_d

    .line 153
    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool1()Z

    .line 155
    .line 156
    .line 157
    move-result v14

    .line 158
    goto :goto_d

    .line 159
    :cond_d
    move/from16 v14, p18

    .line 160
    .line 161
    :goto_d
    and-int/lit16 v15, v0, 0x4000

    .line 162
    .line 163
    if-eqz v15, :cond_e

    .line 164
    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool2()Z

    .line 166
    .line 167
    .line 168
    move-result v15

    .line 169
    goto :goto_e

    .line 170
    :cond_e
    move/from16 v15, p19

    .line 171
    .line 172
    :goto_e
    const v16, 0x8000

    .line 173
    .line 174
    .line 175
    and-int v16, v0, v16

    .line 176
    .line 177
    if-eqz v16, :cond_f

    .line 178
    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool3()Z

    .line 180
    .line 181
    .line 182
    move-result v16

    .line 183
    goto :goto_f

    .line 184
    :cond_f
    move/from16 v16, p20

    .line 185
    .line 186
    :goto_f
    const/high16 v17, 0x10000

    .line 187
    .line 188
    and-int v17, v0, v17

    .line 189
    .line 190
    if-eqz v17, :cond_10

    .line 191
    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool4()Z

    .line 193
    .line 194
    .line 195
    move-result v17

    .line 196
    goto :goto_10

    .line 197
    :cond_10
    move/from16 v17, p21

    .line 198
    .line 199
    :goto_10
    const/high16 v18, 0x20000

    .line 200
    .line 201
    and-int v18, v0, v18

    .line 202
    .line 203
    if-eqz v18, :cond_11

    .line 204
    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool5()Z

    .line 206
    .line 207
    .line 208
    move-result v18

    .line 209
    goto :goto_11

    .line 210
    :cond_11
    move/from16 v18, p22

    .line 211
    .line 212
    :goto_11
    const/high16 v19, 0x40000

    .line 213
    .line 214
    and-int v19, v0, v19

    .line 215
    .line 216
    if-eqz v19, :cond_12

    .line 217
    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getThreadId()J

    .line 219
    .line 220
    .line 221
    move-result-wide v19

    .line 222
    goto :goto_12

    .line 223
    :cond_12
    move-wide/from16 v19, p23

    .line 224
    .line 225
    :goto_12
    const/high16 v21, 0x80000

    .line 226
    .line 227
    and-int v0, v0, v21

    .line 228
    .line 229
    if-eqz v0, :cond_13

    .line 230
    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getTagSeparator()Ljava/lang/Character;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    goto :goto_13

    .line 236
    :cond_13
    move-object/from16 v0, p25

    .line 237
    .line 238
    :goto_13
    move-object/from16 p1, v1

    .line 239
    .line 240
    move-object/from16 p2, v2

    .line 241
    .line 242
    move-wide/from16 p3, v3

    .line 243
    .line 244
    move-object/from16 p5, v5

    .line 245
    .line 246
    move-object/from16 p6, v6

    .line 247
    .line 248
    move-object/from16 p7, v7

    .line 249
    .line 250
    move-object/from16 p8, v8

    .line 251
    .line 252
    move-object/from16 p9, v9

    .line 253
    .line 254
    move/from16 p10, v10

    .line 255
    .line 256
    move/from16 p11, v11

    .line 257
    .line 258
    move-wide/from16 p12, v12

    .line 259
    .line 260
    move/from16 p18, v14

    .line 261
    .line 262
    move/from16 p19, v15

    .line 263
    .line 264
    move/from16 p20, v16

    .line 265
    .line 266
    move/from16 p21, v17

    .line 267
    .line 268
    move/from16 p22, v18

    .line 269
    .line 270
    move-wide/from16 p23, v19

    .line 271
    .line 272
    move-object/from16 p25, v0

    .line 273
    .line 274
    invoke-virtual/range {p0 .. p25}, Lcom/android/systemui/log/LogMessageImpl;->copy(Lcom/android/systemui/log/LogLevel;Ljava/lang/String;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJDZZZZZJLjava/lang/Character;)Lcom/android/systemui/log/LogMessageImpl;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    return-object v0
.end method

.method public static synthetic reset$default(Lcom/android/systemui/log/LogMessageImpl;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x10

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p6, 0x0

    .line 6
    :cond_0
    move-object v6, p6

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-wide v3, p3

    .line 11
    move-object v5, p5

    .line 12
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/log/LogMessageImpl;->reset(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final component1()Lcom/android/systemui/log/LogLevel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final component10()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt2()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final component11()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong1()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final component12()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong2()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final component13()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getDouble1()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final component14()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool1()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final component15()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool2()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final component16()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool3()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final component17()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool4()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final component18()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool5()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final component19()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getThreadId()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final component20()Ljava/lang/Character;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTagSeparator()Ljava/lang/Character;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final component3()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTimestamp()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final component4()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final component5()Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getException()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final component9()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt1()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final copy(Lcom/android/systemui/log/LogLevel;Ljava/lang/String;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJDZZZZZJLjava/lang/Character;)Lcom/android/systemui/log/LogMessageImpl;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/log/LogLevel;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/jvm/functions/Function1;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJJDZZZZZJ",
            "Ljava/lang/Character;",
            ")",
            "Lcom/android/systemui/log/LogMessageImpl;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move-wide/from16 v23, p23

    move-object/from16 v25, p25

    new-instance v26, Lcom/android/systemui/log/LogMessageImpl;

    move-object/from16 v0, v26

    invoke-direct/range {v0 .. v25}, Lcom/android/systemui/log/LogMessageImpl;-><init>(Lcom/android/systemui/log/LogLevel;Ljava/lang/String;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJDZZZZZJLjava/lang/Character;)V

    return-object v26
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/log/LogMessageImpl;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eq v1, v3, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    return v2

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTimestamp()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getTimestamp()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    cmp-long v1, v3, v5

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    return v2

    .line 52
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_5

    .line 65
    .line 66
    return v2

    .line 67
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getException()Ljava/lang/Throwable;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getException()Ljava/lang/Throwable;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_6

    .line 80
    .line 81
    return v2

    .line 82
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_7

    .line 95
    .line 96
    return v2

    .line 97
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_8

    .line 110
    .line 111
    return v2

    .line 112
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-nez v1, :cond_9

    .line 125
    .line 126
    return v2

    .line 127
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt1()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getInt1()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eq v1, v3, :cond_a

    .line 136
    .line 137
    return v2

    .line 138
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt2()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getInt2()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eq v1, v3, :cond_b

    .line 147
    .line 148
    return v2

    .line 149
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong1()J

    .line 150
    .line 151
    .line 152
    move-result-wide v3

    .line 153
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getLong1()J

    .line 154
    .line 155
    .line 156
    move-result-wide v5

    .line 157
    cmp-long v1, v3, v5

    .line 158
    .line 159
    if-eqz v1, :cond_c

    .line 160
    .line 161
    return v2

    .line 162
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong2()J

    .line 163
    .line 164
    .line 165
    move-result-wide v3

    .line 166
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getLong2()J

    .line 167
    .line 168
    .line 169
    move-result-wide v5

    .line 170
    cmp-long v1, v3, v5

    .line 171
    .line 172
    if-eqz v1, :cond_d

    .line 173
    .line 174
    return v2

    .line 175
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getDouble1()D

    .line 176
    .line 177
    .line 178
    move-result-wide v3

    .line 179
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getDouble1()D

    .line 180
    .line 181
    .line 182
    move-result-wide v5

    .line 183
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_e

    .line 188
    .line 189
    return v2

    .line 190
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool1()Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getBool1()Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eq v1, v3, :cond_f

    .line 199
    .line 200
    return v2

    .line 201
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool2()Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getBool2()Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eq v1, v3, :cond_10

    .line 210
    .line 211
    return v2

    .line 212
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool3()Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getBool3()Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eq v1, v3, :cond_11

    .line 221
    .line 222
    return v2

    .line 223
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool4()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getBool4()Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eq v1, v3, :cond_12

    .line 232
    .line 233
    return v2

    .line 234
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool5()Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getBool5()Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-eq v1, v3, :cond_13

    .line 243
    .line 244
    return v2

    .line 245
    :cond_13
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getThreadId()J

    .line 246
    .line 247
    .line 248
    move-result-wide v3

    .line 249
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getThreadId()J

    .line 250
    .line 251
    .line 252
    move-result-wide v5

    .line 253
    cmp-long v1, v3, v5

    .line 254
    .line 255
    if-eqz v1, :cond_14

    .line 256
    .line 257
    return v2

    .line 258
    :cond_14
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTagSeparator()Ljava/lang/Character;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getTagSeparator()Ljava/lang/Character;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    if-nez p0, :cond_15

    .line 271
    .line 272
    return v2

    .line 273
    :cond_15
    return v0
.end method

.method public getBool1()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    .line 2
    .line 3
    return p0
.end method

.method public getBool2()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    .line 2
    .line 3
    return p0
.end method

.method public getBool3()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    .line 2
    .line 3
    return p0
.end method

.method public getBool4()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    .line 2
    .line 3
    return p0
.end method

.method public getBool5()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool5:Z

    .line 2
    .line 3
    return p0
.end method

.method public getDouble1()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->exception:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object p0
.end method

.method public getInt1()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    .line 2
    .line 3
    return p0
.end method

.method public getInt2()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    .line 2
    .line 3
    return p0
.end method

.method public getLevel()Lcom/android/systemui/log/LogLevel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->level:Lcom/android/systemui/log/LogLevel;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLong1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLong2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMessagePrinter()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->messagePrinter:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStr1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStr2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStr3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTagSeparator()Ljava/lang/Character;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->tagSeparator:Ljava/lang/Character;

    .line 2
    .line 3
    return-object p0
.end method

.method public getThreadId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->threadId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->timestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v1, v0

    .line 20
    mul-int/lit8 v1, v1, 0x1f

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTimestamp()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-int/2addr v1, v0

    .line 42
    mul-int/lit8 v1, v1, 0x1f

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getException()Ljava/lang/Throwable;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v2, 0x0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    move v0, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getException()Ljava/lang/Throwable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    :goto_0
    add-int/2addr v1, v0

    .line 62
    mul-int/lit8 v1, v1, 0x1f

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    move v0, v2

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    :goto_1
    add-int/2addr v1, v0

    .line 81
    mul-int/lit8 v1, v1, 0x1f

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    move v0, v2

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    :goto_2
    add-int/2addr v1, v0

    .line 100
    mul-int/lit8 v1, v1, 0x1f

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    move v0, v2

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    :goto_3
    add-int/2addr v1, v0

    .line 119
    mul-int/lit8 v1, v1, 0x1f

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt1()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    add-int/2addr v0, v1

    .line 130
    mul-int/lit8 v0, v0, 0x1f

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt2()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    add-int/2addr v1, v0

    .line 141
    mul-int/lit8 v1, v1, 0x1f

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong1()J

    .line 144
    .line 145
    .line 146
    move-result-wide v3

    .line 147
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    add-int/2addr v0, v1

    .line 152
    mul-int/lit8 v0, v0, 0x1f

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong2()J

    .line 155
    .line 156
    .line 157
    move-result-wide v3

    .line 158
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    add-int/2addr v1, v0

    .line 163
    mul-int/lit8 v1, v1, 0x1f

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getDouble1()D

    .line 166
    .line 167
    .line 168
    move-result-wide v3

    .line 169
    invoke-static {v3, v4}, Ljava/lang/Double;->hashCode(D)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    add-int/2addr v0, v1

    .line 174
    mul-int/lit8 v0, v0, 0x1f

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool1()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    const/4 v3, 0x1

    .line 181
    if-eqz v1, :cond_4

    .line 182
    .line 183
    move v1, v3

    .line 184
    :cond_4
    add-int/2addr v0, v1

    .line 185
    mul-int/lit8 v0, v0, 0x1f

    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool2()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_5

    .line 192
    .line 193
    move v1, v3

    .line 194
    :cond_5
    add-int/2addr v0, v1

    .line 195
    mul-int/lit8 v0, v0, 0x1f

    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool3()Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-eqz v1, :cond_6

    .line 202
    .line 203
    move v1, v3

    .line 204
    :cond_6
    add-int/2addr v0, v1

    .line 205
    mul-int/lit8 v0, v0, 0x1f

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool4()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_7

    .line 212
    .line 213
    move v1, v3

    .line 214
    :cond_7
    add-int/2addr v0, v1

    .line 215
    mul-int/lit8 v0, v0, 0x1f

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool5()Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_8

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_8
    move v3, v1

    .line 225
    :goto_4
    add-int/2addr v0, v3

    .line 226
    mul-int/lit8 v0, v0, 0x1f

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getThreadId()J

    .line 229
    .line 230
    .line 231
    move-result-wide v3

    .line 232
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    add-int/2addr v1, v0

    .line 237
    mul-int/lit8 v1, v1, 0x1f

    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTagSeparator()Ljava/lang/Character;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    if-nez v0, :cond_9

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTagSeparator()Ljava/lang/Character;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    :goto_5
    add-int/2addr v1, v2

    .line 255
    return v1
.end method

.method public final reset(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/log/LogLevel;",
            "J",
            "Lkotlin/jvm/functions/Function1;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogMessageImpl;->setLevel(Lcom/android/systemui/log/LogLevel;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setTag(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/log/LogMessageImpl;->setTimestamp(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p5}, Lcom/android/systemui/log/LogMessageImpl;->setMessagePrinter(Lkotlin/jvm/functions/Function1;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p6}, Lcom/android/systemui/log/LogMessageImpl;->setException(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setStr1(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setStr2(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setStr3(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogMessageImpl;->setInt1(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogMessageImpl;->setInt2(I)V

    .line 31
    .line 32
    .line 33
    const-wide/16 p3, 0x0

    .line 34
    .line 35
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/log/LogMessageImpl;->setLong1(J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/log/LogMessageImpl;->setLong2(J)V

    .line 39
    .line 40
    .line 41
    const-wide/16 p5, 0x0

    .line 42
    .line 43
    invoke-virtual {p0, p5, p6}, Lcom/android/systemui/log/LogMessageImpl;->setDouble1(D)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogMessageImpl;->setBool1(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogMessageImpl;->setBool2(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogMessageImpl;->setBool3(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogMessageImpl;->setBool4(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogMessageImpl;->setBool5(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/log/LogMessageImpl;->setThreadId(J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setTagSeparator(Ljava/lang/Character;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public setBool1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBool2(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBool3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBool4(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBool5(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool5:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDouble1(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    .line 2
    .line 3
    return-void
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->exception:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-void
.end method

.method public setInt1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    .line 2
    .line 3
    return-void
.end method

.method public setInt2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    .line 2
    .line 3
    return-void
.end method

.method public setLevel(Lcom/android/systemui/log/LogLevel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->level:Lcom/android/systemui/log/LogLevel;

    .line 2
    .line 3
    return-void
.end method

.method public setLong1(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    .line 2
    .line 3
    return-void
.end method

.method public setLong2(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    .line 2
    .line 3
    return-void
.end method

.method public setMessagePrinter(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->messagePrinter:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public setStr1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStr2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStr3(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTagSeparator(Ljava/lang/Character;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->tagSeparator:Ljava/lang/Character;

    .line 2
    .line 3
    return-void
.end method

.method public setThreadId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->threadId:J

    .line 2
    .line 3
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->timestamp:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 26

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getTimestamp()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getException()Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt1()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt2()I

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong1()J

    .line 42
    .line 43
    .line 44
    move-result-wide v11

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong2()J

    .line 46
    .line 47
    .line 48
    move-result-wide v13

    .line 49
    move-wide v15, v13

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getDouble1()D

    .line 51
    .line 52
    .line 53
    move-result-wide v13

    .line 54
    move-wide/from16 v17, v15

    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool1()Z

    .line 57
    .line 58
    .line 59
    move-result v15

    .line 60
    move/from16 v16, v15

    .line 61
    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool2()Z

    .line 63
    .line 64
    .line 65
    move-result v15

    .line 66
    move/from16 v19, v15

    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool3()Z

    .line 69
    .line 70
    .line 71
    move-result v15

    .line 72
    move/from16 v20, v15

    .line 73
    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool4()Z

    .line 75
    .line 76
    .line 77
    move-result v15

    .line 78
    move/from16 v21, v15

    .line 79
    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool5()Z

    .line 81
    .line 82
    .line 83
    move-result v15

    .line 84
    move-wide/from16 v22, v13

    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getThreadId()J

    .line 87
    .line 88
    .line 89
    move-result-wide v13

    .line 90
    move-wide/from16 v24, v13

    .line 91
    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getTagSeparator()Ljava/lang/Character;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    new-instance v14, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    move-object/from16 p0, v13

    .line 99
    .line 100
    const-string v13, "LogMessageImpl(level="

    .line 101
    .line 102
    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ", tag="

    .line 109
    .line 110
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ", timestamp="

    .line 117
    .line 118
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v0, ", messagePrinter="

    .line 125
    .line 126
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, ", exception="

    .line 133
    .line 134
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, ", str1="

    .line 141
    .line 142
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v0, ", str2="

    .line 149
    .line 150
    const-string v1, ", str3="

    .line 151
    .line 152
    invoke-static {v14, v0, v7, v1, v8}, Lcom/android/systemui/appops/AppOpItem$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v0, ", int1="

    .line 156
    .line 157
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v0, ", int2="

    .line 164
    .line 165
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v0, ", long1="

    .line 172
    .line 173
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v0, ", long2="

    .line 180
    .line 181
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    move-wide/from16 v0, v17

    .line 185
    .line 186
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v0, ", double1="

    .line 190
    .line 191
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    move-wide/from16 v0, v22

    .line 195
    .line 196
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v0, ", bool1="

    .line 200
    .line 201
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v0, ", bool2="

    .line 205
    .line 206
    const-string v1, ", bool3="

    .line 207
    .line 208
    move/from16 v2, v16

    .line 209
    .line 210
    move/from16 v3, v19

    .line 211
    .line 212
    invoke-static {v14, v2, v0, v3, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-string v0, ", bool4="

    .line 216
    .line 217
    const-string v1, ", bool5="

    .line 218
    .line 219
    move/from16 v2, v20

    .line 220
    .line 221
    move/from16 v3, v21

    .line 222
    .line 223
    invoke-static {v14, v2, v0, v3, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v0, ", threadId="

    .line 230
    .line 231
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    move-wide/from16 v0, v24

    .line 235
    .line 236
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v0, ", tagSeparator="

    .line 240
    .line 241
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    move-object/from16 v0, p0

    .line 245
    .line 246
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v0, ")"

    .line 250
    .line 251
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    return-object v0
.end method
