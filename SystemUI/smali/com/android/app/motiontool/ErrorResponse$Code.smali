.class public final enum Lcom/android/app/motiontool/ErrorResponse$Code;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/app/motiontool/ErrorResponse$Code;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/app/motiontool/ErrorResponse$Code;

.field public static final enum INVALID_REQUEST:Lcom/android/app/motiontool/ErrorResponse$Code;

.field public static final enum UNKNOWN:Lcom/android/app/motiontool/ErrorResponse$Code;

.field public static final enum UNKNOWN_TRACE_ID:Lcom/android/app/motiontool/ErrorResponse$Code;

.field public static final enum WINDOW_NOT_FOUND:Lcom/android/app/motiontool/ErrorResponse$Code;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/android/app/motiontool/ErrorResponse$Code;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/app/motiontool/ErrorResponse$Code;->UNKNOWN:Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 10
    .line 11
    new-instance v1, Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 12
    .line 13
    const-string v2, "INVALID_REQUEST"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/android/app/motiontool/ErrorResponse$Code;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/app/motiontool/ErrorResponse$Code;->INVALID_REQUEST:Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 20
    .line 21
    new-instance v2, Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 22
    .line 23
    const-string v3, "UNKNOWN_TRACE_ID"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Lcom/android/app/motiontool/ErrorResponse$Code;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/app/motiontool/ErrorResponse$Code;->UNKNOWN_TRACE_ID:Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 30
    .line 31
    new-instance v3, Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 32
    .line 33
    const-string v4, "WINDOW_NOT_FOUND"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v5}, Lcom/android/app/motiontool/ErrorResponse$Code;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/android/app/motiontool/ErrorResponse$Code;->WINDOW_NOT_FOUND:Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 40
    .line 41
    filled-new-array {v0, v1, v2, v3}, [Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/app/motiontool/ErrorResponse$Code;->$VALUES:[Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 46
    .line 47
    new-instance v0, Lcom/android/app/motiontool/ErrorResponse$Code$1;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/android/app/motiontool/ErrorResponse$Code$1;-><init>()V

    .line 50
    .line 51
    .line 52
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
    iput p3, p0, Lcom/android/app/motiontool/ErrorResponse$Code;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/app/motiontool/ErrorResponse$Code;
    .locals 1

    .line 1
    const-class v0, Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/app/motiontool/ErrorResponse$Code;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/motiontool/ErrorResponse$Code;->$VALUES:[Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/app/motiontool/ErrorResponse$Code;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/app/motiontool/ErrorResponse$Code;->value:I

    .line 2
    .line 3
    return p0
.end method
