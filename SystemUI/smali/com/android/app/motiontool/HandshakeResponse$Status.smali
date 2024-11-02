.class public final enum Lcom/android/app/motiontool/HandshakeResponse$Status;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/app/motiontool/HandshakeResponse$Status;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/app/motiontool/HandshakeResponse$Status;

.field public static final enum OK:Lcom/android/app/motiontool/HandshakeResponse$Status;

.field public static final enum WINDOW_NOT_FOUND:Lcom/android/app/motiontool/HandshakeResponse$Status;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/app/motiontool/HandshakeResponse$Status;

    .line 2
    .line 3
    const-string v1, "OK"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/android/app/motiontool/HandshakeResponse$Status;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/app/motiontool/HandshakeResponse$Status;->OK:Lcom/android/app/motiontool/HandshakeResponse$Status;

    .line 11
    .line 12
    new-instance v1, Lcom/android/app/motiontool/HandshakeResponse$Status;

    .line 13
    .line 14
    const-string v2, "WINDOW_NOT_FOUND"

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lcom/android/app/motiontool/HandshakeResponse$Status;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/android/app/motiontool/HandshakeResponse$Status;->WINDOW_NOT_FOUND:Lcom/android/app/motiontool/HandshakeResponse$Status;

    .line 21
    .line 22
    filled-new-array {v0, v1}, [Lcom/android/app/motiontool/HandshakeResponse$Status;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/app/motiontool/HandshakeResponse$Status;->$VALUES:[Lcom/android/app/motiontool/HandshakeResponse$Status;

    .line 27
    .line 28
    new-instance v0, Lcom/android/app/motiontool/HandshakeResponse$Status$1;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/android/app/motiontool/HandshakeResponse$Status$1;-><init>()V

    .line 31
    .line 32
    .line 33
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
    iput p3, p0, Lcom/android/app/motiontool/HandshakeResponse$Status;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/app/motiontool/HandshakeResponse$Status;
    .locals 1

    .line 1
    const-class v0, Lcom/android/app/motiontool/HandshakeResponse$Status;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/app/motiontool/HandshakeResponse$Status;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/app/motiontool/HandshakeResponse$Status;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/motiontool/HandshakeResponse$Status;->$VALUES:[Lcom/android/app/motiontool/HandshakeResponse$Status;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/app/motiontool/HandshakeResponse$Status;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/app/motiontool/HandshakeResponse$Status;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/app/motiontool/HandshakeResponse$Status;->value:I

    .line 2
    .line 3
    return p0
.end method
