.class public final enum Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCodes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum DEVICE_NOT_PROVISIONED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum DEVICE_PROVISION_FAILED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_INCOMPATIBLE_DEVICE_MODEL:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_INTERNAL_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_INVALID_ARGUMENTS:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_MODEL_KEY_REVOKED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_MODEL_PACKAGE_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_MODEL_POLICY_VIOLATION:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_UNSUPPORTED_COMPUTEUNIT:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_UNSUPPORTED_MODEL_TYPE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_UNSUPPORTED_OP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum SUCCESS:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 14

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->SUCCESS:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->DEVICE_NOT_PROVISIONED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 6
    .line 7
    sget-object v3, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->DEVICE_PROVISION_FAILED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 8
    .line 9
    sget-object v4, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 10
    .line 11
    sget-object v5, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_INTERNAL_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 12
    .line 13
    sget-object v6, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNSUPPORTED_OP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 14
    .line 15
    sget-object v7, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_MODEL_POLICY_VIOLATION:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 16
    .line 17
    sget-object v8, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_MODEL_PACKAGE_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 18
    .line 19
    sget-object v9, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNSUPPORTED_COMPUTEUNIT:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 20
    .line 21
    sget-object v10, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNSUPPORTED_MODEL_TYPE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 22
    .line 23
    sget-object v11, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_INVALID_ARGUMENTS:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 24
    .line 25
    sget-object v12, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_MODEL_KEY_REVOKED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 26
    .line 27
    sget-object v13, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_INCOMPATIBLE_DEVICE_MODEL:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 28
    .line 29
    filled-new-array/range {v0 .. v13}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "KNOX_AI_UNKNOWN_ERROR"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 11
    .line 12
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 13
    .line 14
    const-string v1, "SUCCESS"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->SUCCESS:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 21
    .line 22
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 23
    .line 24
    const-string v1, "DEVICE_NOT_PROVISIONED"

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->DEVICE_NOT_PROVISIONED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 31
    .line 32
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 33
    .line 34
    const-string v1, "DEVICE_PROVISION_FAILED"

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->DEVICE_PROVISION_FAILED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 41
    .line 42
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 43
    .line 44
    const-string v1, "KNOX_AI_SERVICE_FAILURE"

    .line 45
    .line 46
    const/4 v4, 0x4

    .line 47
    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 51
    .line 52
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 53
    .line 54
    const-string v1, "KNOX_AI_INTERNAL_ERROR"

    .line 55
    .line 56
    const/4 v2, 0x5

    .line 57
    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_INTERNAL_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 61
    .line 62
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 63
    .line 64
    const-string v1, "KNOX_AI_UNSUPPORTED_OP"

    .line 65
    .line 66
    const/4 v4, 0x6

    .line 67
    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNSUPPORTED_OP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 71
    .line 72
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 73
    .line 74
    const-string v1, "KNOX_AI_MODEL_POLICY_VIOLATION"

    .line 75
    .line 76
    const/4 v2, 0x7

    .line 77
    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_MODEL_POLICY_VIOLATION:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 81
    .line 82
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 83
    .line 84
    const-string v1, "KNOX_AI_MODEL_PACKAGE_ERROR"

    .line 85
    .line 86
    const/16 v4, 0x8

    .line 87
    .line 88
    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 89
    .line 90
    .line 91
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_MODEL_PACKAGE_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 92
    .line 93
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 94
    .line 95
    const-string v1, "KNOX_AI_UNSUPPORTED_COMPUTEUNIT"

    .line 96
    .line 97
    const/16 v2, 0x9

    .line 98
    .line 99
    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 100
    .line 101
    .line 102
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNSUPPORTED_COMPUTEUNIT:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 103
    .line 104
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 105
    .line 106
    const-string v1, "KNOX_AI_UNSUPPORTED_MODEL_TYPE"

    .line 107
    .line 108
    const/16 v4, 0xa

    .line 109
    .line 110
    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 111
    .line 112
    .line 113
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNSUPPORTED_MODEL_TYPE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 114
    .line 115
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 116
    .line 117
    const-string v1, "KNOX_AI_INVALID_ARGUMENTS"

    .line 118
    .line 119
    const/16 v2, 0xb

    .line 120
    .line 121
    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 122
    .line 123
    .line 124
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_INVALID_ARGUMENTS:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 125
    .line 126
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 127
    .line 128
    const-string v1, "KNOX_AI_MODEL_KEY_REVOKED"

    .line 129
    .line 130
    const/16 v4, 0xc

    .line 131
    .line 132
    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 133
    .line 134
    .line 135
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_MODEL_KEY_REVOKED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 136
    .line 137
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 138
    .line 139
    const-string v1, "KNOX_AI_INCOMPATIBLE_DEVICE_MODEL"

    .line 140
    .line 141
    const/16 v2, 0xd

    .line 142
    .line 143
    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 144
    .line 145
    .line 146
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_INCOMPATIBLE_DEVICE_MODEL:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 147
    .line 148
    invoke-static {}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->$values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 153
    .line 154
    new-instance v0, Ljava/util/HashMap;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .line 158
    .line 159
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->valueMap:Ljava/util/Map;

    .line 160
    .line 161
    invoke-static {}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    array-length v1, v0

    .line 166
    :goto_0
    if-ge v3, v1, :cond_0

    .line 167
    .line 168
    aget-object v2, v0, v3

    .line 169
    .line 170
    sget-object v4, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->valueMap:Ljava/util/Map;

    .line 171
    .line 172
    iget v5, v2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->value:I

    .line 173
    .line 174
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    add-int/lit8 v3, v3, 0x1

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_0
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
    iput p3, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->valueMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 12
    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->value:I

    .line 2
    .line 3
    return p0
.end method
