.class final enum Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final enum DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final enum SIMINFO1:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final enum SIMINFO2:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final enum SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final enum VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;


# instance fields
.field private final index:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 2
    .line 3
    const-string v1, "VOICE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 10
    .line 11
    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 12
    .line 13
    const-string v2, "SMS"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 20
    .line 21
    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 22
    .line 23
    const-string v3, "DATA"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 30
    .line 31
    new-instance v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 32
    .line 33
    const-string v4, "SIMINFO1"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v5}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO1:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 40
    .line 41
    new-instance v4, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 42
    .line 43
    const-string v5, "SIMINFO2"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6, v6}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO2:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 50
    .line 51
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->$VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 56
    .line 57
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
    iput p3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->index:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->$VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->index:I

    .line 2
    .line 3
    return p0
.end method
