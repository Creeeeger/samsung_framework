.class public abstract Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParser;


# static fields
.field public static final OTP_PATTERN:[Ljava/lang/String;

.field public static final PATTERN_EMAIL:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "^([A-Z]{1,3}-[\\d]{4,6})$"

    .line 2
    .line 3
    const-string v1, "^([\\d]{3,5}-[\\d]{3,5})$"

    .line 4
    .line 5
    const-string v2, "^([\\d]{4,10})$"

    .line 6
    .line 7
    const-string v3, "^(?=.*[\\d])(?=.*[a-zA-Z])([\\da-zA-Z]{6,10})$"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->OTP_PATTERN:[Ljava/lang/String;

    .line 14
    .line 15
    sget-object v0, Landroidx/core/util/PatternsCompat;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->PATTERN_EMAIL:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containKey(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "(^|[^\\da-z]|[0-9]| )"

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "([^\\da-z]|[0-9]| |$)"

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p0, -0x1

    .line 49
    return p0
.end method

.method public static getVerificationCode(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "ORC/VerificationCodeParserBase"

    .line 8
    .line 9
    const-string p1, "getVerificationCode() - empty text"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const v1, 0x7f0300a8

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const v1, 0x7f0300b1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    array-length v2, p2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    array-length v2, v0

    .line 46
    array-length v3, p2

    .line 47
    add-int/2addr v2, v3

    .line 48
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, [Ljava/lang/String;

    .line 53
    .line 54
    array-length v0, v0

    .line 55
    array-length v3, p2

    .line 56
    invoke-static {p2, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    move-object v0, v2

    .line 60
    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    .line 61
    .line 62
    array-length p2, p3

    .line 63
    if-nez p2, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    array-length p2, p0

    .line 67
    array-length v2, p3

    .line 68
    add-int/2addr p2, v2

    .line 69
    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, [Ljava/lang/String;

    .line 74
    .line 75
    array-length p0, p0

    .line 76
    array-length v2, p3

    .line 77
    invoke-static {p3, v1, p2, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    .line 79
    .line 80
    move-object p0, p2

    .line 81
    :cond_4
    :goto_1
    invoke-static {p1, v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->getVerificationCodeWithoutDefault(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public static getVerificationCodeWithoutDefault(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "ORC/VerificationCodeParserBase"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p0, "getVerificationCode() - empty text"

    .line 11
    .line 12
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0, p1}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->containKey(Ljava/lang/String;[Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v3, -0x1

    .line 25
    if-eq p1, v3, :cond_1

    .line 26
    .line 27
    const-string p2, "getKeyOTPPosition: contain strong key"

    .line 28
    .line 29
    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {v0, p2}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->containKey(Ljava/lang/String;[Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    :goto_0
    if-ne p1, v3, :cond_2

    .line 38
    .line 39
    const-string p0, "getVerificationCode - not OTP message"

    .line 40
    .line 41
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, "[^\\da-zA-Z-]|"

    .line 48
    .line 49
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->PATTERN_EMAIL:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string/jumbo v0, "|(http|ftp|https):\\/\\/[\\w\\-_]+(\\.[\\w\\-_]+)+([\\w\\-\\.,@?^=%&amp;:/~\\+#]*[\\w\\-\\@?^=%&amp;/~\\+#])"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    const/4 v0, 0x0

    .line 76
    move v4, v0

    .line 77
    move v6, v4

    .line 78
    move v5, v3

    .line 79
    :goto_1
    array-length v7, p2

    .line 80
    if-ge v4, v7, :cond_5

    .line 81
    .line 82
    sget-object v7, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->OTP_PATTERN:[Ljava/lang/String;

    .line 83
    .line 84
    move v8, v0

    .line 85
    :goto_2
    const/4 v9, 0x4

    .line 86
    if-ge v8, v9, :cond_4

    .line 87
    .line 88
    aget-object v9, v7, v8

    .line 89
    .line 90
    aget-object v10, p2, v4

    .line 91
    .line 92
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_3

    .line 97
    .line 98
    sub-int v9, p1, v6

    .line 99
    .line 100
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    if-lt p0, v10, :cond_3

    .line 105
    .line 106
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    move v5, v4

    .line 111
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    aget-object v7, p2, v4

    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    add-int/lit8 v7, v7, 0x1

    .line 121
    .line 122
    add-int/2addr v6, v7

    .line 123
    add-int/lit8 v4, v4, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    if-eq v5, v3, :cond_6

    .line 127
    .line 128
    const-string p0, "getOTPCode = true"

    .line 129
    .line 130
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    aget-object v1, p2, v5

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    const-string p0, "getOTPCode - Don\'t have any OTP code"

    .line 137
    .line 138
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :goto_3
    return-object v1
.end method
