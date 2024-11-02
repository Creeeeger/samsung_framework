.class public Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;
.super Landroid/app/Activity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# static fields
.field public static final BRIGHTNESS_MODE_URI:Landroid/net/Uri;


# instance fields
.field public mAutoBrightnessContainer:Landroid/widget/LinearLayout;

.field public mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field public mBackButton:Landroid/widget/ImageView;

.field public mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;

.field public mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

.field public mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

.field public final mDeviceStateCallback:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$1;

.field public mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public final mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$5;

.field public mIsFlexMode:Z

.field public mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mSubBrightnessDetail:Landroid/widget/LinearLayout;

.field public mSubscreenBrightnessController:Lcom/android/systemui/qp/SubscreenBrightnessController;

.field public mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public static -$$Nest$msetBrightness(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 11
    .line 12
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBrightnessBlocked()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string v0, "SubscreenBrightnessDetailActivity"

    .line 23
    .line 24
    const-string v3, "Auto brightness options are not available by KnoxStateMonitor."

    .line 25
    .line 26
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move v0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v2

    .line 32
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    .line 34
    move-object p1, p2

    .line 35
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BAR_BRIGHTNESS_PERSONAL_CONTROL:Z

    .line 40
    .line 41
    const/4 v3, -0x2

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    const-string/jumbo v0, "sub_screen_brightness"

    .line 45
    .line 46
    .line 47
    const-string v4, "brightness_pms_marker_screen"

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    move-object v5, v0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move-object v5, v4

    .line 54
    :goto_1
    if-eqz p2, :cond_3

    .line 55
    .line 56
    move-object v0, v4

    .line 57
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const/16 v6, 0x64

    .line 64
    .line 65
    invoke-static {v4, v5, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    iget-object v5, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    .line 70
    .line 71
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v5, v0, v4, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 76
    .line 77
    .line 78
    :cond_4
    const-string/jumbo v0, "ro.factory.factory_binary"

    .line 79
    .line 80
    .line 81
    const-string v4, "Unknown"

    .line 82
    .line 83
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v4, "factory"

    .line 88
    .line 89
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz p2, :cond_5

    .line 94
    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    move v1, v2

    .line 98
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 99
    .line 100
    iget-object p2, p2, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    const-string/jumbo v0, "sub_screen_brightness_mode"

    .line 107
    .line 108
    .line 109
    invoke-static {p2, v0, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "sub_screen_brightness_mode"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mIsFlexMode:Z

    .line 6
    .line 7
    new-instance v0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$1;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mDeviceStateCallback:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$1;

    .line 13
    .line 14
    new-instance v0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$5;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$5;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$5;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0436

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    iput-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    .line 11
    .line 12
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$5;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 34
    .line 35
    const p1, 0x7f0a0aed

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/LinearLayout;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mSubBrightnessDetail:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    .line 47
    .line 48
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mDeviceStateCallback:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$1;

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    const-class v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isNightMode(Landroid/content/Context;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_0

    .line 97
    .line 98
    const/16 v0, 0x710

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    const/16 v0, 0x700

    .line 102
    .line 103
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const/16 v0, 0x400

    .line 111
    .line 112
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 113
    .line 114
    .line 115
    const/4 p1, 0x1

    .line 116
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 117
    .line 118
    .line 119
    new-instance v0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    .line 122
    .line 123
    const v2, 0x7f1310d5

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;-><init>(Landroid/content/Context;I)V

    .line 127
    .line 128
    .line 129
    const v1, 0x7f0a0b0b

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Landroid/widget/ImageView;

    .line 137
    .line 138
    iput-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBackButton:Landroid/widget/ImageView;

    .line 139
    .line 140
    const v1, 0x7f0a0be1

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    .line 148
    .line 149
    iput-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 162
    .line 163
    const v1, 0x7f0a0b10

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 171
    .line 172
    iput-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 173
    .line 174
    const v1, 0x7f0a0b1a

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Landroid/widget/LinearLayout;

    .line 182
    .line 183
    iput-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 184
    .line 185
    const v1, 0x7f0a0b0e

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Landroid/widget/LinearLayout;

    .line 193
    .line 194
    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBackButton:Landroid/widget/ImageView;

    .line 195
    .line 196
    new-instance v3, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda0;

    .line 197
    .line 198
    invoke-direct {v3, p0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBackButton:Landroid/widget/ImageView;

    .line 205
    .line 206
    new-instance v3, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda1;

    .line 207
    .line 208
    invoke-direct {v3, v0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qp/util/SubscreenToolTipWindow;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    .line 215
    .line 216
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    const v3, 0x111010e

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_SETTINGS_SUBSCREEN:Z

    .line 228
    .line 229
    const/4 v4, 0x0

    .line 230
    if-eqz v3, :cond_3

    .line 231
    .line 232
    if-eqz v2, :cond_3

    .line 233
    .line 234
    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 235
    .line 236
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    .line 238
    .line 239
    const v2, 0x7f130f01

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 247
    .line 248
    const v3, 0x7f0a0bd9

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    check-cast v2, Landroid/widget/TextView;

    .line 256
    .line 257
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    const v0, 0x7f0a01b3

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Landroid/widget/TextView;

    .line 268
    .line 269
    const v3, 0x7f070100

    .line 270
    .line 271
    .line 272
    invoke-static {v3, v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->setLabelTextSize(ILandroid/widget/TextView;)V

    .line 273
    .line 274
    .line 275
    const v0, 0x7f0a05c2

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Landroid/widget/TextView;

    .line 283
    .line 284
    const v3, 0x7f0712dc

    .line 285
    .line 286
    .line 287
    invoke-static {v3, v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->setLabelTextSize(ILandroid/widget/TextView;)V

    .line 288
    .line 289
    .line 290
    invoke-static {v3, v2}, Lcom/android/systemui/qp/util/SubscreenUtil;->setLabelTextSize(ILandroid/widget/TextView;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 294
    .line 295
    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 296
    .line 297
    iget-object v2, v2, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 298
    .line 299
    const-string/jumbo v3, "sub_screen_brightness_mode"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_2

    .line 311
    .line 312
    move v2, p1

    .line 313
    goto :goto_1

    .line 314
    :cond_2
    move v2, v4

    .line 315
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 316
    .line 317
    .line 318
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 319
    .line 320
    new-instance v2, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$2;

    .line 321
    .line 322
    invoke-direct {v2, p0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$2;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    .line 327
    .line 328
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 329
    .line 330
    new-instance v2, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$3;

    .line 331
    .line 332
    invoke-direct {v2, p0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$3;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 336
    .line 337
    .line 338
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 339
    .line 340
    new-instance v2, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$4;

    .line 341
    .line 342
    invoke-direct {v2, p0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$4;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 346
    .line 347
    .line 348
    goto :goto_2

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 350
    .line 351
    const/16 v2, 0x8

    .line 352
    .line 353
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    .line 355
    .line 356
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    .line 357
    .line 358
    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBackButton:Landroid/widget/ImageView;

    .line 359
    .line 360
    invoke-static {v0, v2}, Lcom/android/systemui/qp/util/SubscreenUtil;->applyRotation(Landroid/content/Context;Landroid/view/View;)V

    .line 361
    .line 362
    .line 363
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    .line 364
    .line 365
    invoke-static {v0, v1}, Lcom/android/systemui/qp/util/SubscreenUtil;->applyRotation(Landroid/content/Context;Landroid/view/View;)V

    .line 366
    .line 367
    .line 368
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 369
    .line 370
    new-instance v1, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$SwitchDelegate;

    .line 371
    .line 372
    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 373
    .line 374
    invoke-direct {v1, p0, v2, v4}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$SwitchDelegate;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;Landroidx/appcompat/widget/SwitchCompat;I)V

    .line 375
    .line 376
    .line 377
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 378
    .line 379
    .line 380
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 381
    .line 382
    if-nez v0, :cond_4

    .line 383
    .line 384
    const-string p0, "SubscreenBrightnessDetailActivity"

    .line 385
    .line 386
    const-string p1, "onCreate() mBrightnessView is null"

    .line 387
    .line 388
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    return-void

    .line 392
    :cond_4
    const-class v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 393
    .line 394
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    check-cast v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 399
    .line 400
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    const v3, 0x7f1310ca

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    invoke-static {p0, v2}, Lcom/android/systemui/qp/util/SubscreenUtil;->sendAnnouncementEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    new-instance v1, Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 418
    .line 419
    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    .line 420
    .line 421
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 422
    .line 423
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/qp/SubscreenBrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/qp/SubroomBrightnessSettingsView;)V

    .line 424
    .line 425
    .line 426
    iput-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mSubscreenBrightnessController:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 427
    .line 428
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 429
    .line 430
    .line 431
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mSubscreenBrightnessController:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 432
    .line 433
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    iput-boolean p1, v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDetailActivity:Z

    .line 437
    .line 438
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 439
    .line 440
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 445
    .line 446
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 447
    .line 448
    new-instance p1, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;

    .line 449
    .line 450
    new-instance v1, Landroid/os/Handler;

    .line 451
    .line 452
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 453
    .line 454
    .line 455
    invoke-direct {p1, p0, v1}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;Landroid/os/Handler;)V

    .line 456
    .line 457
    .line 458
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;

    .line 459
    .line 460
    iget-object v1, p1, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;->mCr:Landroid/content/ContentResolver;

    .line 461
    .line 462
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 463
    .line 464
    .line 465
    iget-object v1, p1, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;->mCr:Landroid/content/ContentResolver;

    .line 466
    .line 467
    sget-object v2, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 468
    .line 469
    invoke-virtual {v1, v2, v4, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 470
    .line 471
    .line 472
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 473
    .line 474
    if-eqz p1, :cond_5

    .line 475
    .line 476
    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    :cond_5
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 480
    .line 481
    if-eqz p1, :cond_6

    .line 482
    .line 483
    sget-object p1, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 484
    .line 485
    const-string v1, "QPBE2023"

    .line 486
    .line 487
    invoke-static {p1, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 491
    .line 492
    .line 493
    move-result-object p0

    .line 494
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 495
    .line 496
    .line 497
    move-result-object p0

    .line 498
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    check-cast p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 503
    .line 504
    iget-object p1, p1, Lcom/android/systemui/qp/util/SubscreenUtil;->mSubScreenQuickPanelWindowController:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    .line 505
    .line 506
    if-nez p1, :cond_7

    .line 507
    .line 508
    goto :goto_3

    .line 509
    :cond_7
    iget-object p1, p1, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQSEventHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 510
    .line 511
    invoke-virtual {p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->getScreenTimeOut()I

    .line 512
    .line 513
    .line 514
    move-result v4

    .line 515
    :goto_3
    int-to-long v0, v4

    .line 516
    invoke-virtual {p0, v0, v1}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 517
    .line 518
    .line 519
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;->mCr:Landroid/content/ContentResolver;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mSubscreenBrightnessController:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-boolean v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDetailActivity:Z

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mDeviceStateCallback:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$1;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 31
    .line 32
    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 2

    .line 1
    const-string v0, "SubscreenBrightnessDetailActivity"

    .line 2
    .line 3
    const-string v1, "onStartedGoingToSleep"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
