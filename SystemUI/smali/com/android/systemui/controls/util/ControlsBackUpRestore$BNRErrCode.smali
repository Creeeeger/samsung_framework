.class public final enum Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

.field public static final enum INVALID_DATA:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

.field public static final enum SUCCESS:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 2
    .line 3
    const-string v1, "SUCCESS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;->SUCCESS:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 10
    .line 11
    new-instance v1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 12
    .line 13
    const-string v2, "UNKNOWN_ERROR"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 20
    .line 21
    const-string v3, "STORAGE_FULL"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4, v4}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;-><init>(Ljava/lang/String;II)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 28
    .line 29
    const-string v4, "INVALID_DATA"

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    invoke-direct {v3, v4, v5, v5}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;->INVALID_DATA:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 36
    .line 37
    new-instance v4, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 38
    .line 39
    const-string v5, "PERMISSION_FAIL"

    .line 40
    .line 41
    const/4 v6, 0x4

    .line 42
    invoke-direct {v4, v5, v6, v6}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 46
    .line 47
    const-string v6, "LOCKED"

    .line 48
    .line 49
    const/4 v7, 0x5

    .line 50
    invoke-direct {v5, v6, v7, v7}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;-><init>(Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    new-instance v6, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 54
    .line 55
    const-string v7, "PARTIAL_SUCCESS"

    .line 56
    .line 57
    const/4 v8, 0x6

    .line 58
    invoke-direct {v6, v7, v8, v8}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    filled-new-array/range {v0 .. v6}, [Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;->$VALUES:[Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 66
    .line 67
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
    iput p3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;->$VALUES:[Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;->value:I

    .line 2
    .line 3
    return p0
.end method
