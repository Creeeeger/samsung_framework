.class public final enum Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

.field public static final enum LOW_BATTERY_NOTIFICATION_CANCEL:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

.field public static final enum LOW_BATTERY_NOTIFICATION_SETTINGS:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

.field public static final enum LOW_BATTERY_NOTIFICATION_TURN_ON:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

.field public static final enum SAVER_CONFIRM_CANCEL:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

.field public static final enum SAVER_CONFIRM_DIALOG:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

.field public static final enum SAVER_CONFIRM_DISMISS:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

.field public static final enum SAVER_CONFIRM_OK:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 2
    .line 3
    const/16 v1, 0x418

    .line 4
    .line 5
    const-string v2, "LOW_BATTERY_NOTIFICATION"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 12
    .line 13
    const/16 v2, 0x419

    .line 14
    .line 15
    const-string v3, "LOW_BATTERY_NOTIFICATION_TURN_ON"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->LOW_BATTERY_NOTIFICATION_TURN_ON:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 22
    .line 23
    new-instance v2, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 24
    .line 25
    const/16 v3, 0x41a

    .line 26
    .line 27
    const-string v4, "LOW_BATTERY_NOTIFICATION_CANCEL"

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->LOW_BATTERY_NOTIFICATION_CANCEL:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 34
    .line 35
    new-instance v3, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 36
    .line 37
    const/16 v4, 0x41b

    .line 38
    .line 39
    const-string v5, "LOW_BATTERY_NOTIFICATION_SETTINGS"

    .line 40
    .line 41
    const/4 v6, 0x3

    .line 42
    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    sput-object v3, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->LOW_BATTERY_NOTIFICATION_SETTINGS:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 46
    .line 47
    new-instance v4, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 48
    .line 49
    const/16 v5, 0x41c

    .line 50
    .line 51
    const-string v6, "SAVER_CONFIRM_DIALOG"

    .line 52
    .line 53
    const/4 v7, 0x4

    .line 54
    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    sput-object v4, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->SAVER_CONFIRM_DIALOG:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 58
    .line 59
    new-instance v5, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 60
    .line 61
    const/16 v6, 0x41d

    .line 62
    .line 63
    const-string v7, "SAVER_CONFIRM_OK"

    .line 64
    .line 65
    const/4 v8, 0x5

    .line 66
    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v5, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->SAVER_CONFIRM_OK:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 70
    .line 71
    new-instance v6, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 72
    .line 73
    const/16 v7, 0x41e

    .line 74
    .line 75
    const-string v8, "SAVER_CONFIRM_CANCEL"

    .line 76
    .line 77
    const/4 v9, 0x6

    .line 78
    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v6, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->SAVER_CONFIRM_CANCEL:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 82
    .line 83
    new-instance v7, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 84
    .line 85
    const/16 v8, 0x41f

    .line 86
    .line 87
    const-string v9, "SAVER_CONFIRM_DISMISS"

    .line 88
    .line 89
    const/4 v10, 0x7

    .line 90
    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    sput-object v7, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->SAVER_CONFIRM_DISMISS:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 94
    .line 95
    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sput-object v0, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->$VALUES:[Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 100
    .line 101
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
    iput p3, p0, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->mId:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->$VALUES:[Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->mId:I

    .line 2
    .line 3
    return p0
.end method
