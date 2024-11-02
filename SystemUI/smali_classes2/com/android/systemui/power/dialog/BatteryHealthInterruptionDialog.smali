.class public final Lcom/android/systemui/power/dialog/BatteryHealthInterruptionDialog;
.super Lcom/android/systemui/power/dialog/PowerUiDialog;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBatteryHealth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/power/dialog/PowerUiDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final checkCondition()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/power/dialog/BatteryHealthInterruptionDialog;->mBatteryHealth:I

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const-string p0, "PowerUI.Dialog.BatteryHealthInterruption"

    .line 11
    .line 12
    const-string/jumbo v0, "status is NotCharging but health is wrong value"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final getDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 8

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const v2, 0x7f140823

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v3, 0x7f0d029b

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v3, 0x7f0a075f

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/widget/TextView;

    .line 31
    .line 32
    iget v5, p0, Lcom/android/systemui/power/dialog/BatteryHealthInterruptionDialog;->mBatteryHealth:I

    .line 33
    .line 34
    const/4 v6, 0x6

    .line 35
    if-ne v5, v6, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    const v5, 0x7f1301c1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const v5, 0x7f1301c0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    const v5, 0x7f1301be

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const v5, 0x7f1301bd

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 84
    .line 85
    invoke-direct {v3, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 86
    .line 87
    .line 88
    iget-object v2, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 89
    .line 90
    const/4 v5, 0x0

    .line 91
    iput-boolean v5, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 92
    .line 93
    iget v7, p0, Lcom/android/systemui/power/dialog/BatteryHealthInterruptionDialog;->mBatteryHealth:I

    .line 94
    .line 95
    if-ne v7, v6, :cond_3

    .line 96
    .line 97
    const v7, 0x7f1301c6

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    const v7, 0x7f1301bf

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    :goto_1
    iput-object v7, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 113
    .line 114
    iget v2, p0, Lcom/android/systemui/power/dialog/BatteryHealthInterruptionDialog;->mBatteryHealth:I

    .line 115
    .line 116
    if-ne v2, v6, :cond_4

    .line 117
    .line 118
    const v2, 0x7f1304ab

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v3, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    iget p0, p0, Lcom/android/systemui/power/dialog/BatteryHealthInterruptionDialog;->mBatteryHealth:I

    .line 129
    .line 130
    const/16 v1, 0x8

    .line 131
    .line 132
    if-ne p0, v1, :cond_5

    .line 133
    .line 134
    const p0, 0x7f0a045a

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    check-cast p0, Landroid/widget/ImageView;

    .line 142
    .line 143
    const v1, 0x7f080b2c

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    :cond_5
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const/16 v1, 0x7d9

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 166
    .line 167
    .line 168
    return-object p0
.end method

.method public final setInformation(Lcom/android/systemui/power/SecBatteryStatsSnapshot;)V
    .locals 0

    .line 1
    iget p1, p1, Lcom/android/systemui/power/SecBatteryStatsSnapshot;->batteryHealth:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/systemui/power/dialog/BatteryHealthInterruptionDialog;->mBatteryHealth:I

    .line 4
    .line 5
    return-void
.end method
