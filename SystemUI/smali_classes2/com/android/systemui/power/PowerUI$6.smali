.class public final Lcom/android/systemui/power/PowerUI$6;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2
    .line 3
    iget v0, p1, Lcom/android/systemui/power/PowerUI;->mProtectBatteryValue:I

    .line 4
    .line 5
    iget-object v1, p1, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/android/systemui/power/PowerUtils;->getProtectBatteryValue(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput v1, p1, Lcom/android/systemui/power/PowerUI;->mProtectBatteryValue:I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 14
    .line 15
    iget v1, p1, Lcom/android/systemui/power/PowerUI;->mProtectBatteryValue:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eq v1, v3, :cond_1

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-ne v1, v4, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    move v1, v3

    .line 28
    :goto_1
    iput-boolean v1, p1, Lcom/android/systemui/power/PowerUI;->mIsProtectingBatteryCutOffSettingEnabled:Z

    .line 29
    .line 30
    sget-boolean v1, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION_NOTIFICATION:Z

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    if-eqz v1, :cond_7

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 36
    .line 37
    const/16 v1, 0x9

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 43
    .line 44
    iget v1, p1, Lcom/android/systemui/power/PowerUI;->mProtectBatteryValue:I

    .line 45
    .line 46
    const/4 v5, 0x3

    .line 47
    if-ne v0, v4, :cond_2

    .line 48
    .line 49
    if-eq v1, v5, :cond_6

    .line 50
    .line 51
    :cond_2
    if-ne v0, v5, :cond_3

    .line 52
    .line 53
    if-eq v1, v4, :cond_6

    .line 54
    .line 55
    :cond_3
    if-nez v0, :cond_4

    .line 56
    .line 57
    if-eq v1, v5, :cond_6

    .line 58
    .line 59
    :cond_4
    if-nez v0, :cond_5

    .line 60
    .line 61
    if-ne v1, v4, :cond_5

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    move v3, v2

    .line 65
    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/android/systemui/power/PowerUI;->checkBatteryProtectionNotification()V

    .line 68
    .line 69
    .line 70
    :cond_7
    sget-boolean p1, Lcom/android/systemui/PowerUiRune;->ADAPTIVE_PROTECTION_NOTIFICATION:Z

    .line 71
    .line 72
    if-eqz p1, :cond_8

    .line 73
    .line 74
    if-ne v0, v4, :cond_8

    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 77
    .line 78
    iget v0, p1, Lcom/android/systemui/power/PowerUI;->mProtectBatteryValue:I

    .line 79
    .line 80
    if-eq v0, v4, :cond_8

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/android/systemui/power/PowerUI;->dismissAdaptiveProtectionNotification()V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 86
    .line 87
    iput-boolean v2, p1, Lcom/android/systemui/power/PowerUI;->mIsAfterAdaptiveProtection:Z

    .line 88
    .line 89
    :cond_8
    sget-boolean p1, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

    .line 90
    .line 91
    if-eqz p1, :cond_9

    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 94
    .line 95
    invoke-static {p0}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mcheckTurnOnProtectBatteryByLongTermCharge(Lcom/android/systemui/power/PowerUI;)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_9
    sget-boolean p1, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA:Z

    .line 100
    .line 101
    if-eqz p1, :cond_a

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 104
    .line 105
    invoke-static {p0}, Lcom/android/systemui/power/PowerUI;->-$$Nest$mcheckTurnOnProtectBatteryByLongTa(Lcom/android/systemui/power/PowerUI;)V

    .line 106
    .line 107
    .line 108
    :cond_a
    :goto_3
    return-void
.end method
