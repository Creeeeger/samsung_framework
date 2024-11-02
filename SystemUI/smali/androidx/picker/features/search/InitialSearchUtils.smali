.class public final Landroidx/picker/features/search/InitialSearchUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final KOREAN_RANGE_PATTERN:[Ljava/lang/String;

.field public static final SCS_PROVIDER_URI:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 30

    .line 1
    const-string v0, "[\\uAC00-\\uAE4A]"

    .line 2
    .line 3
    const-string v1, "[\\uAE4C-\\uB091]"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const-string v3, "[\\uB098-\\uB2E2]"

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    const-string v6, "[\\uB2E4-\\uB52A]"

    .line 14
    .line 15
    const-string v7, "[\\uB530-\\uB775]"

    .line 16
    .line 17
    const-string v8, "[\\uB77C-\\uB9C1]"

    .line 18
    .line 19
    const-string v9, ""

    .line 20
    .line 21
    const-string v10, ""

    .line 22
    .line 23
    const-string v11, ""

    .line 24
    .line 25
    const-string v12, ""

    .line 26
    .line 27
    const-string v13, ""

    .line 28
    .line 29
    const-string v14, ""

    .line 30
    .line 31
    const-string v15, ""

    .line 32
    .line 33
    const-string v16, "[\\uB9C8-\\uBC11]"

    .line 34
    .line 35
    const-string v17, "[\\uBC14-\\uBE5B]"

    .line 36
    .line 37
    const-string v18, "[\\uBE60-\\uC0A5]"

    .line 38
    .line 39
    const-string v19, ""

    .line 40
    .line 41
    const-string v20, "[\\uC0AC-\\uC2F6]"

    .line 42
    .line 43
    const-string v21, "[\\uC2F8-\\uC53D]"

    .line 44
    .line 45
    const-string v22, "[\\uC544-\\uC78E]"

    .line 46
    .line 47
    const-string v23, "[\\uC790-\\uC9DA]"

    .line 48
    .line 49
    const-string v24, "[\\uC9DC-\\uCC27]"

    .line 50
    .line 51
    const-string v25, "[\\uCC28-\\uCE6D]"

    .line 52
    .line 53
    const-string v26, "[\\uCE74-\\uD0B9]"

    .line 54
    .line 55
    const-string v27, "[\\uD0C0-\\uD305]"

    .line 56
    .line 57
    const-string v28, "[\\uD30C-\\uD551]"

    .line 58
    .line 59
    const-string v29, "[\\uD558-\\uD79D]"

    .line 60
    .line 61
    filled-new-array/range {v0 .. v29}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Landroidx/picker/features/search/InitialSearchUtils;->KOREAN_RANGE_PATTERN:[Ljava/lang/String;

    .line 66
    .line 67
    new-instance v0, Landroid/net/Uri$Builder;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v1, "content"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v2, "com.samsung.android.scs.ai.search"

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string/jumbo v2, "v1"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v3, "application"

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Landroidx/picker/features/search/InitialSearchUtils;->SCS_PROVIDER_URI:Landroid/net/Uri;

    .line 102
    .line 103
    new-instance v0, Landroid/net/Uri$Builder;

    .line 104
    .line 105
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "com.samsung.android.bixby.service.bixbysearch.ai.search"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMatchedStringOffset(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .line 1
    new-instance v0, Landroid/database/CharArrayBuffer;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Landroid/database/CharArrayBuffer;->data:[C

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    array-length v3, v1

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-ge v3, v4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {p0, v2, v3, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, v0, Landroid/database/CharArrayBuffer;->data:[C

    .line 34
    .line 35
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    iput p0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 40
    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "("

    .line 44
    .line 45
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    const-string v1, "[0-9|a-z|A-Z|\u3131-\u314e|\u314f-\u3163|\uac00-\ud7a3| ]*"

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const-string p1, ""

    .line 67
    .line 68
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 78
    .line 79
    .line 80
    move v4, v2

    .line 81
    :goto_3
    add-int/lit8 v5, v4, 0x1

    .line 82
    .line 83
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    const/4 v6, 0x1

    .line 88
    const/16 v7, 0x1100

    .line 89
    .line 90
    const/16 v8, 0x314e

    .line 91
    .line 92
    const/16 v9, 0x3131

    .line 93
    .line 94
    if-lt v4, v7, :cond_4

    .line 95
    .line 96
    const/16 v7, 0x1112

    .line 97
    .line 98
    if-le v4, v7, :cond_6

    .line 99
    .line 100
    :cond_4
    if-lt v4, v9, :cond_5

    .line 101
    .line 102
    if-le v4, v8, :cond_6

    .line 103
    .line 104
    :cond_5
    const v7, 0xac00

    .line 105
    .line 106
    .line 107
    if-lt v4, v7, :cond_7

    .line 108
    .line 109
    if-gt v4, v7, :cond_7

    .line 110
    .line 111
    :cond_6
    move v7, v6

    .line 112
    goto :goto_4

    .line 113
    :cond_7
    move v7, v2

    .line 114
    :goto_4
    if-nez v7, :cond_8

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_8
    if-lt v4, v9, :cond_9

    .line 121
    .line 122
    if-gt v4, v8, :cond_9

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_9
    move v6, v2

    .line 126
    :goto_5
    if-eqz v6, :cond_a

    .line 127
    .line 128
    sget-object v6, Landroidx/picker/features/search/InitialSearchUtils;->KOREAN_RANGE_PATTERN:[Ljava/lang/String;

    .line 129
    .line 130
    add-int/lit16 v4, v4, -0x3131

    .line 131
    .line 132
    aget-object v4, v6, v4

    .line 133
    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    :goto_6
    if-lt v5, v1, :cond_c

    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string p1, ")"

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    new-instance p1, Ljava/lang/String;

    .line 164
    .line 165
    iget-object v1, v0, Landroid/database/CharArrayBuffer;->data:[C

    .line 166
    .line 167
    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 168
    .line 169
    invoke-direct {p1, v1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_b

    .line 181
    .line 182
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    goto :goto_7

    .line 187
    :cond_b
    const/4 p0, -0x1

    .line 188
    :goto_7
    return p0

    .line 189
    :cond_c
    move v4, v5

    .line 190
    goto :goto_3
.end method
