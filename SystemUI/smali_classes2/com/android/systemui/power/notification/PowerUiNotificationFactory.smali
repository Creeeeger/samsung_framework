.class public final Lcom/android/systemui/power/notification/PowerUiNotificationFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNotification(ILandroid/content/Context;)Lcom/android/systemui/power/notification/PowerUiNotification;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    new-instance p0, Lcom/android/systemui/power/notification/OptimizationChargingNotification;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/OptimizationChargingNotification;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_1
    new-instance p0, Lcom/android/systemui/power/notification/BatteryProtectionNotification;

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/BatteryProtectionNotification;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_2
    new-instance p0, Lcom/android/systemui/power/notification/AbnormalPadNotification;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/AbnormalPadNotification;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_3
    new-instance p0, Lcom/android/systemui/power/notification/SafeModeNotification;

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/SafeModeNotification;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_4
    new-instance p0, Lcom/android/systemui/power/notification/OverheatNotification;

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/OverheatNotification;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_5
    new-instance p0, Lcom/android/systemui/power/notification/HealthInterruptionNotification;

    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/HealthInterruptionNotification;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_6
    new-instance p0, Lcom/android/systemui/power/notification/BatterySwellingNotification;

    .line 43
    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/BatterySwellingNotification;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_7
    new-instance p0, Lcom/android/systemui/power/notification/IncompatibleChargerNotification;

    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/IncompatibleChargerNotification;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_8
    new-instance p0, Lcom/android/systemui/power/notification/ChargingNotification;

    .line 55
    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/ChargingNotification;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_9
    new-instance p0, Lcom/android/systemui/power/notification/LowBatteryNotification;

    .line 61
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/LowBatteryNotification;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-object p0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
