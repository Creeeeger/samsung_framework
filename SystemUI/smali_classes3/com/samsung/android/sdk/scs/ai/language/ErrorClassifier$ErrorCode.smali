.class public final enum Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum AUTH_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum AUTH_SA_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum CLIENT_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum DEVICE_NETORK_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum DEVICE_UNKNOWN_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum SAFETY_FILTER_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum SAFETY_FILTER_RECITATION_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum SAFETY_FILTER_UNSUPPORTED_LANGUAGE_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum SERVER_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum SERVER_QUOTA_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;


# instance fields
.field private final mError:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    const-string v2, "DEVICE_ERROR"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 12
    .line 13
    const/16 v2, 0x65

    .line 14
    .line 15
    const-string v3, "DEVICE_NETORK_ERROR"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->DEVICE_NETORK_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 22
    .line 23
    new-instance v2, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 24
    .line 25
    const/16 v3, 0xc7

    .line 26
    .line 27
    const-string v4, "DEVICE_UNKNOWN_ERROR"

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    invoke-direct {v2, v4, v5, v3}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->DEVICE_UNKNOWN_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 34
    .line 35
    new-instance v3, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 36
    .line 37
    const/16 v4, 0xc8

    .line 38
    .line 39
    const-string v5, "CLIENT_ERROR"

    .line 40
    .line 41
    const/4 v6, 0x3

    .line 42
    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    sput-object v3, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->CLIENT_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 46
    .line 47
    new-instance v4, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 48
    .line 49
    const/16 v5, 0x12c

    .line 50
    .line 51
    const-string v6, "AUTH_ERROR"

    .line 52
    .line 53
    const/4 v7, 0x4

    .line 54
    invoke-direct {v4, v6, v7, v5}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    sput-object v4, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->AUTH_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 58
    .line 59
    new-instance v5, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 60
    .line 61
    const/16 v6, 0x12d

    .line 62
    .line 63
    const-string v7, "AUTH_SA_ERROR"

    .line 64
    .line 65
    const/4 v8, 0x5

    .line 66
    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v5, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->AUTH_SA_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 70
    .line 71
    new-instance v6, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 72
    .line 73
    const/16 v7, 0x190

    .line 74
    .line 75
    const-string v8, "SAFETY_FILTER_ERROR"

    .line 76
    .line 77
    const/4 v9, 0x6

    .line 78
    invoke-direct {v6, v8, v9, v7}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v6, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SAFETY_FILTER_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 82
    .line 83
    new-instance v7, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 84
    .line 85
    const/16 v8, 0x191

    .line 86
    .line 87
    const-string v9, "SAFETY_FILTER_UNSUPPORTED_LANGUAGE_ERROR"

    .line 88
    .line 89
    const/4 v10, 0x7

    .line 90
    invoke-direct {v7, v9, v10, v8}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    sput-object v7, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SAFETY_FILTER_UNSUPPORTED_LANGUAGE_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 94
    .line 95
    new-instance v8, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 96
    .line 97
    const/16 v9, 0x192

    .line 98
    .line 99
    const-string v10, "SAFETY_FILTER_RECITATION_ERROR"

    .line 100
    .line 101
    const/16 v11, 0x8

    .line 102
    .line 103
    invoke-direct {v8, v10, v11, v9}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 104
    .line 105
    .line 106
    sput-object v8, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SAFETY_FILTER_RECITATION_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 107
    .line 108
    new-instance v9, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 109
    .line 110
    const/16 v10, 0x1f4

    .line 111
    .line 112
    const-string v11, "SERVER_ERROR"

    .line 113
    .line 114
    const/16 v12, 0x9

    .line 115
    .line 116
    invoke-direct {v9, v11, v12, v10}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 117
    .line 118
    .line 119
    sput-object v9, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SERVER_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 120
    .line 121
    new-instance v10, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 122
    .line 123
    const/16 v11, 0x1f5

    .line 124
    .line 125
    const-string v12, "SERVER_QUOTA_ERROR"

    .line 126
    .line 127
    const/16 v13, 0xa

    .line 128
    .line 129
    invoke-direct {v10, v12, v13, v11}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 130
    .line 131
    .line 132
    sput-object v10, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SERVER_QUOTA_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 133
    .line 134
    filled-new-array/range {v0 .. v10}, [Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 139
    .line 140
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->mError:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    .line 8
    .line 9
    return-object v0
.end method
