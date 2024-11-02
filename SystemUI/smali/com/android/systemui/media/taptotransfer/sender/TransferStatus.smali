.class public final enum Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

.field public static final enum FAILED:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

.field public static final enum IN_PROGRESS:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

.field public static final enum NOT_STARTED:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

.field public static final enum SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

.field public static final enum TOO_FAR:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;


# instance fields
.field private final vibrationEffect:Landroid/os/VibrationEffect;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v5, "NOT_STARTED"

    .line 20
    .line 21
    invoke-direct {v0, v5, v4, v1}, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->NOT_STARTED:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 25
    .line 26
    new-instance v1, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const/4 v6, 0x4

    .line 33
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const v4, 0x3f333333    # 0.7f

    .line 38
    .line 39
    .line 40
    const/16 v5, 0x46

    .line 41
    .line 42
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "IN_PROGRESS"

    .line 51
    .line 52
    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V

    .line 53
    .line 54
    .line 55
    sput-object v1, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->IN_PROGRESS:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 56
    .line 57
    new-instance v3, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 58
    .line 59
    const-string v6, "SUCCEEDED"

    .line 60
    .line 61
    const/4 v7, 0x2

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x1

    .line 64
    const/4 v10, 0x0

    .line 65
    move-object v5, v3

    .line 66
    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    .line 68
    .line 69
    sput-object v3, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 70
    .line 71
    new-instance v4, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 72
    .line 73
    const/4 v5, 0x3

    .line 74
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v6, "FAILED"

    .line 79
    .line 80
    invoke-direct {v4, v6, v5, v2}, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V

    .line 81
    .line 82
    .line 83
    sput-object v4, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->FAILED:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 84
    .line 85
    new-instance v2, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 86
    .line 87
    const-string v8, "TOO_FAR"

    .line 88
    .line 89
    const/4 v9, 0x4

    .line 90
    const/4 v11, 0x1

    .line 91
    const/4 v12, 0x0

    .line 92
    move-object v7, v2

    .line 93
    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    .line 95
    .line 96
    sput-object v2, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->TOO_FAR:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 97
    .line 98
    filled-new-array {v0, v1, v3, v4, v2}, [Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->$VALUES:[Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 103
    .line 104
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibrationEffect;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->vibrationEffect:Landroid/os/VibrationEffect;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/os/VibrationEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;-><init>(Ljava/lang/String;ILandroid/os/VibrationEffect;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->$VALUES:[Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getVibrationEffect()Landroid/os/VibrationEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->vibrationEffect:Landroid/os/VibrationEffect;

    .line 2
    .line 3
    return-object p0
.end method
