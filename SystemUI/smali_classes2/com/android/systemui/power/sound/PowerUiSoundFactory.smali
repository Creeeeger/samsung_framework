.class public final Lcom/android/systemui/power/sound/PowerUiSoundFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPowerUiSound(ILandroid/content/Context;)Lcom/android/systemui/power/sound/PowerUiSound;
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p0, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    if-eq p0, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x6

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x7

    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/android/systemui/power/sound/ChargingSound;

    .line 17
    .line 18
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/power/sound/ChargingSound;-><init>(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/android/systemui/power/sound/UsbDamageCautionSound;

    .line 23
    .line 24
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/power/sound/UsbDamageCautionSound;-><init>(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Lcom/android/systemui/power/sound/WaterCautionSound;

    .line 29
    .line 30
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/power/sound/WaterCautionSound;-><init>(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    new-instance v0, Lcom/android/systemui/power/sound/TemperatureLimitSound;

    .line 35
    .line 36
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/power/sound/TemperatureLimitSound;-><init>(Landroid/content/Context;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    new-instance v0, Lcom/android/systemui/power/sound/BatteryCautionSound;

    .line 41
    .line 42
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/power/sound/BatteryCautionSound;-><init>(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    new-instance v0, Lcom/android/systemui/power/sound/LowBatterySound;

    .line 47
    .line 48
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/power/sound/LowBatterySound;-><init>(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-object v0
.end method
