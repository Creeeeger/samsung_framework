.class public Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;
.super Lcom/samsung/android/sdk/scs/base/ResultException;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(I)V

    .line 2
    sget-object p1, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->DEVICE_UNKNOWN_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(ILjava/lang/String;)V

    .line 6
    iput p2, p0, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(ILjava/lang/String;)V

    .line 4
    sget-object p1, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->DEVICE_UNKNOWN_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public final getErrorCodeClassified()Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;
    .locals 3

    .line 1
    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->mErrorCode:I

    .line 2
    .line 3
    div-int/lit16 v0, p0, 0x3e8

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt p0, v1, :cond_0

    .line 7
    .line 8
    const/16 v2, 0xe

    .line 9
    .line 10
    if-gt p0, v2, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->DEVICE_NETORK_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    if-eq v0, v1, :cond_9

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_6

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-eq v0, v1, :cond_5

    .line 22
    .line 23
    const/4 v1, 0x5

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/16 p0, 0x8

    .line 27
    .line 28
    if-eq v0, p0, :cond_1

    .line 29
    .line 30
    const/16 p0, 0x9

    .line 31
    .line 32
    if-eq v0, p0, :cond_1

    .line 33
    .line 34
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->DEVICE_UNKNOWN_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SERVER_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/16 v0, 0x1400

    .line 41
    .line 42
    if-eq p0, v0, :cond_4

    .line 43
    .line 44
    const/16 v0, 0x145a

    .line 45
    .line 46
    if-eq p0, v0, :cond_3

    .line 47
    .line 48
    const/16 v0, 0x1464

    .line 49
    .line 50
    if-eq p0, v0, :cond_4

    .line 51
    .line 52
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SAFETY_FILTER_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SAFETY_FILTER_RECITATION_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SAFETY_FILTER_UNSUPPORTED_LANGUAGE_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SERVER_QUOTA_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_6
    const/16 v0, 0x898

    .line 65
    .line 66
    if-eq p0, v0, :cond_8

    .line 67
    .line 68
    const/16 v0, 0x899

    .line 69
    .line 70
    if-ne p0, v0, :cond_7

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_7
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->AUTH_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_8
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->AUTH_SA_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_9
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->CLIENT_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 80
    .line 81
    :goto_1
    return-object p0
.end method
