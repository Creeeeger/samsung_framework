.class public final enum Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final Companion:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel$Companion;

.field public static final enum DISMISS_BOUNCER:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final enum NONE:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final enum ONLY_WAKE:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final enum SHOW_BOUNCER:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final enum UNLOCK_COLLAPSING:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final enum WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final enum WAKE_AND_UNLOCK_FROM_DREAM:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final enum WAKE_AND_UNLOCK_PULSING:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final wakeAndUnlockModes:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->NONE:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 10
    .line 11
    new-instance v8, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 12
    .line 13
    const-string v1, "WAKE_AND_UNLOCK"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v8, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v8, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 20
    .line 21
    new-instance v9, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 22
    .line 23
    const-string v1, "WAKE_AND_UNLOCK_PULSING"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v9, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v9, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->WAKE_AND_UNLOCK_PULSING:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 30
    .line 31
    new-instance v3, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 32
    .line 33
    const-string v1, "SHOW_BOUNCER"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v3, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->SHOW_BOUNCER:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 40
    .line 41
    new-instance v4, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 42
    .line 43
    const-string v1, "ONLY_WAKE"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v4, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->ONLY_WAKE:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 50
    .line 51
    new-instance v5, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 52
    .line 53
    const-string v1, "UNLOCK_COLLAPSING"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v5, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->UNLOCK_COLLAPSING:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 60
    .line 61
    new-instance v6, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 62
    .line 63
    const-string v1, "DISMISS_BOUNCER"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v6, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->DISMISS_BOUNCER:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 70
    .line 71
    new-instance v10, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 72
    .line 73
    const-string v1, "WAKE_AND_UNLOCK_FROM_DREAM"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v10, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v10, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->WAKE_AND_UNLOCK_FROM_DREAM:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 80
    .line 81
    move-object v1, v8

    .line 82
    move-object v2, v9

    .line 83
    move-object v7, v10

    .line 84
    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sput-object v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->$VALUES:[Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 89
    .line 90
    new-instance v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel$Companion;

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    .line 95
    .line 96
    sput-object v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->Companion:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel$Companion;

    .line 97
    .line 98
    filled-new-array {v8, v10, v9}, [Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    sput-object v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->wakeAndUnlockModes:Ljava/util/Set;

    .line 107
    .line 108
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->$VALUES:[Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 8
    .line 9
    return-object v0
.end method
