.class public final Lcom/android/systemui/doze/DozeSensors;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;


# instance fields
.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public final mAuthControllerCallback:Lcom/android/systemui/doze/DozeSensors$2;

.field public final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public mDebounceFrom:J

.field public mDevicePosture:I

.field public final mDevicePostureCallback:Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;

.field public final mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mHandler:Landroid/os/Handler;

.field public mListening:Z

.field public mListeningAodOnlySensors:Z

.field public mListeningProxSensors:Z

.field public mListeningTouchScreenSensors:Z

.field public final mProxCallback:Ljava/util/function/Consumer;

.field public final mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

.field public final mScreenOffUdfpsEnabled:Z

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSelectivelyRegisterProxSensors:Z

.field public final mSensorCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

.field public final mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public mSettingRegistered:Z

.field public final mSettingsObserver:Lcom/android/systemui/doze/DozeSensors$1;

.field protected mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field public mUdfpsEnrolled:Z

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/doze/DozeSensors;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/settings/UserTracker;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            "Lcom/android/systemui/doze/DozeSensors$Callback;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/doze/DozeLog;",
            "Lcom/android/systemui/util/sensors/ProximitySensor;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/statusbar/policy/DevicePostureController;",
            "Lcom/android/systemui/settings/UserTracker;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    move-object/from16 v13, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    move-object/from16 v15, p4

    .line 8
    .line 9
    move-object/from16 v1, p9

    .line 10
    .line 11
    move-object/from16 v2, p11

    .line 12
    .line 13
    move-object/from16 v3, p12

    .line 14
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v4, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v4, v14, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance v5, Lcom/android/systemui/doze/DozeSensors$1;

    .line 26
    .line 27
    invoke-direct {v5, v14, v4}, Lcom/android/systemui/doze/DozeSensors$1;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/os/Handler;)V

    .line 28
    .line 29
    .line 30
    iput-object v5, v14, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Lcom/android/systemui/doze/DozeSensors$1;

    .line 31
    .line 32
    new-instance v4, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-direct {v4, v14}, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeSensors;)V

    .line 35
    .line 36
    .line 37
    iput-object v4, v14, Lcom/android/systemui/doze/DozeSensors;->mDevicePostureCallback:Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    new-instance v4, Lcom/android/systemui/doze/DozeSensors$2;

    .line 40
    .line 41
    invoke-direct {v4, v14}, Lcom/android/systemui/doze/DozeSensors$2;-><init>(Lcom/android/systemui/doze/DozeSensors;)V

    .line 42
    .line 43
    .line 44
    iput-object v4, v14, Lcom/android/systemui/doze/DozeSensors;->mAuthControllerCallback:Lcom/android/systemui/doze/DozeSensors$2;

    .line 45
    .line 46
    iput-object v13, v14, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 47
    .line 48
    iput-object v15, v14, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 49
    .line 50
    move-object/from16 v5, p5

    .line 51
    .line 52
    iput-object v5, v14, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 53
    .line 54
    move-object/from16 v5, p7

    .line 55
    .line 56
    iput-object v5, v14, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    .line 57
    .line 58
    move-object/from16 v5, p10

    .line 59
    .line 60
    iput-object v5, v14, Lcom/android/systemui/doze/DozeSensors;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 61
    .line 62
    move-object/from16 v5, p6

    .line 63
    .line 64
    iput-object v5, v14, Lcom/android/systemui/doze/DozeSensors;->mSensorCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    .line 65
    .line 66
    move-object/from16 v5, p8

    .line 67
    .line 68
    iput-object v5, v14, Lcom/android/systemui/doze/DozeSensors;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 69
    .line 70
    iput-object v1, v14, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 71
    .line 72
    const-string v5, "DozeSensors"

    .line 73
    .line 74
    check-cast v1, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 75
    .line 76
    invoke-virtual {v1, v5}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->setTag(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    .line 80
    .line 81
    const v5, 0x7f050051

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const-string v5, "doze.prox.selectively_register"

    .line 89
    .line 90
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iput-boolean v1, v14, Lcom/android/systemui/doze/DozeSensors;->mSelectivelyRegisterProxSensors:Z

    .line 95
    .line 96
    const/16 v16, 0x1

    .line 97
    .line 98
    xor-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    iput-boolean v1, v14, Lcom/android/systemui/doze/DozeSensors;->mListeningProxSensors:Z

    .line 101
    .line 102
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-virtual {v15, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->screenOffUdfpsEnabled(I)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    iput-boolean v1, v14, Lcom/android/systemui/doze/DozeSensors;->mScreenOffUdfpsEnabled:Z

    .line 111
    .line 112
    iput-object v3, v14, Lcom/android/systemui/doze/DozeSensors;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 113
    .line 114
    move-object v1, v3

    .line 115
    check-cast v1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    .line 116
    .line 117
    iget v1, v1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDevicePosture:I

    .line 118
    .line 119
    iput v1, v14, Lcom/android/systemui/doze/DozeSensors;->mDevicePosture:I

    .line 120
    .line 121
    iput-object v2, v14, Lcom/android/systemui/doze/DozeSensors;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 122
    .line 123
    move-object/from16 v1, p13

    .line 124
    .line 125
    iput-object v1, v14, Lcom/android/systemui/doze/DozeSensors;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 126
    .line 127
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v2, v1}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    iput-boolean v1, v14, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    .line 136
    .line 137
    invoke-virtual {v2, v4}, Lcom/android/systemui/biometrics/AuthController;->addCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    .line 138
    .line 139
    .line 140
    const/16 v1, 0x9

    .line 141
    .line 142
    new-array v12, v1, [Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 143
    .line 144
    new-instance v1, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 145
    .line 146
    const/16 v2, 0x11

    .line 147
    .line 148
    invoke-virtual {v13, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    const/4 v3, 0x0

    .line 153
    const v4, 0x7f050050

    .line 154
    .line 155
    .line 156
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    .line 157
    .line 158
    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    const-string v4, "doze.pulse.sigmotion"

    .line 163
    .line 164
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    const/4 v4, 0x2

    .line 169
    const/4 v5, 0x0

    .line 170
    const/4 v7, 0x0

    .line 171
    const/4 v6, 0x0

    .line 172
    move-object/from16 p5, v1

    .line 173
    .line 174
    move-object/from16 p6, p0

    .line 175
    .line 176
    move-object/from16 p7, v2

    .line 177
    .line 178
    move-object/from16 p8, v3

    .line 179
    .line 180
    move/from16 p9, v0

    .line 181
    .line 182
    move/from16 p10, v4

    .line 183
    .line 184
    move/from16 p11, v5

    .line 185
    .line 186
    move/from16 p12, v6

    .line 187
    .line 188
    invoke-direct/range {p5 .. p12}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    .line 189
    .line 190
    .line 191
    const/4 v0, 0x0

    .line 192
    aput-object v1, v12, v0

    .line 193
    .line 194
    new-instance v17, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 195
    .line 196
    const/16 v0, 0x19

    .line 197
    .line 198
    invoke-virtual {v13, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    const-string v3, "doze_pulse_on_pick_up"

    .line 203
    .line 204
    const v0, 0x1110132

    .line 205
    .line 206
    .line 207
    move-object/from16 v1, p1

    .line 208
    .line 209
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->dozePickupSensorAvailable()Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    const/4 v6, 0x3

    .line 218
    const/4 v8, 0x0

    .line 219
    const/4 v9, 0x0

    .line 220
    const/4 v10, 0x0

    .line 221
    const/16 v18, 0x1

    .line 222
    .line 223
    const/16 v19, 0x0

    .line 224
    .line 225
    move-object/from16 v0, v17

    .line 226
    .line 227
    move-object/from16 v1, p0

    .line 228
    .line 229
    move-object/from16 v20, v11

    .line 230
    .line 231
    move/from16 v11, v18

    .line 232
    .line 233
    move-object v15, v12

    .line 234
    move/from16 v12, v19

    .line 235
    .line 236
    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZZZ)V

    .line 237
    .line 238
    .line 239
    aput-object v17, v15, v16

    .line 240
    .line 241
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 242
    .line 243
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    const/4 v2, 0x0

    .line 248
    invoke-static {v13, v1, v2}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    const-string v3, "doze_pulse_on_double_tap"

    .line 253
    .line 254
    const/4 v4, 0x1

    .line 255
    const/4 v5, 0x4

    .line 256
    const v6, 0x7f05004d

    .line 257
    .line 258
    .line 259
    move-object/from16 v13, v20

    .line 260
    .line 261
    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    const/4 v7, 0x1

    .line 266
    move-object/from16 p5, v0

    .line 267
    .line 268
    move-object/from16 p7, v1

    .line 269
    .line 270
    move-object/from16 p8, v3

    .line 271
    .line 272
    move/from16 p9, v4

    .line 273
    .line 274
    move/from16 p10, v5

    .line 275
    .line 276
    move/from16 p11, v6

    .line 277
    .line 278
    move/from16 p12, v7

    .line 279
    .line 280
    invoke-direct/range {p5 .. p12}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    .line 281
    .line 282
    .line 283
    const/4 v1, 0x2

    .line 284
    aput-object v0, v15, v1

    .line 285
    .line 286
    new-instance v17, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 287
    .line 288
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapSensorTypeMapping()[Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    const/4 v1, 0x5

    .line 293
    new-array v3, v1, [Landroid/hardware/Sensor;

    .line 294
    .line 295
    new-instance v1, Ljava/util/HashMap;

    .line 296
    .line 297
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 298
    .line 299
    .line 300
    const/4 v4, 0x0

    .line 301
    :goto_0
    array-length v5, v0

    .line 302
    if-ge v4, v5, :cond_1

    .line 303
    .line 304
    aget-object v5, v0, v4

    .line 305
    .line 306
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v6

    .line 310
    if-nez v6, :cond_0

    .line 311
    .line 312
    iget-object v6, v14, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 313
    .line 314
    invoke-static {v6, v5, v2}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    check-cast v5, Landroid/hardware/Sensor;

    .line 326
    .line 327
    aput-object v5, v3, v4

    .line 328
    .line 329
    add-int/lit8 v4, v4, 0x1

    .line 330
    .line 331
    goto :goto_0

    .line 332
    :cond_1
    const-string v4, "doze_tap_gesture"

    .line 333
    .line 334
    const/4 v5, 0x1

    .line 335
    const/4 v6, 0x1

    .line 336
    const/16 v7, 0x9

    .line 337
    .line 338
    const/4 v8, 0x1

    .line 339
    const/4 v9, 0x1

    .line 340
    const/4 v10, 0x0

    .line 341
    iget v0, v14, Lcom/android/systemui/doze/DozeSensors;->mDevicePosture:I

    .line 342
    .line 343
    const v1, 0x7f03004b

    .line 344
    .line 345
    .line 346
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    const v2, 0x7f050052

    .line 351
    .line 352
    .line 353
    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    array-length v11, v1

    .line 358
    if-ge v0, v11, :cond_3

    .line 359
    .line 360
    aget v0, v1, v0

    .line 361
    .line 362
    if-eqz v0, :cond_2

    .line 363
    .line 364
    goto :goto_1

    .line 365
    :cond_2
    const/4 v0, 0x0

    .line 366
    move/from16 v16, v0

    .line 367
    .line 368
    goto :goto_1

    .line 369
    :cond_3
    const-string v1, "Unsupported doze posture "

    .line 370
    .line 371
    const-string v11, "DozeParameters"

    .line 372
    .line 373
    invoke-static {v1, v0, v11}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 374
    .line 375
    .line 376
    move/from16 v16, v2

    .line 377
    .line 378
    :goto_1
    const/4 v11, 0x1

    .line 379
    iget v12, v14, Lcom/android/systemui/doze/DozeSensors;->mDevicePosture:I

    .line 380
    .line 381
    const/16 v18, 0x0

    .line 382
    .line 383
    const/16 v19, 0x5

    .line 384
    .line 385
    move-object/from16 v0, v17

    .line 386
    .line 387
    move-object/from16 v1, p0

    .line 388
    .line 389
    move-object v2, v3

    .line 390
    move-object v3, v4

    .line 391
    move v4, v5

    .line 392
    move v5, v6

    .line 393
    move v6, v7

    .line 394
    move v7, v8

    .line 395
    move v8, v9

    .line 396
    move v9, v10

    .line 397
    move/from16 v10, v16

    .line 398
    .line 399
    move-object/from16 v21, v13

    .line 400
    .line 401
    move/from16 v13, v18

    .line 402
    .line 403
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;[Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZZIZ)V

    .line 404
    .line 405
    .line 406
    const/4 v0, 0x3

    .line 407
    aput-object v17, v15, v0

    .line 408
    .line 409
    new-instance v13, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 410
    .line 411
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->longPressSensorType()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    iget-object v1, v14, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 416
    .line 417
    const/4 v2, 0x0

    .line 418
    invoke-static {v1, v0, v2}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    const-string v3, "doze_pulse_on_long_press"

    .line 423
    .line 424
    const/4 v4, 0x0

    .line 425
    const/4 v5, 0x1

    .line 426
    const/4 v6, 0x5

    .line 427
    const/16 v16, 0x1

    .line 428
    .line 429
    const/16 v17, 0x1

    .line 430
    .line 431
    const v0, 0x7f05004e

    .line 432
    .line 433
    .line 434
    move-object/from16 v12, v21

    .line 435
    .line 436
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 437
    .line 438
    .line 439
    move-result v10

    .line 440
    const/16 v20, 0x0

    .line 441
    .line 442
    const/4 v7, 0x1

    .line 443
    const/4 v8, 0x1

    .line 444
    const/4 v9, 0x0

    .line 445
    move-object v0, v13

    .line 446
    move-object/from16 v1, p0

    .line 447
    .line 448
    move-object/from16 v22, v12

    .line 449
    .line 450
    move/from16 v12, v20

    .line 451
    .line 452
    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZZZ)V

    .line 453
    .line 454
    .line 455
    const/4 v0, 0x4

    .line 456
    aput-object v13, v15, v0

    .line 457
    .line 458
    new-instance v13, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 459
    .line 460
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->udfpsLongPressSensorType()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    iget-object v1, v14, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 465
    .line 466
    const/4 v2, 0x0

    .line 467
    invoke-static {v1, v0, v2}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    const-string v3, "doze_pulse_on_auth"

    .line 472
    .line 473
    const/4 v4, 0x1

    .line 474
    iget-boolean v0, v14, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    .line 475
    .line 476
    if-eqz v0, :cond_5

    .line 477
    .line 478
    iget-object v0, v14, Lcom/android/systemui/doze/DozeSensors;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 479
    .line 480
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 481
    .line 482
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    iget-object v1, v14, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 487
    .line 488
    invoke-virtual {v1, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-nez v0, :cond_4

    .line 493
    .line 494
    iget-boolean v0, v14, Lcom/android/systemui/doze/DozeSensors;->mScreenOffUdfpsEnabled:Z

    .line 495
    .line 496
    if-eqz v0, :cond_5

    .line 497
    .line 498
    :cond_4
    const/4 v0, 0x1

    .line 499
    goto :goto_2

    .line 500
    :cond_5
    const/4 v0, 0x0

    .line 501
    :goto_2
    move v5, v0

    .line 502
    const/16 v6, 0xa

    .line 503
    .line 504
    const v0, 0x7f05004e

    .line 505
    .line 506
    .line 507
    move-object/from16 v1, v22

    .line 508
    .line 509
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 510
    .line 511
    .line 512
    move-result v10

    .line 513
    const/4 v11, 0x0

    .line 514
    const/4 v12, 0x1

    .line 515
    move-object v0, v13

    .line 516
    move-object/from16 v1, p0

    .line 517
    .line 518
    move/from16 v7, v16

    .line 519
    .line 520
    move/from16 v8, v17

    .line 521
    .line 522
    move/from16 v9, v18

    .line 523
    .line 524
    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZZZ)V

    .line 525
    .line 526
    .line 527
    aput-object v13, v15, v19

    .line 528
    .line 529
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    .line 530
    .line 531
    new-instance v1, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    .line 532
    .line 533
    const/4 v2, 0x2

    .line 534
    invoke-direct {v1, v2}, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;-><init>(I)V

    .line 535
    .line 536
    .line 537
    const-string v2, "doze_wake_display_gesture"

    .line 538
    .line 539
    iget-object v3, v14, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 540
    .line 541
    invoke-virtual {v3}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    .line 542
    .line 543
    .line 544
    move-result v3

    .line 545
    if-eqz v3, :cond_6

    .line 546
    .line 547
    iget-object v3, v14, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 548
    .line 549
    iget-object v4, v14, Lcom/android/systemui/doze/DozeSensors;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 550
    .line 551
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 552
    .line 553
    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 554
    .line 555
    .line 556
    move-result v4

    .line 557
    invoke-virtual {v3, v4}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    if-eqz v3, :cond_6

    .line 562
    .line 563
    const/4 v3, 0x1

    .line 564
    goto :goto_3

    .line 565
    :cond_6
    const/4 v3, 0x0

    .line 566
    :goto_3
    const/4 v4, 0x7

    .line 567
    const/4 v5, 0x0

    .line 568
    const/4 v10, 0x0

    .line 569
    const/4 v6, 0x0

    .line 570
    move-object/from16 p5, v0

    .line 571
    .line 572
    move-object/from16 p6, p0

    .line 573
    .line 574
    move-object/from16 p7, v1

    .line 575
    .line 576
    move-object/from16 p8, v2

    .line 577
    .line 578
    move/from16 p9, v3

    .line 579
    .line 580
    move/from16 p10, v4

    .line 581
    .line 582
    move/from16 p11, v5

    .line 583
    .line 584
    move/from16 p12, v6

    .line 585
    .line 586
    invoke-direct/range {p5 .. p12}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZ)V

    .line 587
    .line 588
    .line 589
    const/4 v1, 0x6

    .line 590
    aput-object v0, v15, v1

    .line 591
    .line 592
    new-instance v11, Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    .line 593
    .line 594
    new-instance v2, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    .line 595
    .line 596
    const/4 v12, 0x1

    .line 597
    invoke-direct {v2, v12}, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;-><init>(I)V

    .line 598
    .line 599
    .line 600
    const-string v3, "doze_wake_screen_gesture"

    .line 601
    .line 602
    iget-object v0, v14, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 603
    .line 604
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    .line 605
    .line 606
    .line 607
    move-result v4

    .line 608
    const/16 v5, 0x8

    .line 609
    .line 610
    const/4 v13, 0x0

    .line 611
    iget-object v0, v14, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 612
    .line 613
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->getWakeLockScreenDebounce()J

    .line 614
    .line 615
    .line 616
    move-result-wide v8

    .line 617
    const/4 v7, 0x0

    .line 618
    move-object v0, v11

    .line 619
    move-object/from16 v1, p0

    .line 620
    .line 621
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZJ)V

    .line 622
    .line 623
    .line 624
    const/4 v0, 0x7

    .line 625
    aput-object v11, v15, v0

    .line 626
    .line 627
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 628
    .line 629
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorType()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    iget-object v2, v14, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 634
    .line 635
    const/4 v3, 0x0

    .line 636
    invoke-static {v2, v1, v3}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    const-string v2, "doze_quick_pickup_gesture"

    .line 641
    .line 642
    const/4 v3, 0x1

    .line 643
    iget-boolean v4, v14, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    .line 644
    .line 645
    if-eqz v4, :cond_7

    .line 646
    .line 647
    iget-object v4, v14, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 648
    .line 649
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 650
    .line 651
    .line 652
    move-result v5

    .line 653
    invoke-virtual {v4, v5}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorEnabled(I)Z

    .line 654
    .line 655
    .line 656
    move-result v4

    .line 657
    if-eqz v4, :cond_7

    .line 658
    .line 659
    move v4, v12

    .line 660
    goto :goto_4

    .line 661
    :cond_7
    const/4 v4, 0x0

    .line 662
    :goto_4
    const/16 v5, 0xb

    .line 663
    .line 664
    const/4 v6, 0x0

    .line 665
    const/4 v7, 0x0

    .line 666
    const/4 v8, 0x1

    .line 667
    const/4 v9, 0x0

    .line 668
    move-object/from16 p1, v0

    .line 669
    .line 670
    move-object/from16 p2, p0

    .line 671
    .line 672
    move-object/from16 p3, v1

    .line 673
    .line 674
    move-object/from16 p4, v2

    .line 675
    .line 676
    move/from16 p5, v3

    .line 677
    .line 678
    move/from16 p6, v4

    .line 679
    .line 680
    move/from16 p7, v5

    .line 681
    .line 682
    move/from16 p8, v10

    .line 683
    .line 684
    move/from16 p9, v13

    .line 685
    .line 686
    move/from16 p10, v6

    .line 687
    .line 688
    move/from16 p11, v7

    .line 689
    .line 690
    move/from16 p12, v8

    .line 691
    .line 692
    move/from16 p13, v9

    .line 693
    .line 694
    invoke-direct/range {p1 .. p13}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZZZ)V

    .line 695
    .line 696
    .line 697
    const/16 v1, 0x8

    .line 698
    .line 699
    aput-object v0, v15, v1

    .line 700
    .line 701
    iput-object v15, v14, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 702
    .line 703
    const/4 v0, 0x0

    .line 704
    invoke-virtual {v14, v0}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 705
    .line 706
    .line 707
    iget-object v0, v14, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 708
    .line 709
    new-instance v1, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda1;

    .line 710
    .line 711
    invoke-direct {v1, v14}, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/doze/DozeSensors;)V

    .line 712
    .line 713
    .line 714
    invoke-interface {v0, v1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 715
    .line 716
    .line 717
    iget-object v0, v14, Lcom/android/systemui/doze/DozeSensors;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 718
    .line 719
    iget-object v1, v14, Lcom/android/systemui/doze/DozeSensors;->mDevicePostureCallback:Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;

    .line 720
    .line 721
    check-cast v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    .line 722
    .line 723
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 724
    .line 725
    .line 726
    return-void
.end method

.method public static findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    xor-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    :cond_0
    const/4 v2, -0x1

    .line 18
    invoke-virtual {p0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_4

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/hardware/Sensor;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    :cond_2
    if-eqz v1, :cond_3

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    :cond_3
    return-object v2

    .line 63
    :cond_4
    const/4 p0, 0x0

    .line 64
    return-object p0
.end method


# virtual methods
.method public final setProxListening(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mRegistered:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    check-cast p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->alertListeners()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    check-cast p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->resume()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    check-cast p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->pause()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public final updateListening()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    move v4, v3

    .line 7
    :goto_0
    if-ge v3, v1, :cond_6

    .line 8
    .line 9
    aget-object v5, v0, v3

    .line 10
    .line 11
    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    if-eqz v6, :cond_3

    .line 15
    .line 16
    iget-boolean v6, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresTouchscreen:Z

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeSensors;->mListeningTouchScreenSensors:Z

    .line 21
    .line 22
    if-eqz v6, :cond_3

    .line 23
    .line 24
    :cond_0
    iget-boolean v6, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresProx:Z

    .line 25
    .line 26
    if-eqz v6, :cond_1

    .line 27
    .line 28
    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeSensors;->mListeningProxSensors:Z

    .line 29
    .line 30
    if-eqz v6, :cond_3

    .line 31
    .line 32
    :cond_1
    iget-boolean v6, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresAod:Z

    .line 33
    .line 34
    if-eqz v6, :cond_2

    .line 35
    .line 36
    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeSensors;->mListeningAodOnlySensors:Z

    .line 37
    .line 38
    if-eqz v6, :cond_3

    .line 39
    .line 40
    :cond_2
    move v6, v7

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move v6, v2

    .line 43
    :goto_1
    iget-boolean v8, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    .line 44
    .line 45
    if-ne v8, v6, :cond_4

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    iput-boolean v6, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    .line 49
    .line 50
    invoke-virtual {v5}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    .line 51
    .line 52
    .line 53
    :goto_2
    if-eqz v6, :cond_5

    .line 54
    .line 55
    move v4, v7

    .line 56
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_6
    if-nez v4, :cond_7

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Lcom/android/systemui/doze/DozeSensors$1;

    .line 64
    .line 65
    invoke-interface {v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingRegistered:Z

    .line 70
    .line 71
    if-nez v0, :cond_9

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 74
    .line 75
    array-length v1, v0

    .line 76
    :goto_3
    if-ge v2, v1, :cond_9

    .line 77
    .line 78
    aget-object v3, v0, v2

    .line 79
    .line 80
    iget-boolean v5, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    .line 81
    .line 82
    if-eqz v5, :cond_8

    .line 83
    .line 84
    iget-object v5, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-nez v5, :cond_8

    .line 91
    .line 92
    iget-object v5, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 93
    .line 94
    iget-object v6, v5, Lcom/android/systemui/doze/DozeSensors;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 95
    .line 96
    iget-object v3, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v5, v5, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Lcom/android/systemui/doze/DozeSensors$1;

    .line 99
    .line 100
    const/4 v7, -0x1

    .line 101
    invoke-interface {v6, v3, v5, v7}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    .line 102
    .line 103
    .line 104
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_9
    :goto_4
    iput-boolean v4, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingRegistered:Z

    .line 108
    .line 109
    return-void
.end method
