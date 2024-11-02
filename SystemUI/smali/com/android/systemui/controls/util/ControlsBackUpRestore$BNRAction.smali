.class public final enum Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

.field public static final Companion:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction$Companion;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    .line 2
    .line 3
    const-string v1, "BACKUP"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    const-string v3, "BACKUP_CANCEL"

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;-><init>(Ljava/lang/String;II)V

    .line 16
    .line 17
    .line 18
    filled-new-array {v0, v1}, [Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;->$VALUES:[Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    .line 23
    .line 24
    new-instance v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;->Companion:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction$Companion;

    .line 31
    .line 32
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
    iput p3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;->$VALUES:[Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;->value:I

    .line 2
    .line 3
    return p0
.end method
