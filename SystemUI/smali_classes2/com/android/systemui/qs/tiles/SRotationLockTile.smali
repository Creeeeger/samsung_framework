.class public final Lcom/android/systemui/qs/tiles/SRotationLockTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/util/QsResetSettingsManager$DemoResetSettingsApplier;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAutoToLandscape:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mAutoToPortrait:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mCallback:Lcom/android/systemui/qs/tiles/SRotationLockTile$4;

.field public final mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field public final mDetailAdapter:Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;

.field public final mLandscapeToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final mPortraitToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mResources:Landroid/content/res/Resources;

.field public final mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

.field public mRotationLocked:Z

.field public final mSensorPrivacyChangedListener:Lcom/android/systemui/qs/tiles/SRotationLockTile$$ExternalSyntheticLambda0;

.field public final mSetting:Lcom/android/systemui/qs/tiles/SRotationLockTile$2;

.field public final mSettingsCallback:Lcom/android/systemui/qs/tiles/SRotationLockTile$1;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Landroid/content/res/Resources;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/hardware/SensorPrivacyManager;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 14

    .line 1
    move-object v10, p0

    .line 2
    move-object/from16 v11, p11

    .line 3
    .line 4
    move-object/from16 v12, p12

    .line 5
    .line 6
    move-object/from16 v13, p14

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object/from16 v2, p2

    .line 11
    .line 12
    move-object/from16 v3, p3

    .line 13
    .line 14
    move-object/from16 v4, p4

    .line 15
    .line 16
    move-object/from16 v5, p6

    .line 17
    .line 18
    move-object/from16 v6, p7

    .line 19
    .line 20
    move-object/from16 v7, p8

    .line 21
    .line 22
    move-object/from16 v8, p9

    .line 23
    .line 24
    move-object/from16 v9, p10

    .line 25
    .line 26
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 27
    .line 28
    .line 29
    const v0, 0x108056a

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 36
    .line 37
    const v1, 0x7f080e3e

    .line 38
    .line 39
    .line 40
    const v2, 0x7f080e49

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    .line 44
    .line 45
    .line 46
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mAutoToPortrait:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 47
    .line 48
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 49
    .line 50
    const v1, 0x7f080e56

    .line 51
    .line 52
    .line 53
    const v2, 0x7f080e61

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    .line 57
    .line 58
    .line 59
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mPortraitToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 60
    .line 61
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 62
    .line 63
    const v1, 0x7f080e32

    .line 64
    .line 65
    .line 66
    const v2, 0x7f080e3d

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    .line 70
    .line 71
    .line 72
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mAutoToLandscape:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 73
    .line 74
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 75
    .line 76
    const v1, 0x7f080e4a

    .line 77
    .line 78
    .line 79
    const v2, 0x7f080e55

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    .line 83
    .line 84
    .line 85
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 86
    .line 87
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 88
    .line 89
    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 93
    .line 94
    const-string v0, "accelerometer_rotation"

    .line 95
    .line 96
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    filled-new-array {v0}, [Landroid/net/Uri;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Lcom/android/systemui/qs/tiles/SRotationLockTile$1;

    .line 105
    .line 106
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SRotationLockTile$1;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile;)V

    .line 107
    .line 108
    .line 109
    iput-object v1, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsCallback:Lcom/android/systemui/qs/tiles/SRotationLockTile$1;

    .line 110
    .line 111
    new-instance v2, Lcom/android/systemui/qs/tiles/SRotationLockTile$4;

    .line 112
    .line 113
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/SRotationLockTile$4;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile;)V

    .line 114
    .line 115
    .line 116
    iput-object v2, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mCallback:Lcom/android/systemui/qs/tiles/SRotationLockTile$4;

    .line 117
    .line 118
    new-instance v3, Lcom/android/systemui/qs/tiles/SRotationLockTile$$ExternalSyntheticLambda0;

    .line 119
    .line 120
    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/SRotationLockTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile;)V

    .line 121
    .line 122
    .line 123
    iput-object v3, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSensorPrivacyChangedListener:Lcom/android/systemui/qs/tiles/SRotationLockTile$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    iput-object v12, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 126
    .line 127
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object v3, v10, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 131
    .line 132
    invoke-interface {v12, v3, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    move-object/from16 v2, p13

    .line 136
    .line 137
    iput-object v2, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 138
    .line 139
    iput-object v13, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 140
    .line 141
    new-instance v2, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;

    .line 142
    .line 143
    const/4 v3, 0x0

    .line 144
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile;I)V

    .line 145
    .line 146
    .line 147
    iput-object v2, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;

    .line 148
    .line 149
    iput-object v11, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 150
    .line 151
    move-object/from16 v2, p5

    .line 152
    .line 153
    iput-object v2, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mResources:Landroid/content/res/Resources;

    .line 154
    .line 155
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    new-instance v4, Lcom/android/systemui/qs/tiles/SRotationLockTile$2;

    .line 164
    .line 165
    iget-object v5, v10, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    .line 166
    .line 167
    const-string v6, "camera_autorotate"

    .line 168
    .line 169
    move-object p1, v4

    .line 170
    move-object/from16 p2, p0

    .line 171
    .line 172
    move-object/from16 p3, p15

    .line 173
    .line 174
    move-object/from16 p4, v5

    .line 175
    .line 176
    move-object/from16 p5, v6

    .line 177
    .line 178
    move/from16 p6, v2

    .line 179
    .line 180
    invoke-direct/range {p1 .. p6}, Lcom/android/systemui/qs/tiles/SRotationLockTile$2;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    iput-object v4, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSetting:Lcom/android/systemui/qs/tiles/SRotationLockTile$2;

    .line 184
    .line 185
    iget-object v2, v10, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 186
    .line 187
    invoke-interface {v13, v2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    move-object/from16 v2, p16

    .line 191
    .line 192
    iput-object v2, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 193
    .line 194
    invoke-virtual {v11, v1, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, v10, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 198
    .line 199
    const-string/jumbo v1, "quick_pref"

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    if-eqz v0, :cond_1

    .line 207
    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 213
    .line 214
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TILE_ROTATION_MANUAL:Z

    .line 215
    .line 216
    if-eqz v1, :cond_0

    .line 217
    .line 218
    const-string v1, "QPDS1009"

    .line 219
    .line 220
    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarRotateSuggestionEnabled()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 225
    .line 226
    .line 227
    :cond_0
    const-string v1, "QPDS1010"

    .line 228
    .line 229
    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/util/SettingsHelper;->isHomeScreenRotationAllowed()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 234
    .line 235
    .line 236
    const-string v1, "QPDS1011"

    .line 237
    .line 238
    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    .line 244
    .line 245
    const-string v1, "QPDS1012"

    .line 246
    .line 247
    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/util/SettingsHelper;->isCallScreenRotationAllowed()Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 252
    .line 253
    .line 254
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    .line 256
    .line 257
    :cond_1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 258
    .line 259
    if-nez v0, :cond_2

    .line 260
    .line 261
    new-instance v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$3;

    .line 262
    .line 263
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SRotationLockTile$3;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile;)V

    .line 264
    .line 265
    .line 266
    const-class v1, Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 267
    .line 268
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 273
    .line 274
    const-string v2, "AutoRotate"

    .line 275
    .line 276
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/QSBackupRestoreManager;->addCallback(Ljava/lang/String;Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;)V

    .line 277
    .line 278
    .line 279
    :cond_2
    return-void
.end method

.method public static isCurrentOrientationLockPortrait(Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/content/res/Resources;)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->getRotationLockOrientation()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x2

    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 15
    .line 16
    if-eq p0, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    return v0

    .line 21
    :cond_1
    if-eq p0, v2, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move v0, v1

    .line 25
    :goto_1
    return v0
.end method


# virtual methods
.method public final applyDemoResetSetting()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "accelerometer_rotation"

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsCallback:Lcom/android/systemui/qs/tiles/SRotationLockTile$1;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x7b

    .line 2
    .line 3
    return p0
.end method

.method public final getSearchWords()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f130f7b

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "\\n"

    .line 24
    .line 25
    const-string v3, " "

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    const v1, 0x7f130f7a

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    const v1, 0x7f130f79

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    return-object v0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getTileMapKey()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileMapKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, " handleClick is called:++++ "

    .line 2
    .line 3
    const-string v0, "SRotationLockTile"

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 15
    .line 16
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isRotationLockTileBlocked()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 29
    .line 30
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 31
    .line 32
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "handleClick "

    .line 40
    .line 41
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 45
    .line 46
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 47
    .line 48
    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 49
    .line 50
    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mRotationLocked:Z

    .line 54
    .line 55
    xor-int/lit8 v0, p1, 0x1

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 58
    .line 59
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 63
    .line 64
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final handleDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSetting:Lcom/android/systemui/qs/tiles/SRotationLockTile$2;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSensorPrivacyChangedListener:Lcom/android/systemui/qs/tiles/SRotationLockTile$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorPrivacyManager;->removeSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final handleInitialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSensorPrivacyChangedListener:Lcom/android/systemui/qs/tiles/SRotationLockTile$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final handleSecondaryClick(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "SRotationLockTile"

    .line 2
    .line 3
    const-string v0, " handleSecondaryClick is called:++++ "

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 15
    .line 16
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isRotationLockTileBlocked()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->handleSetListening(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSetting:Lcom/android/systemui/qs/tiles/SRotationLockTile$2;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 4
    .line 5
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 10
    .line 11
    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 12
    .line 13
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    invoke-virtual {v2, v3}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v4, 0x1

    .line 23
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getRotationResolverPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    const-string v6, "android.permission.CAMERA"

    .line 40
    .line 41
    invoke-virtual {v1, v6, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    move v1, v4

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v1, 0x0

    .line 50
    :goto_0
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isCameraRotationEnabled()Z

    .line 53
    .line 54
    .line 55
    :cond_1
    xor-int/lit8 v1, v0, 0x1

    .line 56
    .line 57
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 58
    .line 59
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mResources:Landroid/content/res/Resources;

    .line 62
    .line 63
    invoke-static {p2, v1}, Lcom/android/systemui/qs/tiles/SRotationLockTile;->isCurrentOrientationLockPortrait(Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/content/res/Resources;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    const v1, 0x7f130f7b

    .line 68
    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    if-eqz p2, :cond_2

    .line 73
    .line 74
    const v2, 0x7f130f7a

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const v2, 0x7f130f79

    .line 79
    .line 80
    .line 81
    :goto_1
    if-eqz p2, :cond_3

    .line 82
    .line 83
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mAutoToPortrait:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mAutoToLandscape:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 87
    .line 88
    :goto_2
    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_4
    if-eqz p2, :cond_5

    .line 92
    .line 93
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mPortraitToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 97
    .line 98
    :goto_3
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 99
    .line 100
    move v2, v1

    .line 101
    :goto_4
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 106
    .line 107
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 108
    .line 109
    if-eqz v2, :cond_6

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_6
    move v3, v4

    .line 113
    :goto_5
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuffer;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    .line 119
    .line 120
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 121
    .line 122
    if-eqz v3, :cond_7

    .line 123
    .line 124
    const v3, 0x7f13006f

    .line 125
    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_7
    const v3, 0x7f13006e

    .line 129
    .line 130
    .line 131
    :goto_6
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    .line 141
    .line 142
    const-string v1, ","

    .line 143
    .line 144
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    .line 146
    .line 147
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 148
    .line 149
    if-nez v4, :cond_9

    .line 150
    .line 151
    if-eqz p2, :cond_8

    .line 152
    .line 153
    const v4, 0x7f130ee9

    .line 154
    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_8
    const v4, 0x7f130ee8

    .line 158
    .line 159
    .line 160
    :goto_7
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    .line 169
    .line 170
    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 178
    .line 179
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mRotationLocked:Z

    .line 180
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v1, " mRotationLocked: "

    .line 184
    .line 185
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mRotationLocked:Z

    .line 189
    .line 190
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string p0, " handleUpdateState: "

    .line 194
    .line 195
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 199
    .line 200
    const-string p1, " orientation = "

    .line 201
    .line 202
    const-string v1, "SRotationLockTile"

    .line 203
    .line 204
    invoke-static {v0, p0, p1, p2, v1}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public final handleUserSwitch(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSetting:Lcom/android/systemui/qs/tiles/SRotationLockTile$2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SettingObserver;->setUserId(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final onPowerSaveChanged(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final sendTileStatusLog()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileMapKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/android/systemui/qs/QSTileHost$TilesMap;->SID_TILE_STATE:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTilesMap:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSTileHost$TilesMap;->getId(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 23
    .line 24
    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/SRotationLockTile;->isCurrentOrientationLockPortrait(Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/content/res/Resources;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileMapValue()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x1

    .line 35
    if-ne v2, v3, :cond_0

    .line 36
    .line 37
    const-string v1, "On"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    if-eqz v1, :cond_1

    .line 41
    .line 42
    const-string/jumbo v1, "portrait"

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v1, "landscape"

    .line 47
    .line 48
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 49
    .line 50
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    .line 52
    .line 53
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public final shouldAnnouncementBeDelayed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 6
    .line 7
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 10
    .line 11
    if-ne v0, p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method
