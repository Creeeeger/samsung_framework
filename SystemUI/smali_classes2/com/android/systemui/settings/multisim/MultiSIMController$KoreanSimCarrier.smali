.class final enum Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;


# instance fields
.field private final mNumeric:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    .line 2
    .line 3
    const-string v1, "45008"

    .line 4
    .line 5
    const-string v2, "KT"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    .line 12
    .line 13
    const-string v2, "45006"

    .line 14
    .line 15
    const-string v3, "LG_U_PLUS"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    filled-new-array {v0, v1}, [Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;->$VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;->mNumeric:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;->$VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumeric()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$KoreanSimCarrier;->mNumeric:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
