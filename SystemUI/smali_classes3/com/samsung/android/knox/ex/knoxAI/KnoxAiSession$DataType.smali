.class public final enum Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum BYTE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum FLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum FLOAT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum INT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum INT64:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum SEQUENCE_MAP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

.field public static final enum STRING:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;


# instance fields
.field private final value:B


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->FLOAT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->FLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->BYTE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 6
    .line 7
    sget-object v3, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->INT64:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 8
    .line 9
    sget-object v4, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->STRING:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 10
    .line 11
    sget-object v5, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->SEQUENCE_MAP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 12
    .line 13
    sget-object v6, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->INT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 2
    .line 3
    const-string v1, "FLOAT32"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->FLOAT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 12
    .line 13
    const-string v1, "FLOAT16"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->FLOAT16:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 22
    .line 23
    const-string v1, "BYTE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->BYTE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 30
    .line 31
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 32
    .line 33
    const-string v1, "INT64"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->INT64:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 40
    .line 41
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 42
    .line 43
    const-string v1, "STRING"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->STRING:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 50
    .line 51
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 52
    .line 53
    const-string v1, "SEQUENCE_MAP"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->SEQUENCE_MAP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 60
    .line 61
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 62
    .line 63
    const-string v1, "INT32"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->INT32:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 70
    .line 71
    invoke-static {}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->$values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 76
    .line 77
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
    int-to-byte p1, p3

    .line 5
    iput-byte p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->value:B

    .line 6
    .line 7
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;->value:B

    .line 2
    .line 3
    return p0
.end method
