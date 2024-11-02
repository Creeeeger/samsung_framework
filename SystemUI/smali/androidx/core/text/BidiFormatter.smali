.class public final Landroidx/core/text/BidiFormatter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

.field public static final DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

.field public static final DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

.field public static final LRM_STRING:Ljava/lang/String;

.field public static final RLM_STRING:Ljava/lang/String;


# instance fields
.field public final mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

.field public final mFlags:I

.field public final mIsRtlContext:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    .line 2
    .line 3
    sput-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    .line 4
    .line 5
    const/16 v1, 0x200e

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 12
    .line 13
    const/16 v1, 0x200f

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sput-object v1, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v1, Landroidx/core/text/BidiFormatter;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-direct {v1, v2, v3, v0}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Landroidx/core/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

    .line 29
    .line 30
    new-instance v1, Landroidx/core/text/BidiFormatter;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-direct {v1, v2, v3, v0}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    .line 34
    .line 35
    .line 36
    sput-object v1, Landroidx/core/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    .line 5
    .line 6
    iput p2, p0, Landroidx/core/text/BidiFormatter;->mFlags:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 9
    .line 10
    return-void
.end method

.method public static getEntryDir(Ljava/lang/CharSequence;)I
    .locals 13

    .line 1
    new-instance v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    .line 5
    .line 6
    .line 7
    iput v1, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 8
    .line 9
    move p0, v1

    .line 10
    move v2, p0

    .line 11
    move v3, v2

    .line 12
    :cond_0
    :goto_0
    iget v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 13
    .line 14
    const/4 v5, -0x1

    .line 15
    const/4 v6, 0x1

    .line 16
    iget v7, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 17
    .line 18
    if-ge v4, v7, :cond_d

    .line 19
    .line 20
    if-nez p0, :cond_d

    .line 21
    .line 22
    iget-object v8, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    .line 23
    .line 24
    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iput-char v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 29
    .line 30
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    iget v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 37
    .line 38
    invoke-static {v8, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget v7, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 43
    .line 44
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    add-int/2addr v8, v7

    .line 49
    iput v8, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 50
    .line 51
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(I)B

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_1
    iget v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 58
    .line 59
    add-int/2addr v4, v6

    .line 60
    iput v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 61
    .line 62
    iget-char v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 63
    .line 64
    const/16 v9, 0x700

    .line 65
    .line 66
    if-ge v4, v9, :cond_2

    .line 67
    .line 68
    sget-object v9, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 69
    .line 70
    aget-byte v4, v9, v4

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    :goto_1
    iget-boolean v9, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 78
    .line 79
    if-eqz v9, :cond_9

    .line 80
    .line 81
    iget-char v9, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 82
    .line 83
    const/16 v10, 0x3c

    .line 84
    .line 85
    if-ne v9, v10, :cond_7

    .line 86
    .line 87
    iget v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 88
    .line 89
    :cond_3
    iget v9, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 90
    .line 91
    if-ge v9, v7, :cond_6

    .line 92
    .line 93
    add-int/lit8 v11, v9, 0x1

    .line 94
    .line 95
    iput v11, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 96
    .line 97
    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    iput-char v9, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 102
    .line 103
    const/16 v11, 0x3e

    .line 104
    .line 105
    if-ne v9, v11, :cond_4

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_4
    const/16 v11, 0x22

    .line 109
    .line 110
    if-eq v9, v11, :cond_5

    .line 111
    .line 112
    const/16 v11, 0x27

    .line 113
    .line 114
    if-ne v9, v11, :cond_3

    .line 115
    .line 116
    :cond_5
    :goto_2
    iget v11, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 117
    .line 118
    if-ge v11, v7, :cond_3

    .line 119
    .line 120
    add-int/lit8 v12, v11, 0x1

    .line 121
    .line 122
    iput v12, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 123
    .line 124
    invoke-interface {v8, v11}, Ljava/lang/CharSequence;->charAt(I)C

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    iput-char v11, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 129
    .line 130
    if-eq v11, v9, :cond_3

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    iput v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 134
    .line 135
    iput-char v10, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 136
    .line 137
    const/16 v4, 0xd

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_7
    const/16 v10, 0x26

    .line 141
    .line 142
    if-ne v9, v10, :cond_9

    .line 143
    .line 144
    :goto_3
    iget v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 145
    .line 146
    if-ge v4, v7, :cond_8

    .line 147
    .line 148
    add-int/lit8 v9, v4, 0x1

    .line 149
    .line 150
    iput v9, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 151
    .line 152
    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    iput-char v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 157
    .line 158
    const/16 v9, 0x3b

    .line 159
    .line 160
    if-eq v4, v9, :cond_8

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_8
    :goto_4
    const/16 v4, 0xc

    .line 164
    .line 165
    :cond_9
    :goto_5
    if-eqz v4, :cond_b

    .line 166
    .line 167
    if-eq v4, v6, :cond_a

    .line 168
    .line 169
    const/4 v7, 0x2

    .line 170
    if-eq v4, v7, :cond_a

    .line 171
    .line 172
    const/16 v7, 0x9

    .line 173
    .line 174
    if-eq v4, v7, :cond_0

    .line 175
    .line 176
    packed-switch v4, :pswitch_data_0

    .line 177
    .line 178
    .line 179
    goto :goto_6

    .line 180
    :pswitch_0
    add-int/lit8 v3, v3, -0x1

    .line 181
    .line 182
    move v2, v1

    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    .line 186
    .line 187
    move v2, v6

    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :pswitch_2
    add-int/lit8 v3, v3, 0x1

    .line 191
    .line 192
    move v2, v5

    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_a
    if-nez v3, :cond_c

    .line 196
    .line 197
    goto :goto_8

    .line 198
    :cond_b
    if-nez v3, :cond_c

    .line 199
    .line 200
    goto :goto_9

    .line 201
    :cond_c
    :goto_6
    move p0, v3

    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_d
    if-nez p0, :cond_e

    .line 205
    .line 206
    goto :goto_a

    .line 207
    :cond_e
    if-eqz v2, :cond_f

    .line 208
    .line 209
    move v1, v2

    .line 210
    goto :goto_a

    .line 211
    :cond_f
    :goto_7
    iget v2, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 212
    .line 213
    if-lez v2, :cond_11

    .line 214
    .line 215
    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    packed-switch v2, :pswitch_data_1

    .line 220
    .line 221
    .line 222
    goto :goto_7

    .line 223
    :pswitch_3
    add-int/lit8 v3, v3, 0x1

    .line 224
    .line 225
    goto :goto_7

    .line 226
    :pswitch_4
    if-ne p0, v3, :cond_10

    .line 227
    .line 228
    :goto_8
    move v1, v6

    .line 229
    goto :goto_a

    .line 230
    :pswitch_5
    if-ne p0, v3, :cond_10

    .line 231
    .line 232
    :goto_9
    move v1, v5

    .line 233
    goto :goto_a

    .line 234
    :cond_10
    add-int/lit8 v3, v3, -0x1

    .line 235
    .line 236
    goto :goto_7

    .line 237
    :cond_11
    :goto_a
    return v1

    .line 238
    nop

    .line 239
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static getExitDir(Ljava/lang/CharSequence;)I
    .locals 7

    .line 1
    new-instance v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    .line 5
    .line 6
    .line 7
    iget p0, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 8
    .line 9
    iput p0, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 10
    .line 11
    move p0, v1

    .line 12
    :goto_0
    move v2, p0

    .line 13
    :cond_0
    :goto_1
    iget v3, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 14
    .line 15
    if-lez v3, :cond_6

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, -0x1

    .line 22
    if-eqz v3, :cond_4

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    if-eq v3, v5, :cond_2

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    if-eq v3, v6, :cond_2

    .line 29
    .line 30
    const/16 v6, 0x9

    .line 31
    .line 32
    if-eq v3, v6, :cond_0

    .line 33
    .line 34
    packed-switch v3, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    goto :goto_4

    .line 40
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :pswitch_1
    if-ne p0, v2, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :pswitch_2
    if-ne p0, v2, :cond_1

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    if-nez v2, :cond_3

    .line 53
    .line 54
    :goto_2
    move v1, v5

    .line 55
    goto :goto_5

    .line 56
    :cond_3
    if-nez p0, :cond_0

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_4
    if-nez v2, :cond_5

    .line 60
    .line 61
    :goto_3
    move v1, v4

    .line 62
    goto :goto_5

    .line 63
    :cond_5
    if-nez p0, :cond_0

    .line 64
    .line 65
    :goto_4
    move p0, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_6
    :goto_5
    return v1

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Landroidx/core/text/BidiFormatter;
    .locals 4

    .line 1
    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/core/text/BidiFormatter$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, v0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, v0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    .line 12
    .line 13
    sget-object v3, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    .line 14
    .line 15
    if-ne v2, v3, :cond_1

    .line 16
    .line 17
    iget-boolean v0, v0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance v2, Landroidx/core/text/BidiFormatter;

    .line 28
    .line 29
    iget-boolean v3, v0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    .line 30
    .line 31
    iget-object v0, v0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    .line 32
    .line 33
    invoke-direct {v2, v3, v1, v0}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    .line 34
    .line 35
    .line 36
    move-object v0, v2

    .line 37
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    check-cast p2, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;

    invoke-virtual {p2, v0, p1}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(ILjava/lang/CharSequence;)Z

    move-result p2

    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    iget v1, p0, Landroidx/core/text/BidiFormatter;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v3, -0x1

    .line 5
    sget-object v4, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    sget-object v5, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    const-string v6, ""

    iget-boolean p0, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v1, :cond_7

    if-eqz p2, :cond_2

    .line 6
    sget-object v1, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    goto :goto_1

    :cond_2
    sget-object v1, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    .line 7
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v1, v7, p1}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(ILjava/lang/CharSequence;)Z

    move-result v1

    if-nez p0, :cond_4

    if-nez v1, :cond_3

    .line 8
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v7

    if-ne v7, v2, :cond_4

    :cond_3
    move-object v1, v5

    goto :goto_2

    :cond_4
    if-eqz p0, :cond_6

    if-eqz v1, :cond_5

    .line 9
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v1, v3, :cond_6

    :cond_5
    move-object v1, v4

    goto :goto_2

    :cond_6
    move-object v1, v6

    .line 10
    :goto_2
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_7
    if-eq p2, p0, :cond_9

    if-eqz p2, :cond_8

    const/16 v1, 0x202b

    goto :goto_3

    :cond_8
    const/16 v1, 0x202a

    .line 11
    :goto_3
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 12
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x202c

    .line 13
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 14
    :cond_9
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_4
    if-eqz p2, :cond_a

    .line 15
    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    goto :goto_5

    :cond_a
    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    .line 16
    :goto_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p2, v1, p1}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(ILjava/lang/CharSequence;)Z

    move-result p2

    if-nez p0, :cond_c

    if-nez p2, :cond_b

    .line 17
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v1, v2, :cond_c

    :cond_b
    move-object v4, v5

    goto :goto_6

    :cond_c
    if-eqz p0, :cond_d

    if-eqz p2, :cond_e

    .line 18
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result p0

    if-ne p0, v3, :cond_d

    goto :goto_6

    :cond_d
    move-object v4, v6

    .line 19
    :cond_e
    :goto_6
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public final unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-virtual {p0, p1, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
