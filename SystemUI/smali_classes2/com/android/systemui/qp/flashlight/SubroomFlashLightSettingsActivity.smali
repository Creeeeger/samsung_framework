.class public Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;
.super Landroid/app/Activity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView$ClickListener;
.implements Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$TurnOnClickListener;
.implements Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mActivityState:I

.field public mBackButton:Landroid/widget/RelativeLayout;

.field public mContext:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

.field public final mDeviceStateCallback:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;

.field public mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public mFlashLightHelpText:Landroid/widget/TextView;

.field public mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

.field public mFlashLightPresentationController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

.field public mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

.field public mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

.field public mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field public mHelpViewTextCounter:I

.field public mIsFlexMode:Z

.field public mLastEvent:J

.field public mLongPress:Z

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public mShowHelpViewTextPrefs:Landroid/content/SharedPreferences;

.field public mSubRoomPresentationView:Landroid/widget/FrameLayout;

.field public mSubScreen:I

.field public mSubroomFlashLightUtil:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mHelpViewTextCounter:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLongPress:Z

    .line 10
    .line 11
    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mIsFlexMode:Z

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLastEvent:J

    .line 18
    .line 19
    new-instance v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;-><init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mDeviceStateCallback:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final finishFlashLightActivity()V
    .locals 2

    .line 1
    const-string v0, "SubroomFlashLightSettingsActivity"

    .line 2
    .line 3
    const-string v1, "finishFlashLightActivity"

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

.method public final getActivityState()I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "getActivityState: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    .line 9
    .line 10
    const-string v2, "SubroomFlashLightSettingsActivity"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    .line 16
    .line 17
    return p0
.end method

.method public final isValidKey(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x19

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x18

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    iget-wide v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLastEvent:J

    .line 22
    .line 23
    sub-long/2addr p1, v0

    .line 24
    const-wide/16 v0, 0x46

    .line 25
    .line 26
    cmp-long p0, p1, v0

    .line 27
    .line 28
    if-lez p0, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    :goto_0
    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 11
    .line 12
    iget-boolean p1, p1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->finishFlashLightActivity()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const-string p1, "SubroomFlashLightSettingsActivity"

    .line 20
    .line 21
    const-string v0, "onCreate: "

    .line 22
    .line 23
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0d043f

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 30
    .line 31
    .line 32
    iput-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mContext:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    .line 33
    .line 34
    invoke-static {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->getInstance(Landroid/app/Activity;)Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubroomFlashLightUtil:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;

    .line 39
    .line 40
    const v0, 0x7f0a0b17

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/widget/FrameLayout;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mContext:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    .line 52
    .line 53
    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 60
    .line 61
    iput-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mContext:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mDeviceStateCallback:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;

    .line 70
    .line 71
    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    const-class v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 91
    .line 92
    iget-object v3, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mContext:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-static {v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isNightMode(Landroid/content/Context;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_1

    .line 102
    .line 103
    const/16 v2, 0x710

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    const/16 v2, 0x700

    .line 107
    .line 108
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iput-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 120
    .line 121
    const/4 v2, 0x0

    .line 122
    if-eqz v1, :cond_5

    .line 123
    .line 124
    invoke-virtual {v1, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 128
    .line 129
    const-wide/16 v3, 0x0

    .line 130
    .line 131
    invoke-virtual {p1, v3, v4}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    .line 132
    .line 133
    .line 134
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 135
    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 139
    .line 140
    const-class v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 141
    .line 142
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 147
    .line 148
    iget-object v1, v1, Lcom/android/systemui/qp/util/SubscreenUtil;->mSubScreenQuickPanelWindowController:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    .line 149
    .line 150
    if-nez v1, :cond_3

    .line 151
    .line 152
    move v1, v2

    .line 153
    goto :goto_1

    .line 154
    :cond_3
    iget-object v1, v1, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQSEventHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->getScreenTimeOut()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    :goto_1
    int-to-long v3, v1

    .line 161
    invoke-virtual {p1, v3, v4}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 166
    .line 167
    const-wide/16 v3, 0x2710

    .line 168
    .line 169
    invoke-virtual {p1, v3, v4}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 170
    .line 171
    .line 172
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 173
    .line 174
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 175
    .line 176
    or-int/lit8 v1, v1, 0x10

    .line 177
    .line 178
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 179
    .line 180
    const/high16 v1, 0x3f800000    # 1.0f

    .line 181
    .line 182
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    iget-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 189
    .line 190
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 191
    .line 192
    .line 193
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    const/16 v1, 0x400

    .line 198
    .line 199
    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 200
    .line 201
    .line 202
    const/4 p1, 0x1

    .line 203
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 204
    .line 205
    .line 206
    invoke-static {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightPresentationController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 211
    .line 212
    invoke-static {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 213
    .line 214
    .line 215
    const-class p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 216
    .line 217
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 222
    .line 223
    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 224
    .line 225
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightPresentationController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 226
    .line 227
    iput-object p0, p1, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    .line 228
    .line 229
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Landroid/widget/FrameLayout;

    .line 234
    .line 235
    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    .line 236
    .line 237
    iput v2, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    .line 238
    .line 239
    const-class p1, Landroid/view/accessibility/AccessibilityManager;

    .line 240
    .line 241
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 246
    .line 247
    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 248
    .line 249
    const-string p1, "ShowDifferentHelpViewText"

    .line 250
    .line 251
    invoke-virtual {p0, p1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mShowHelpViewTextPrefs:Landroid/content/SharedPreferences;

    .line 256
    .line 257
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubroomFlashLightUtil:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;

    .line 258
    .line 259
    iget-object v0, p1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    .line 260
    .line 261
    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    .line 262
    .line 263
    iget-object v0, p1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    .line 264
    .line 265
    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    .line 266
    .line 267
    iget-object v1, p1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    .line 268
    .line 269
    iput-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mBackButton:Landroid/widget/RelativeLayout;

    .line 270
    .line 271
    iget-object v1, p1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpText:Landroid/widget/TextView;

    .line 272
    .line 273
    iput-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightHelpText:Landroid/widget/TextView;

    .line 274
    .line 275
    iget-object p1, p1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    .line 276
    .line 277
    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    .line 278
    .line 279
    iput-object p0, p1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;->mListener:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView$ClickListener;

    .line 280
    .line 281
    iput-object p0, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;->mListener:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$TurnOnClickListener;

    .line 282
    .line 283
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    const-string v0, "SubroomFlashLightSettingsActivity"

    .line 2
    .line 3
    const-string v1, "onDestroy: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$2;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$2;-><init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightPresentationController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput v2, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    .line 21
    .line 22
    iput v2, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mDeviceStateCallback:Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$1;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    .line 37
    .line 38
    invoke-static {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->isValidKey(ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "SubroomFlashLightSettingsActivity"

    .line 8
    .line 9
    const-string p1, "onKeyDown VOLUME!!"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->isValidKey(ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "SubroomFlashLightSettingsActivity"

    .line 8
    .line 9
    const-string v1, "LONG PRESS!"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLongPress:Z

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->onVolumeKeyEvent(ILandroid/view/KeyEvent;)V

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->isValidKey(ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLongPress:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "SubroomFlashLightSettingsActivity"

    .line 12
    .line 13
    const-string v1, "SHORT PRESS"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->onVolumeKeyEvent(ILandroid/view/KeyEvent;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLongPress:Z

    .line 24
    .line 25
    :goto_0
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final onPause()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "onPause: "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    .line 12
    .line 13
    const-string v2, "SubroomFlashLightSettingsActivity"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "onResume: "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    .line 15
    .line 16
    const-string v1, "SubroomFlashLightSettingsActivity"

    .line 17
    .line 18
    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onStart()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onStart: "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    .line 15
    .line 16
    const-string v3, "SubroomFlashLightSettingsActivity"

    .line 17
    .line 18
    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 27
    .line 28
    check-cast v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->showTurnOffView()V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x0

    .line 48
    const/16 v4, 0x8

    .line 49
    .line 50
    const/4 v5, 0x4

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const-string/jumbo v1, "showTurnOnView: "

    .line 54
    .line 55
    .line 56
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iput v5, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->updateWindowFlag(Z)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mBackButton:Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    .line 80
    .line 81
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mBackButton:Landroid/widget/RelativeLayout;

    .line 85
    .line 86
    new-instance v1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    const-string/jumbo v1, "showHelpView: "

    .line 96
    .line 97
    .line 98
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v2}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->updateWindowFlag(Z)V

    .line 102
    .line 103
    .line 104
    iput v5, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    .line 105
    .line 106
    iget-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mBackButton:Landroid/widget/RelativeLayout;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightHelpText:Landroid/widget/TextView;

    .line 117
    .line 118
    iget-object v3, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mShowHelpViewTextPrefs:Landroid/content/SharedPreferences;

    .line 119
    .line 120
    const-string v5, "helpViewTextCount"

    .line 121
    .line 122
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    iput v3, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mHelpViewTextCounter:I

    .line 127
    .line 128
    const/4 v5, 0x3

    .line 129
    if-ge v3, v5, :cond_3

    .line 130
    .line 131
    move v3, v0

    .line 132
    goto :goto_0

    .line 133
    :cond_3
    move v3, v2

    .line 134
    :goto_0
    if-eqz v3, :cond_4

    .line 135
    .line 136
    const v3, 0x7f1310e0

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    const v3, 0x7f1310df

    .line 141
    .line 142
    .line 143
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightHelpText:Landroid/widget/TextView;

    .line 152
    .line 153
    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    .line 154
    .line 155
    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    .line 162
    .line 163
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mBackButton:Landroid/widget/RelativeLayout;

    .line 167
    .line 168
    new-instance v2, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$$ExternalSyntheticLambda0;

    .line 169
    .line 170
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    .line 175
    .line 176
    :goto_2
    const-class v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 177
    .line 178
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const v2, 0x7f130d0c

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-static {p0, v1}, Lcom/android/systemui/qp/util/SubscreenUtil;->sendAnnouncementEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 202
    .line 203
    if-eqz p0, :cond_5

    .line 204
    .line 205
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 206
    .line 207
    const-string v0, "QPBE2019"

    .line 208
    .line 209
    invoke-static {p0, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_5
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 214
    .line 215
    const-string v0, "QPBE2005"

    .line 216
    .line 217
    invoke-static {p0, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :goto_3
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "onStop: "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mActivityState:I

    .line 12
    .line 13
    const-string v2, "SubroomFlashLightSettingsActivity"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onVolumeKeyEvent(ILandroid/view/KeyEvent;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onVolumeKeyEvent: mSubScreen: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    .line 10
    .line 11
    const-string v2, "SubroomFlashLightSettingsActivity"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string/jumbo p0, "onVolumeKeyEvent: Access Restrcicted by Talkback"

    .line 25
    .line 26
    .line 27
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const/16 v0, 0x19

    .line 32
    .line 33
    if-eq p1, v0, :cond_1

    .line 34
    .line 35
    const/16 v0, 0x18

    .line 36
    .line 37
    if-ne p1, v0, :cond_5

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 40
    .line 41
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isAvailable()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 50
    .line 51
    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->showUnavailableMessage()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    .line 58
    .line 59
    .line 60
    move-result-wide p1

    .line 61
    iput-wide p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLastEvent:J

    .line 62
    .line 63
    iget p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    .line 64
    .line 65
    const/4 p2, 0x4

    .line 66
    const/4 v0, 0x0

    .line 67
    if-ne p1, p2, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->showTurnOffView()V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 73
    .line 74
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 75
    .line 76
    const/4 p2, 0x1

    .line 77
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mShowHelpViewTextPrefs:Landroid/content/SharedPreferences;

    .line 81
    .line 82
    const-string v1, "helpViewTextCount"

    .line 83
    .line 84
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iput p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mHelpViewTextCounter:I

    .line 89
    .line 90
    const/4 v2, 0x3

    .line 91
    if-ge p1, v2, :cond_3

    .line 92
    .line 93
    move v0, p2

    .line 94
    :cond_3
    if-eqz v0, :cond_5

    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mShowHelpViewTextPrefs:Landroid/content/SharedPreferences;

    .line 97
    .line 98
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mHelpViewTextCounter:I

    .line 103
    .line 104
    add-int/2addr v0, p2

    .line 105
    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mHelpViewTextCounter:I

    .line 106
    .line 107
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 108
    .line 109
    .line 110
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    const/4 p2, 0x5

    .line 115
    if-ne p1, p2, :cond_5

    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 118
    .line 119
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->finishFlashLightActivity()V

    .line 125
    .line 126
    .line 127
    :cond_5
    :goto_0
    return-void
.end method

.method public final showTurnOffView()V
    .locals 3

    .line 1
    const-string v0, "SubroomFlashLightSettingsActivity"

    .line 2
    .line 3
    const-string/jumbo v1, "showTurnOffView: "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    iput v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubScreen:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->updateWindowFlag(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSubRoomPresentationView:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mBackButton:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    .line 40
    .line 41
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final updateWindowFlag(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 8
    .line 9
    const v1, 0x200080

    .line 10
    .line 11
    .line 12
    or-int/2addr p1, v1

    .line 13
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 17
    .line 18
    and-int/lit16 p1, p1, -0x81

    .line 19
    .line 20
    const v1, -0x200001

    .line 21
    .line 22
    .line 23
    and-int/2addr p1, v1

    .line 24
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
