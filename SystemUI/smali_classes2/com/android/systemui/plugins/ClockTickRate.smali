.class public final enum Lcom/android/systemui/plugins/ClockTickRate;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/plugins/ClockTickRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/plugins/ClockTickRate;

.field public static final enum PER_FRAME:Lcom/android/systemui/plugins/ClockTickRate;

.field public static final enum PER_MINUTE:Lcom/android/systemui/plugins/ClockTickRate;

.field public static final enum PER_SECOND:Lcom/android/systemui/plugins/ClockTickRate;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/android/systemui/plugins/ClockTickRate;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/plugins/ClockTickRate;->PER_MINUTE:Lcom/android/systemui/plugins/ClockTickRate;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/plugins/ClockTickRate;->PER_SECOND:Lcom/android/systemui/plugins/ClockTickRate;

    .line 4
    .line 5
    sget-object v2, Lcom/android/systemui/plugins/ClockTickRate;->PER_FRAME:Lcom/android/systemui/plugins/ClockTickRate;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/plugins/ClockTickRate;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/ClockTickRate;

    .line 2
    .line 3
    const-string v1, "PER_MINUTE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/plugins/ClockTickRate;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/plugins/ClockTickRate;->PER_MINUTE:Lcom/android/systemui/plugins/ClockTickRate;

    .line 11
    .line 12
    new-instance v0, Lcom/android/systemui/plugins/ClockTickRate;

    .line 13
    .line 14
    const-string v1, "PER_SECOND"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v0, v1, v4, v4}, Lcom/android/systemui/plugins/ClockTickRate;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/android/systemui/plugins/ClockTickRate;->PER_SECOND:Lcom/android/systemui/plugins/ClockTickRate;

    .line 21
    .line 22
    new-instance v0, Lcom/android/systemui/plugins/ClockTickRate;

    .line 23
    .line 24
    const-string v1, "PER_FRAME"

    .line 25
    .line 26
    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/plugins/ClockTickRate;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/android/systemui/plugins/ClockTickRate;->PER_FRAME:Lcom/android/systemui/plugins/ClockTickRate;

    .line 30
    .line 31
    invoke-static {}, Lcom/android/systemui/plugins/ClockTickRate;->$values()[Lcom/android/systemui/plugins/ClockTickRate;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/systemui/plugins/ClockTickRate;->$VALUES:[Lcom/android/systemui/plugins/ClockTickRate;

    .line 36
    .line 37
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
    iput p3, p0, Lcom/android/systemui/plugins/ClockTickRate;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/plugins/ClockTickRate;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/plugins/ClockTickRate;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/plugins/ClockTickRate;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/plugins/ClockTickRate;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/plugins/ClockTickRate;->$VALUES:[Lcom/android/systemui/plugins/ClockTickRate;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/plugins/ClockTickRate;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/ClockTickRate;->value:I

    .line 2
    .line 3
    return p0
.end method
