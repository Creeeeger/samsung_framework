.class public final Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG:Z

.field public static Verify_Code:Ljava/lang/String;

.field public static code_endIndex:I

.field public static code_startIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->DEBUG:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    sput v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_startIndex:I

    .line 12
    .line 13
    sput v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_endIndex:I

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVerifyCode()Ljava/lang/String;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "code is "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "ORC/VerificationCodeUtils"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, ""

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_1
    const-string v2, "-"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    sget-object v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "[^\\d]"

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_2
    sget-object v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    .line 51
    .line 52
    return-object v0
.end method

.method public static isVerificationCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string p0, "ORC/VerificationCodeUtils"

    .line 9
    .line 10
    const-string p1, "isVerificationCode() is false"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    .line 18
    .line 19
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isVn:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/VnVerificationCodeParser;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/VnVerificationCodeParser;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isPHI:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/PhiVerificationCodeParser;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/PhiVerificationCodeParser;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isMAL:Z

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/MalVerificationCodeParser;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/MalVerificationCodeParser;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isTHL:Z

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/ThlVerificationCodeParser;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/ThlVerificationCodeParser;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isIND:Z

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/IndVerificationCodeParser;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/IndVerificationCodeParser;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isMYM:Z

    .line 70
    .line 71
    if-eqz v0, :cond_6

    .line 72
    .line 73
    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/MymVerificationCodeParser;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/MymVerificationCodeParser;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_6
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isSIN:Z

    .line 80
    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/SinVerificationCodeParser;

    .line 84
    .line 85
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/SinVerificationCodeParser;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_7
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isKor:Z

    .line 90
    .line 91
    if-eqz v0, :cond_8

    .line 92
    .line 93
    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/KorVerificationCodeParser;

    .line 94
    .line 95
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/KorVerificationCodeParser;-><init>(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_8
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isChn:Z

    .line 100
    .line 101
    if-eqz v0, :cond_9

    .line 102
    .line 103
    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;

    .line 104
    .line 105
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;-><init>(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_9
    new-instance v0, Lcom/android/systemui/edgelighting/effect/utils/vc/NormalVerificationCodeParser;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/NormalVerificationCodeParser;-><init>(Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParser;->getVerificationCode(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    sput-object p0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    .line 119
    .line 120
    if-nez p0, :cond_a

    .line 121
    .line 122
    return v1

    .line 123
    :cond_a
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    sput p0, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_startIndex:I

    .line 128
    .line 129
    sget-object p1, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    add-int/2addr p1, p0

    .line 136
    sput p1, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_endIndex:I

    .line 137
    .line 138
    const/4 p0, 0x1

    .line 139
    return p0
.end method
