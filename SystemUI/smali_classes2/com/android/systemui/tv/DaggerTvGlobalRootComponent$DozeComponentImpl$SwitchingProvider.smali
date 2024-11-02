.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwitchingProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field public final dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

.field public final id:I

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/AssertionError;

    .line 9
    .line 10
    iget v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->id:I

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 13
    .line 14
    .line 15
    throw v1

    .line 16
    :pswitch_0
    new-instance v1, Lcom/android/systemui/doze/AODScreenBrightness;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 19
    .line 20
    iget-object v3, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    move-object v4, v2

    .line 31
    check-cast v4, Lcom/android/systemui/doze/DozeMachine$Service;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 36
    .line 37
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    move-object v5, v2

    .line 42
    check-cast v5, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 43
    .line 44
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->brightnessSensorOptionalOfSensorArray()[Ljava/util/Optional;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 53
    .line 54
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    move-object v7, v2

    .line 59
    check-cast v7, Lcom/android/systemui/doze/DozeHost;

    .line 60
    .line 61
    new-instance v8, Landroid/os/Handler;

    .line 62
    .line 63
    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 67
    .line 68
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->alwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

    .line 69
    .line 70
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    move-object v9, v2

    .line 75
    check-cast v9, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 76
    .line 77
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 78
    .line 79
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 80
    .line 81
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    move-object v10, v2

    .line 86
    check-cast v10, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 87
    .line 88
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 89
    .line 90
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 91
    .line 92
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    move-object v11, v2

    .line 97
    check-cast v11, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 98
    .line 99
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 100
    .line 101
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->devicePostureControllerImplProvider:Ljavax/inject/Provider;

    .line 102
    .line 103
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    move-object v12, v2

    .line 108
    check-cast v12, Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 109
    .line 110
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 111
    .line 112
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    .line 113
    .line 114
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    move-object v13, v2

    .line 119
    check-cast v13, Lcom/android/systemui/doze/DozeLog;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->systemSettingsImpl()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    move-object v14, v0

    .line 128
    check-cast v14, Lcom/android/systemui/util/settings/SystemSettings;

    .line 129
    .line 130
    move-object v2, v1

    .line 131
    invoke-direct/range {v2 .. v14}, Lcom/android/systemui/doze/AODScreenBrightness;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/util/sensors/AsyncSensorManager;[Ljava/util/Optional;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/settings/SystemSettings;)V

    .line 132
    .line 133
    .line 134
    return-object v1

    .line 135
    :pswitch_1
    new-instance v1, Lcom/android/systemui/doze/AODUi;

    .line 136
    .line 137
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 138
    .line 139
    iget-object v3, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 140
    .line 141
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    .line 142
    .line 143
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    move-object/from16 v17, v2

    .line 148
    .line 149
    check-cast v17, Landroid/app/AlarmManager;

    .line 150
    .line 151
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 152
    .line 153
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    .line 154
    .line 155
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    move-object/from16 v18, v2

    .line 160
    .line 161
    check-cast v18, Lcom/android/systemui/util/wakelock/WakeLock;

    .line 162
    .line 163
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 164
    .line 165
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 166
    .line 167
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    move-object/from16 v19, v2

    .line 172
    .line 173
    check-cast v19, Lcom/android/systemui/doze/DozeHost;

    .line 174
    .line 175
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 176
    .line 177
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 178
    .line 179
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    move-object/from16 v20, v2

    .line 184
    .line 185
    check-cast v20, Landroid/os/Handler;

    .line 186
    .line 187
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 188
    .line 189
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 190
    .line 191
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    move-object/from16 v21, v2

    .line 196
    .line 197
    check-cast v21, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 198
    .line 199
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 200
    .line 201
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 202
    .line 203
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    move-object/from16 v22, v2

    .line 208
    .line 209
    check-cast v22, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 210
    .line 211
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 212
    .line 213
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    .line 214
    .line 215
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    move-object/from16 v23, v2

    .line 220
    .line 221
    check-cast v23, Lcom/android/systemui/doze/DozeLog;

    .line 222
    .line 223
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ambientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 226
    .line 227
    .line 228
    move-result-object v24

    .line 229
    move-object v15, v1

    .line 230
    move-object/from16 v16, v3

    .line 231
    .line 232
    invoke-direct/range {v15 .. v24}, Lcom/android/systemui/doze/AODUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/doze/DozeLog;Landroid/hardware/display/AmbientDisplayConfiguration;)V

    .line 233
    .line 234
    .line 235
    return-object v1

    .line 236
    :pswitch_2
    new-instance v1, Lcom/android/systemui/doze/AODMachine;

    .line 237
    .line 238
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 239
    .line 240
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    .line 241
    .line 242
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    move-object v5, v2

    .line 247
    check-cast v5, Lcom/android/systemui/doze/DozeMachine$Service;

    .line 248
    .line 249
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 250
    .line 251
    sget-object v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 252
    .line 253
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ambientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 258
    .line 259
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    .line 260
    .line 261
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    move-object v7, v2

    .line 266
    check-cast v7, Lcom/android/systemui/util/wakelock/WakeLock;

    .line 267
    .line 268
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 269
    .line 270
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 271
    .line 272
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    move-object v8, v2

    .line 277
    check-cast v8, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 278
    .line 279
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 280
    .line 281
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    .line 282
    .line 283
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    move-object v9, v2

    .line 288
    check-cast v9, Lcom/android/systemui/doze/DozeLog;

    .line 289
    .line 290
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 291
    .line 292
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dockManagerImplProvider:Ljavax/inject/Provider;

    .line 293
    .line 294
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    move-object v10, v2

    .line 299
    check-cast v10, Lcom/android/systemui/dock/DockManager;

    .line 300
    .line 301
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 302
    .line 303
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 304
    .line 305
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    move-object v11, v2

    .line 310
    check-cast v11, Lcom/android/systemui/doze/DozeHost;

    .line 311
    .line 312
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 313
    .line 314
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->namedPartArray()[Lcom/android/systemui/doze/DozeMachine$Part;

    .line 315
    .line 316
    .line 317
    move-result-object v12

    .line 318
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 319
    .line 320
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 321
    .line 322
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    move-object v13, v0

    .line 327
    check-cast v13, Lcom/android/systemui/settings/UserTracker;

    .line 328
    .line 329
    move-object v4, v1

    .line 330
    invoke-direct/range {v4 .. v13}, Lcom/android/systemui/doze/AODMachine;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeHost;[Lcom/android/systemui/doze/DozeMachine$Part;Lcom/android/systemui/settings/UserTracker;)V

    .line 331
    .line 332
    .line 333
    return-object v1

    .line 334
    :pswitch_3
    new-instance v1, Lcom/android/systemui/doze/DozeSuppressor;

    .line 335
    .line 336
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 337
    .line 338
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 339
    .line 340
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    move-object v15, v2

    .line 345
    check-cast v15, Lcom/android/systemui/doze/DozeHost;

    .line 346
    .line 347
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 348
    .line 349
    sget-object v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 350
    .line 351
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ambientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 352
    .line 353
    .line 354
    move-result-object v16

    .line 355
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 356
    .line 357
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    .line 358
    .line 359
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    move-object/from16 v17, v2

    .line 364
    .line 365
    check-cast v17, Lcom/android/systemui/doze/DozeLog;

    .line 366
    .line 367
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 368
    .line 369
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    .line 370
    .line 371
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 372
    .line 373
    .line 374
    move-result-object v18

    .line 375
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 376
    .line 377
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 378
    .line 379
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    move-object/from16 v19, v0

    .line 384
    .line 385
    check-cast v19, Lcom/android/systemui/settings/UserTracker;

    .line 386
    .line 387
    move-object v14, v1

    .line 388
    invoke-direct/range {v14 .. v19}, Lcom/android/systemui/doze/DozeSuppressor;-><init>(Lcom/android/systemui/doze/DozeHost;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/doze/DozeLog;Ldagger/Lazy;Lcom/android/systemui/settings/UserTracker;)V

    .line 389
    .line 390
    .line 391
    return-object v1

    .line 392
    :pswitch_4
    new-instance v1, Lcom/android/systemui/doze/DozeAuthRemover;

    .line 393
    .line 394
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 395
    .line 396
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardSecUpdateMonitorImplProvider:Ljavax/inject/Provider;

    .line 397
    .line 398
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 403
    .line 404
    invoke-direct {v1, v0}, Lcom/android/systemui/doze/DozeAuthRemover;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 405
    .line 406
    .line 407
    return-object v1

    .line 408
    :pswitch_5
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 409
    .line 410
    sget-object v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 411
    .line 412
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ambientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 417
    .line 418
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dockManagerImplProvider:Ljavax/inject/Provider;

    .line 419
    .line 420
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    check-cast v2, Lcom/android/systemui/dock/DockManager;

    .line 425
    .line 426
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 427
    .line 428
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 429
    .line 430
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    check-cast v0, Lcom/android/systemui/settings/UserTracker;

    .line 435
    .line 436
    new-instance v3, Lcom/android/systemui/doze/DozeDockHandler;

    .line 437
    .line 438
    invoke-direct {v3, v1, v2, v0}, Lcom/android/systemui/doze/DozeDockHandler;-><init>(Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/settings/UserTracker;)V

    .line 439
    .line 440
    .line 441
    return-object v3

    .line 442
    :pswitch_6
    new-instance v1, Lcom/android/systemui/doze/DozeWallpaperState;

    .line 443
    .line 444
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 445
    .line 446
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWallPaperManagerProvider:Ljavax/inject/Provider;

    .line 447
    .line 448
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    check-cast v2, Landroid/app/IWallpaperManager;

    .line 453
    .line 454
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 455
    .line 456
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    .line 457
    .line 458
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    check-cast v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 463
    .line 464
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 465
    .line 466
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 467
    .line 468
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 473
    .line 474
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/doze/DozeWallpaperState;-><init>(Landroid/app/IWallpaperManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    .line 475
    .line 476
    .line 477
    return-object v1

    .line 478
    :pswitch_7
    new-instance v1, Lcom/android/systemui/doze/DozeScreenBrightness;

    .line 479
    .line 480
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 481
    .line 482
    iget-object v5, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 483
    .line 484
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 485
    .line 486
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    .line 487
    .line 488
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    move-object v6, v2

    .line 493
    check-cast v6, Lcom/android/systemui/doze/DozeMachine$Service;

    .line 494
    .line 495
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 496
    .line 497
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 498
    .line 499
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    move-object v7, v2

    .line 504
    check-cast v7, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 505
    .line 506
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 507
    .line 508
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->brightnessSensorOptionalOfSensorArray()[Ljava/util/Optional;

    .line 509
    .line 510
    .line 511
    move-result-object v8

    .line 512
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 513
    .line 514
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 515
    .line 516
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    move-object v9, v2

    .line 521
    check-cast v9, Lcom/android/systemui/doze/DozeHost;

    .line 522
    .line 523
    new-instance v10, Landroid/os/Handler;

    .line 524
    .line 525
    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    .line 526
    .line 527
    .line 528
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 529
    .line 530
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->alwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

    .line 531
    .line 532
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    move-object v11, v2

    .line 537
    check-cast v11, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 538
    .line 539
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 540
    .line 541
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 542
    .line 543
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    move-object v12, v2

    .line 548
    check-cast v12, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 549
    .line 550
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 551
    .line 552
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 553
    .line 554
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    move-object v13, v2

    .line 559
    check-cast v13, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 560
    .line 561
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 562
    .line 563
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->devicePostureControllerImplProvider:Ljavax/inject/Provider;

    .line 564
    .line 565
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    move-object v14, v2

    .line 570
    check-cast v14, Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 571
    .line 572
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 573
    .line 574
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    .line 575
    .line 576
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    move-object v15, v2

    .line 581
    check-cast v15, Lcom/android/systemui/doze/DozeLog;

    .line 582
    .line 583
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 584
    .line 585
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->systemSettingsImpl()Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    move-object/from16 v16, v0

    .line 590
    .line 591
    check-cast v16, Lcom/android/systemui/util/settings/SystemSettings;

    .line 592
    .line 593
    move-object v4, v1

    .line 594
    invoke-direct/range {v4 .. v16}, Lcom/android/systemui/doze/DozeScreenBrightness;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/util/sensors/AsyncSensorManager;[Ljava/util/Optional;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/settings/SystemSettings;)V

    .line 595
    .line 596
    .line 597
    return-object v1

    .line 598
    :pswitch_8
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 599
    .line 600
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    .line 601
    .line 602
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    move-object v3, v2

    .line 607
    check-cast v3, Lcom/android/systemui/doze/DozeMachine$Service;

    .line 608
    .line 609
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 610
    .line 611
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 612
    .line 613
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    move-object v4, v2

    .line 618
    check-cast v4, Landroid/os/Handler;

    .line 619
    .line 620
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 621
    .line 622
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 623
    .line 624
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    move-object v5, v2

    .line 629
    check-cast v5, Lcom/android/systemui/doze/DozeHost;

    .line 630
    .line 631
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 632
    .line 633
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 634
    .line 635
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    move-object v6, v2

    .line 640
    check-cast v6, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 641
    .line 642
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 643
    .line 644
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    .line 645
    .line 646
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    move-object v7, v2

    .line 651
    check-cast v7, Lcom/android/systemui/util/wakelock/WakeLock;

    .line 652
    .line 653
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 654
    .line 655
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->authControllerProvider:Ljavax/inject/Provider;

    .line 656
    .line 657
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    move-object v8, v2

    .line 662
    check-cast v8, Lcom/android/systemui/biometrics/AuthController;

    .line 663
    .line 664
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 665
    .line 666
    iget-object v9, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->udfpsControllerProvider:Ljavax/inject/Provider;

    .line 667
    .line 668
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    .line 669
    .line 670
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    move-object v10, v2

    .line 675
    check-cast v10, Lcom/android/systemui/doze/DozeLog;

    .line 676
    .line 677
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 678
    .line 679
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->dozeScreenBrightnessProvider:Ljavax/inject/Provider;

    .line 680
    .line 681
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    move-object v11, v0

    .line 686
    check-cast v11, Lcom/android/systemui/doze/DozeScreenBrightness;

    .line 687
    .line 688
    invoke-static/range {v3 .. v11}, Lcom/android/systemui/doze/DozeScreenState_Factory;->newInstance(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/biometrics/AuthController;Ljavax/inject/Provider;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/doze/DozeScreenBrightness;)Lcom/android/systemui/doze/DozeScreenState;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    invoke-virtual {v1, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->injectDozeScreenState(Lcom/android/systemui/doze/DozeScreenState;)Lcom/android/systemui/doze/DozeScreenState;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    return-object v0

    .line 697
    :pswitch_9
    new-instance v10, Lcom/android/systemui/doze/DozeUi;

    .line 698
    .line 699
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 700
    .line 701
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 702
    .line 703
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    .line 704
    .line 705
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    move-object v3, v1

    .line 710
    check-cast v3, Landroid/app/AlarmManager;

    .line 711
    .line 712
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 713
    .line 714
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    .line 715
    .line 716
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    move-object v4, v1

    .line 721
    check-cast v4, Lcom/android/systemui/util/wakelock/WakeLock;

    .line 722
    .line 723
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 724
    .line 725
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 726
    .line 727
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    move-object v5, v1

    .line 732
    check-cast v5, Lcom/android/systemui/doze/DozeHost;

    .line 733
    .line 734
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 735
    .line 736
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 737
    .line 738
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    move-object v6, v1

    .line 743
    check-cast v6, Landroid/os/Handler;

    .line 744
    .line 745
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 746
    .line 747
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 748
    .line 749
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    move-object v7, v1

    .line 754
    check-cast v7, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 755
    .line 756
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 757
    .line 758
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 759
    .line 760
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v1

    .line 764
    move-object v8, v1

    .line 765
    check-cast v8, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 766
    .line 767
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 768
    .line 769
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    .line 770
    .line 771
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    move-object v9, v0

    .line 776
    check-cast v9, Lcom/android/systemui/doze/DozeLog;

    .line 777
    .line 778
    move-object v1, v10

    .line 779
    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/doze/DozeUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/doze/DozeLog;)V

    .line 780
    .line 781
    .line 782
    return-object v10

    .line 783
    :pswitch_a
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers;

    .line 784
    .line 785
    move-object v11, v1

    .line 786
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 787
    .line 788
    iget-object v12, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 789
    .line 790
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 791
    .line 792
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 793
    .line 794
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    move-result-object v2

    .line 798
    move-object v13, v2

    .line 799
    check-cast v13, Lcom/android/systemui/doze/DozeHost;

    .line 800
    .line 801
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 802
    .line 803
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ambientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 804
    .line 805
    .line 806
    move-result-object v14

    .line 807
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 808
    .line 809
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 810
    .line 811
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v2

    .line 815
    move-object v15, v2

    .line 816
    check-cast v15, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 817
    .line 818
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 819
    .line 820
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 821
    .line 822
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v2

    .line 826
    move-object/from16 v16, v2

    .line 827
    .line 828
    check-cast v16, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 829
    .line 830
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 831
    .line 832
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    .line 833
    .line 834
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    move-object/from16 v17, v2

    .line 839
    .line 840
    check-cast v17, Lcom/android/systemui/util/wakelock/WakeLock;

    .line 841
    .line 842
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 843
    .line 844
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dockManagerImplProvider:Ljavax/inject/Provider;

    .line 845
    .line 846
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v2

    .line 850
    move-object/from16 v18, v2

    .line 851
    .line 852
    check-cast v18, Lcom/android/systemui/dock/DockManager;

    .line 853
    .line 854
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 855
    .line 856
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->proximitySensor()Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 857
    .line 858
    .line 859
    move-result-object v19

    .line 860
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 861
    .line 862
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->proximityCheck()Lcom/android/systemui/util/sensors/ProximityCheck;

    .line 863
    .line 864
    .line 865
    move-result-object v20

    .line 866
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 867
    .line 868
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    .line 869
    .line 870
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v2

    .line 874
    move-object/from16 v21, v2

    .line 875
    .line 876
    check-cast v21, Lcom/android/systemui/doze/DozeLog;

    .line 877
    .line 878
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 879
    .line 880
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 881
    .line 882
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    move-object/from16 v22, v2

    .line 887
    .line 888
    check-cast v22, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 889
    .line 890
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 891
    .line 892
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->secureSettingsImpl()Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v2

    .line 896
    move-object/from16 v23, v2

    .line 897
    .line 898
    check-cast v23, Lcom/android/systemui/util/settings/SecureSettings;

    .line 899
    .line 900
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 901
    .line 902
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->authControllerProvider:Ljavax/inject/Provider;

    .line 903
    .line 904
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object v2

    .line 908
    move-object/from16 v24, v2

    .line 909
    .line 910
    check-cast v24, Lcom/android/systemui/biometrics/AuthController;

    .line 911
    .line 912
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 913
    .line 914
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 915
    .line 916
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-result-object v2

    .line 920
    move-object/from16 v25, v2

    .line 921
    .line 922
    check-cast v25, Lcom/android/internal/logging/UiEventLogger;

    .line 923
    .line 924
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 925
    .line 926
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sessionTrackerProvider:Ljavax/inject/Provider;

    .line 927
    .line 928
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v2

    .line 932
    move-object/from16 v26, v2

    .line 933
    .line 934
    check-cast v26, Lcom/android/systemui/log/SessionTracker;

    .line 935
    .line 936
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 937
    .line 938
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 939
    .line 940
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v2

    .line 944
    move-object/from16 v27, v2

    .line 945
    .line 946
    check-cast v27, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 947
    .line 948
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 949
    .line 950
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->devicePostureControllerImplProvider:Ljavax/inject/Provider;

    .line 951
    .line 952
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    move-result-object v2

    .line 956
    move-object/from16 v28, v2

    .line 957
    .line 958
    check-cast v28, Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 959
    .line 960
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 961
    .line 962
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 963
    .line 964
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object v0

    .line 968
    move-object/from16 v29, v0

    .line 969
    .line 970
    check-cast v29, Lcom/android/systemui/settings/UserTracker;

    .line 971
    .line 972
    invoke-direct/range {v11 .. v29}, Lcom/android/systemui/doze/DozeTriggers;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ProximityCheck;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/biometrics/AuthController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/settings/UserTracker;)V

    .line 973
    .line 974
    .line 975
    return-object v1

    .line 976
    :pswitch_b
    new-instance v1, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;

    .line 977
    .line 978
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 979
    .line 980
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    .line 981
    .line 982
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    check-cast v0, Lcom/android/systemui/classifier/FalsingCollector;

    .line 987
    .line 988
    invoke-direct {v1, v0}, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;-><init>(Lcom/android/systemui/classifier/FalsingCollector;)V

    .line 989
    .line 990
    .line 991
    return-object v1

    .line 992
    :pswitch_c
    new-instance v1, Lcom/android/systemui/doze/DozePauser;

    .line 993
    .line 994
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 995
    .line 996
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 997
    .line 998
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 999
    .line 1000
    .line 1001
    move-result-object v2

    .line 1002
    check-cast v2, Landroid/os/Handler;

    .line 1003
    .line 1004
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1005
    .line 1006
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    .line 1007
    .line 1008
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v3

    .line 1012
    check-cast v3, Landroid/app/AlarmManager;

    .line 1013
    .line 1014
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1015
    .line 1016
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->alwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

    .line 1017
    .line 1018
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    check-cast v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 1023
    .line 1024
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/doze/DozePauser;-><init>(Landroid/os/Handler;Landroid/app/AlarmManager;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    .line 1025
    .line 1026
    .line 1027
    return-object v1

    .line 1028
    :pswitch_d
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1029
    .line 1030
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->delayedWakeLockBuilder()Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v1

    .line 1034
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1035
    .line 1036
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 1037
    .line 1038
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v0

    .line 1042
    check-cast v0, Landroid/os/Handler;

    .line 1043
    .line 1044
    iput-object v0, v1, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->mHandler:Landroid/os/Handler;

    .line 1045
    .line 1046
    const-string v2, "Doze"

    .line 1047
    .line 1048
    iput-object v2, v1, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->mTag:Ljava/lang/String;

    .line 1049
    .line 1050
    new-instance v3, Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    .line 1051
    .line 1052
    iget-object v4, v1, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->mContext:Landroid/content/Context;

    .line 1053
    .line 1054
    iget-object v1, v1, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->mLogger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

    .line 1055
    .line 1056
    invoke-static {v4, v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v1

    .line 1060
    invoke-direct {v3, v0, v1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock;-><init>(Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;)V

    .line 1061
    .line 1062
    .line 1063
    return-object v3

    .line 1064
    :pswitch_e
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 1065
    .line 1066
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->dozeMachineService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 1067
    .line 1068
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1069
    .line 1070
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 1071
    .line 1072
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v2

    .line 1076
    check-cast v2, Lcom/android/systemui/doze/DozeHost;

    .line 1077
    .line 1078
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1079
    .line 1080
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 1081
    .line 1082
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v3

    .line 1086
    check-cast v3, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 1087
    .line 1088
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1089
    .line 1090
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 1091
    .line 1092
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 1097
    .line 1098
    invoke-static {v1, v2, v3, v0}, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesWrappedServiceFactory;->providesWrappedService(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Ljava/util/concurrent/Executor;)Lcom/android/systemui/doze/DozeMachine$Service$Delegate;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v0

    .line 1102
    return-object v0

    .line 1103
    :pswitch_f
    new-instance v11, Lcom/android/systemui/doze/DozeMachine;

    .line 1104
    .line 1105
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 1106
    .line 1107
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    .line 1108
    .line 1109
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v1

    .line 1113
    move-object v2, v1

    .line 1114
    check-cast v2, Lcom/android/systemui/doze/DozeMachine$Service;

    .line 1115
    .line 1116
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1117
    .line 1118
    sget-object v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 1119
    .line 1120
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ambientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v3

    .line 1124
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 1125
    .line 1126
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    .line 1127
    .line 1128
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v1

    .line 1132
    move-object v4, v1

    .line 1133
    check-cast v4, Lcom/android/systemui/util/wakelock/WakeLock;

    .line 1134
    .line 1135
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1136
    .line 1137
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 1138
    .line 1139
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v1

    .line 1143
    move-object v5, v1

    .line 1144
    check-cast v5, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 1145
    .line 1146
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1147
    .line 1148
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    .line 1149
    .line 1150
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v1

    .line 1154
    move-object v6, v1

    .line 1155
    check-cast v6, Lcom/android/systemui/doze/DozeLog;

    .line 1156
    .line 1157
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1158
    .line 1159
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dockManagerImplProvider:Ljavax/inject/Provider;

    .line 1160
    .line 1161
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v1

    .line 1165
    move-object v7, v1

    .line 1166
    check-cast v7, Lcom/android/systemui/dock/DockManager;

    .line 1167
    .line 1168
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1169
    .line 1170
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 1171
    .line 1172
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v1

    .line 1176
    move-object v8, v1

    .line 1177
    check-cast v8, Lcom/android/systemui/doze/DozeHost;

    .line 1178
    .line 1179
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->dozeComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;

    .line 1180
    .line 1181
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl;->partArray()[Lcom/android/systemui/doze/DozeMachine$Part;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v9

    .line 1185
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DozeComponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1186
    .line 1187
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 1188
    .line 1189
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v0

    .line 1193
    move-object v10, v0

    .line 1194
    check-cast v10, Lcom/android/systemui/settings/UserTracker;

    .line 1195
    .line 1196
    move-object v1, v11

    .line 1197
    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/doze/DozeMachine;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeHost;[Lcom/android/systemui/doze/DozeMachine$Part;Lcom/android/systemui/settings/UserTracker;)V

    .line 1198
    .line 1199
    .line 1200
    return-object v11

    .line 1201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
