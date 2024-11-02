.class public final Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;
.super Landroidx/activity/ComponentActivity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final accessibilityDelegate:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$accessibilityDelegate$1;

.field public final editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

.field public onOffSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 7
    .line 8
    new-instance p1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$accessibilityDelegate$1;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$accessibilityDelegate$1;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;->accessibilityDelegate:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$accessibilityDelegate$1;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d02e3

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->isPhoneLandscape()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const p1, 0x7f0a005c

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const v1, 0x7f0705a2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$onCreate$1;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$onCreate$1;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    const p1, 0x7f0a005b

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$onCreate$2$1;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$onCreate$2$1;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    const v0, 0x7f0a0063

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    .line 80
    const v1, 0x7f130d45

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    .line 85
    .line 86
    const v0, 0x7f0a0786

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    .line 94
    .line 95
    iput-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;->onOffSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isExpandQsAtOnceEnabled()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    iget-object v2, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;->onOffSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 111
    .line 112
    if-eqz v2, :cond_2

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-eqz v1, :cond_1

    .line 119
    .line 120
    const v1, 0x7f130d48

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    const v1, 0x7f130d47

    .line 125
    .line 126
    .line 127
    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    new-instance v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$onCreate$5;

    .line 135
    .line 136
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$onCreate$5;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;->accessibilityDelegate:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$accessibilityDelegate$1;

    .line 147
    .line 148
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    const/high16 v0, 0x1000000

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
