.class public final Lcom/android/systemui/battery/SamsungBatteryState;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BATTERY_HEALTH_OVERHEAT_LIMIT:I


# instance fields
.field public final batteryHealth:I

.field public final batteryOnline:I

.field public final batteryStatus:I

.field public final charging:Z

.field public final isDirectPowerMode:Z

.field public final level:I

.field public final pluggedIn:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/battery/SamsungBatteryState$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/battery/SamsungBatteryState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    sput v0, Lcom/android/systemui/battery/SamsungBatteryState;->BATTERY_HEALTH_OVERHEAT_LIMIT:I

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/battery/SamsungBatteryState;-><init>(IZZIIIZ)V

    return-void
.end method

.method public constructor <init>(IZZIIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/battery/SamsungBatteryState;->pluggedIn:Z

    .line 4
    iput-boolean p3, p0, Lcom/android/systemui/battery/SamsungBatteryState;->charging:Z

    .line 5
    iput p4, p0, Lcom/android/systemui/battery/SamsungBatteryState;->batteryStatus:I

    .line 6
    iput p5, p0, Lcom/android/systemui/battery/SamsungBatteryState;->batteryHealth:I

    .line 7
    iput p6, p0, Lcom/android/systemui/battery/SamsungBatteryState;->batteryOnline:I

    .line 8
    iput-boolean p7, p0, Lcom/android/systemui/battery/SamsungBatteryState;->isDirectPowerMode:Z

    return-void
.end method
