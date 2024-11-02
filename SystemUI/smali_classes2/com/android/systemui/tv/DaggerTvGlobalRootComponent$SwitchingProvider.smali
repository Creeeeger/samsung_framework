.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;
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
.field public final id:I

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->id:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->id:I

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x64

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->get1()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 16
    .line 17
    iget p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->id:I

    .line 18
    .line 19
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->get0()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final get0()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->id:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/AssertionError;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->id:I

    .line 9
    .line 10
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 11
    .line 12
    .line 13
    throw v0

    .line 14
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 17
    .line 18
    const-class v0, Landroid/app/job/JobScheduler;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 25
    .line 26
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_1
    new-instance p0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldSharedInternalModule:Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    .line 41
    .line 42
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionProgressForwarderProvider:Ljavax/inject/Provider;

    .line 51
    .line 52
    invoke-static {v1, v0, p0}, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_ProvideProgressForwarderFactory;->provideProgressForwarder(Lcom/android/systemui/unfold/UnfoldSharedInternalModule;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Ljavax/inject/Provider;)Ljava/util/Optional;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 60
    .line 61
    const-class v0, Landroid/app/StatsManager;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Landroid/app/StatsManager;

    .line 68
    .line 69
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :pswitch_4
    sget-object p0, Lcom/android/systemui/shared/system/PackageManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    .line 74
    .line 75
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 82
    .line 83
    const-class v0, Landroid/hardware/input/InputManager;

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Landroid/hardware/input/InputManager;

    .line 90
    .line 91
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 98
    .line 99
    const-class v0, Landroid/app/role/RoleManager;

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    check-cast p0, Landroid/app/role/RoleManager;

    .line 106
    .line 107
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    return-object p0

    .line 111
    :pswitch_7
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    return-object p0

    .line 119
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 122
    .line 123
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 124
    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 130
    .line 131
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    return-object p0

    .line 135
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 138
    .line 139
    const-class v0, Landroid/content/pm/LauncherApps;

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    check-cast p0, Landroid/content/pm/LauncherApps;

    .line 146
    .line 147
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    return-object p0

    .line 151
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 152
    .line 153
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    .line 154
    .line 155
    invoke-static {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideINotificationManagerFactory;->provideINotificationManager(Lcom/android/systemui/dagger/FrameworkServicesModule;)Landroid/app/INotificationManager;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    return-object p0

    .line 160
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 163
    .line 164
    const-class v0, Landroid/safetycenter/SafetyCenterManager;

    .line 165
    .line 166
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    check-cast p0, Landroid/safetycenter/SafetyCenterManager;

    .line 171
    .line 172
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    return-object p0

    .line 176
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 179
    .line 180
    invoke-static {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvidePermissionManagerFactory;->providePermissionManager(Landroid/content/Context;)Landroid/permission/PermissionManager;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    return-object p0

    .line 185
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 188
    .line 189
    const-class v0, Landroid/hardware/camera2/CameraManager;

    .line 190
    .line 191
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 196
    .line 197
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    return-object p0

    .line 201
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 202
    .line 203
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 204
    .line 205
    const-class v0, Landroid/bluetooth/BluetoothManager;

    .line 206
    .line 207
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    check-cast p0, Landroid/bluetooth/BluetoothManager;

    .line 212
    .line 213
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    return-object p0

    .line 217
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 218
    .line 219
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideBluetoothManagerProvider:Ljavax/inject/Provider;

    .line 220
    .line 221
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    check-cast p0, Landroid/bluetooth/BluetoothManager;

    .line 226
    .line 227
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    return-object p0

    .line 232
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 233
    .line 234
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 235
    .line 236
    const-class v0, Landroid/net/NetworkScoreManager;

    .line 237
    .line 238
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    check-cast p0, Landroid/net/NetworkScoreManager;

    .line 243
    .line 244
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    return-object p0

    .line 248
    :pswitch_11
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 249
    .line 250
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 251
    .line 252
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideFaceManagerProvider:Ljavax/inject/Provider;

    .line 253
    .line 254
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, Landroid/hardware/face/FaceManager;

    .line 259
    .line 260
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 261
    .line 262
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesFingerprintManagerProvider:Ljavax/inject/Provider;

    .line 263
    .line 264
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 269
    .line 270
    invoke-static {v1, v0, p0}, Lcom/android/systemui/dagger/FrameworkServicesModule;->providesBiometricManager(Landroid/content/Context;Landroid/hardware/face/FaceManager;Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/biometrics/BiometricManager;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    return-object p0

    .line 275
    :pswitch_12
    const-string p0, "dreams"

    .line 276
    .line 277
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-static {p0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    return-object p0

    .line 289
    :pswitch_13
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 290
    .line 291
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 292
    .line 293
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    .line 294
    .line 295
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    .line 300
    .line 301
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    return-object p0

    .line 305
    :pswitch_14
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 306
    .line 307
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 308
    .line 309
    const-class v0, Landroid/hardware/SensorPrivacyManager;

    .line 310
    .line 311
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    check-cast p0, Landroid/hardware/SensorPrivacyManager;

    .line 316
    .line 317
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    return-object p0

    .line 321
    :pswitch_15
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 322
    .line 323
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 324
    .line 325
    const-class v0, Landroid/media/AudioManager;

    .line 326
    .line 327
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    check-cast p0, Landroid/media/AudioManager;

    .line 332
    .line 333
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    return-object p0

    .line 337
    :pswitch_16
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 338
    .line 339
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 340
    .line 341
    const-class v0, Landroid/telephony/CarrierConfigManager;

    .line 342
    .line 343
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    check-cast p0, Landroid/telephony/CarrierConfigManager;

    .line 348
    .line 349
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    return-object p0

    .line 353
    :pswitch_17
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 354
    .line 355
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 356
    .line 357
    const-class v0, Landroid/net/wifi/WifiManager;

    .line 358
    .line 359
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object p0

    .line 363
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 364
    .line 365
    return-object p0

    .line 366
    :pswitch_18
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 367
    .line 368
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 369
    .line 370
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 371
    .line 372
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object p0

    .line 376
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 377
    .line 378
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    return-object p0

    .line 382
    :pswitch_19
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 383
    .line 384
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 385
    .line 386
    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 387
    .line 388
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 393
    .line 394
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    return-object p0

    .line 398
    :pswitch_1a
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 399
    .line 400
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 401
    .line 402
    const-class v0, Landroid/net/ConnectivityManager;

    .line 403
    .line 404
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object p0

    .line 408
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 409
    .line 410
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    return-object p0

    .line 414
    :pswitch_1b
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 415
    .line 416
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 417
    .line 418
    invoke-static {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideSatelliteManagerFactory;->provideSatelliteManager(Landroid/content/Context;)Ljava/util/Optional;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    return-object p0

    .line 423
    :pswitch_1c
    new-instance p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 424
    .line 425
    invoke-direct {p0}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;-><init>()V

    .line 426
    .line 427
    .line 428
    return-object p0

    .line 429
    :pswitch_1d
    new-instance p0, Lcom/android/systemui/util/CoverUtil;

    .line 430
    .line 431
    invoke-direct {p0}, Lcom/android/systemui/util/CoverUtil;-><init>()V

    .line 432
    .line 433
    .line 434
    return-object p0

    .line 435
    :pswitch_1e
    new-instance v0, Lcom/android/systemui/vibrate/VibrationUtil;

    .line 436
    .line 437
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 438
    .line 439
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 440
    .line 441
    invoke-direct {v0, p0}, Lcom/android/systemui/vibrate/VibrationUtil;-><init>(Landroid/content/Context;)V

    .line 442
    .line 443
    .line 444
    return-object v0

    .line 445
    :pswitch_1f
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 446
    .line 447
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 448
    .line 449
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    .line 450
    .line 451
    .line 452
    move-result-object p0

    .line 453
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    return-object p0

    .line 457
    :pswitch_20
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 458
    .line 459
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 460
    .line 461
    const-class v0, Landroid/app/smartspace/SmartspaceManager;

    .line 462
    .line 463
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object p0

    .line 467
    check-cast p0, Landroid/app/smartspace/SmartspaceManager;

    .line 468
    .line 469
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    return-object p0

    .line 473
    :pswitch_21
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 474
    .line 475
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 476
    .line 477
    const-class v0, Landroid/app/KeyguardManager;

    .line 478
    .line 479
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object p0

    .line 483
    check-cast p0, Landroid/app/KeyguardManager;

    .line 484
    .line 485
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    return-object p0

    .line 489
    :pswitch_22
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 490
    .line 491
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 492
    .line 493
    const-class v0, Landroid/app/trust/TrustManager;

    .line 494
    .line 495
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object p0

    .line 499
    check-cast p0, Landroid/app/trust/TrustManager;

    .line 500
    .line 501
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    return-object p0

    .line 505
    :pswitch_23
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 506
    .line 507
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 508
    .line 509
    const-class v0, Landroid/os/Vibrator;

    .line 510
    .line 511
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object p0

    .line 515
    check-cast p0, Landroid/os/Vibrator;

    .line 516
    .line 517
    return-object p0

    .line 518
    :pswitch_24
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 519
    .line 520
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 521
    .line 522
    const-class v0, Landroid/app/AlarmManager;

    .line 523
    .line 524
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object p0

    .line 528
    check-cast p0, Landroid/app/AlarmManager;

    .line 529
    .line 530
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 531
    .line 532
    .line 533
    return-object p0

    .line 534
    :pswitch_25
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 535
    .line 536
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 537
    .line 538
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideNaturalRotationProgressProvider:Ljavax/inject/Provider;

    .line 539
    .line 540
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object p0

    .line 544
    check-cast p0, Ljava/util/Optional;

    .line 545
    .line 546
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    sget-object v0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideStatusBarScopedTransitionProvider$1;->INSTANCE:Lcom/android/systemui/unfold/UnfoldTransitionModule$provideStatusBarScopedTransitionProvider$1;

    .line 550
    .line 551
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 552
    .line 553
    .line 554
    move-result-object p0

    .line 555
    return-object p0

    .line 556
    :pswitch_26
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 557
    .line 558
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 559
    .line 560
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 561
    .line 562
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->rotationChangeProvider()Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 567
    .line 568
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    .line 569
    .line 570
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object p0

    .line 574
    check-cast p0, Ljava/util/Optional;

    .line 575
    .line 576
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 577
    .line 578
    .line 579
    new-instance v1, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideNaturalRotationProgressProvider$1;

    .line 580
    .line 581
    invoke-direct {v1, v2, v0}, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideNaturalRotationProgressProvider$1;-><init>(Landroid/content/Context;Lcom/android/systemui/unfold/updates/RotationChangeProvider;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 585
    .line 586
    .line 587
    move-result-object p0

    .line 588
    return-object p0

    .line 589
    :pswitch_27
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 590
    .line 591
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->androidInternalsModule:Lcom/android/systemui/dagger/AndroidInternalsModule;

    .line 592
    .line 593
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 594
    .line 595
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    .line 597
    .line 598
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 599
    .line 600
    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 601
    .line 602
    .line 603
    return-object v0

    .line 604
    :pswitch_28
    new-instance p0, Lcom/android/systemui/util/wrapper/BuildInfo;

    .line 605
    .line 606
    invoke-direct {p0}, Lcom/android/systemui/util/wrapper/BuildInfo;-><init>()V

    .line 607
    .line 608
    .line 609
    return-object p0

    .line 610
    :pswitch_29
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 611
    .line 612
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 613
    .line 614
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 615
    .line 616
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object p0

    .line 620
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 621
    .line 622
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 623
    .line 624
    .line 625
    return-object p0

    .line 626
    :pswitch_2a
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 627
    .line 628
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 629
    .line 630
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    .line 631
    .line 632
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object p0

    .line 636
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 637
    .line 638
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    return-object p0

    .line 642
    :pswitch_2b
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 643
    .line 644
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    .line 645
    .line 646
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 647
    .line 648
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    .line 650
    .line 651
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 652
    .line 653
    .line 654
    move-result-object p0

    .line 655
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 656
    .line 657
    .line 658
    return-object p0

    .line 659
    :pswitch_2c
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 660
    .line 661
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 662
    .line 663
    invoke-static {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule;->provideFaceManager(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    .line 664
    .line 665
    .line 666
    move-result-object p0

    .line 667
    return-object p0

    .line 668
    :pswitch_2d
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 669
    .line 670
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 671
    .line 672
    invoke-static {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule;->providesFingerprintManager(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    .line 673
    .line 674
    .line 675
    move-result-object p0

    .line 676
    return-object p0

    .line 677
    :pswitch_2e
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 678
    .line 679
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 680
    .line 681
    const-class v0, Landroid/view/WindowManager;

    .line 682
    .line 683
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object p0

    .line 687
    check-cast p0, Landroid/view/WindowManager;

    .line 688
    .line 689
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 690
    .line 691
    .line 692
    return-object p0

    .line 693
    :pswitch_2f
    new-instance p0, Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 694
    .line 695
    invoke-direct {p0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;-><init>()V

    .line 696
    .line 697
    .line 698
    return-object p0

    .line 699
    :pswitch_30
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInUserTestHarness()Z

    .line 700
    .line 701
    .line 702
    move-result p0

    .line 703
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 704
    .line 705
    .line 706
    move-result-object p0

    .line 707
    return-object p0

    .line 708
    :pswitch_31
    const-string/jumbo p0, "statusbar"

    .line 709
    .line 710
    .line 711
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 712
    .line 713
    .line 714
    move-result-object p0

    .line 715
    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 716
    .line 717
    .line 718
    move-result-object p0

    .line 719
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 720
    .line 721
    .line 722
    return-object p0

    .line 723
    :pswitch_32
    const-string/jumbo p0, "wallpaper"

    .line 724
    .line 725
    .line 726
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 727
    .line 728
    .line 729
    move-result-object p0

    .line 730
    invoke-static {p0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    .line 731
    .line 732
    .line 733
    move-result-object p0

    .line 734
    return-object p0

    .line 735
    :pswitch_33
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 736
    .line 737
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainLooperProvider:Ljavax/inject/Provider;

    .line 738
    .line 739
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object p0

    .line 743
    check-cast p0, Landroid/os/Looper;

    .line 744
    .line 745
    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 746
    .line 747
    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    .line 748
    .line 749
    .line 750
    return-object v0

    .line 751
    :pswitch_34
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 752
    .line 753
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    .line 754
    .line 755
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 756
    .line 757
    .line 758
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 759
    .line 760
    .line 761
    move-result-object p0

    .line 762
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 763
    .line 764
    .line 765
    return-object p0

    .line 766
    :pswitch_35
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 767
    .line 768
    .line 769
    move-result-object p0

    .line 770
    const/16 v0, -0x100

    .line 771
    .line 772
    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    .line 773
    .line 774
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->configDebugOverlay(ID)V

    .line 775
    .line 776
    .line 777
    return-object p0

    .line 778
    :pswitch_36
    new-instance p0, Lcom/android/systemui/log/NoLogcatEchoTracker;

    .line 779
    .line 780
    invoke-direct {p0}, Lcom/android/systemui/log/NoLogcatEchoTracker;-><init>()V

    .line 781
    .line 782
    .line 783
    return-object p0

    .line 784
    :pswitch_37
    const-string p0, "batterystats"

    .line 785
    .line 786
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 787
    .line 788
    .line 789
    move-result-object p0

    .line 790
    invoke-static {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    .line 791
    .line 792
    .line 793
    move-result-object p0

    .line 794
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 795
    .line 796
    .line 797
    return-object p0

    .line 798
    :pswitch_38
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 799
    .line 800
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 801
    .line 802
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 803
    .line 804
    .line 805
    move-result-object p0

    .line 806
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 807
    .line 808
    .line 809
    return-object p0

    .line 810
    :pswitch_39
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 811
    .line 812
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->globalModule:Lcom/android/systemui/dagger/GlobalModule;

    .line 813
    .line 814
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 815
    .line 816
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 817
    .line 818
    .line 819
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 820
    .line 821
    .line 822
    move-result-object p0

    .line 823
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 824
    .line 825
    .line 826
    return-object p0

    .line 827
    :pswitch_3a
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 828
    .line 829
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 830
    .line 831
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideDeviceStateManagerProvider:Ljavax/inject/Provider;

    .line 832
    .line 833
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 838
    .line 839
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 840
    .line 841
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    .line 842
    .line 843
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v2

    .line 847
    check-cast v2, Landroid/content/Context;

    .line 848
    .line 849
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 850
    .line 851
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 852
    .line 853
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    move-result-object p0

    .line 857
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 858
    .line 859
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 860
    .line 861
    .line 862
    new-instance v1, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 863
    .line 864
    invoke-direct {v1, v2}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v0, p0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 868
    .line 869
    .line 870
    return-object v1

    .line 871
    :pswitch_3b
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 872
    .line 873
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 874
    .line 875
    const-class v0, Landroid/os/PowerManager;

    .line 876
    .line 877
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object p0

    .line 881
    check-cast p0, Landroid/os/PowerManager;

    .line 882
    .line 883
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 884
    .line 885
    .line 886
    return-object p0

    .line 887
    :pswitch_3c
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 888
    .line 889
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->globalModule:Lcom/android/systemui/dagger/GlobalModule;

    .line 890
    .line 891
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 892
    .line 893
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 894
    .line 895
    .line 896
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 897
    .line 898
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 899
    .line 900
    .line 901
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 902
    .line 903
    .line 904
    move-result-object p0

    .line 905
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 906
    .line 907
    .line 908
    return-object v0

    .line 909
    :pswitch_3d
    new-instance p0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    .line 910
    .line 911
    invoke-direct {p0}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;-><init>()V

    .line 912
    .line 913
    .line 914
    return-object p0

    .line 915
    :pswitch_3e
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 916
    .line 917
    sget-object v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 918
    .line 919
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->namedListOfString()Ljava/util/List;

    .line 920
    .line 921
    .line 922
    move-result-object p0

    .line 923
    invoke-static {}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginDebugFactory;->providesPluginDebug()Z

    .line 924
    .line 925
    .line 926
    move-result v0

    .line 927
    invoke-static {p0, v0}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginInstanceFactoryFactory;->providesPluginInstanceFactory(Ljava/util/List;Z)Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    .line 928
    .line 929
    .line 930
    move-result-object p0

    .line 931
    return-object p0

    .line 932
    :pswitch_3f
    new-instance v0, Lcom/android/systemui/plugins/PluginEnablerImpl;

    .line 933
    .line 934
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 935
    .line 936
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 937
    .line 938
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    .line 939
    .line 940
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object p0

    .line 944
    check-cast p0, Landroid/content/pm/PackageManager;

    .line 945
    .line 946
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/plugins/PluginEnablerImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 947
    .line 948
    .line 949
    return-object v0

    .line 950
    :pswitch_40
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 951
    .line 952
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 953
    .line 954
    const-class v0, Landroid/app/NotificationManager;

    .line 955
    .line 956
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    move-result-object p0

    .line 960
    check-cast p0, Landroid/app/NotificationManager;

    .line 961
    .line 962
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 963
    .line 964
    .line 965
    return-object p0

    .line 966
    :pswitch_41
    new-instance p0, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;

    .line 967
    .line 968
    invoke-direct {p0}, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;-><init>()V

    .line 969
    .line 970
    .line 971
    invoke-static {p0}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginExecutorFactory;->providesPluginExecutor(Lcom/android/systemui/util/concurrency/ThreadFactory;)Ljava/util/concurrent/Executor;

    .line 972
    .line 973
    .line 974
    move-result-object p0

    .line 975
    return-object p0

    .line 976
    :pswitch_42
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 977
    .line 978
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 979
    .line 980
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    .line 981
    .line 982
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    move-object v2, v0

    .line 987
    check-cast v2, Landroid/content/pm/PackageManager;

    .line 988
    .line 989
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 990
    .line 991
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 992
    .line 993
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    move-object v3, v0

    .line 998
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 999
    .line 1000
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1001
    .line 1002
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesPluginExecutorProvider:Ljavax/inject/Provider;

    .line 1003
    .line 1004
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0

    .line 1008
    move-object v4, v0

    .line 1009
    check-cast v4, Ljava/util/concurrent/Executor;

    .line 1010
    .line 1011
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1012
    .line 1013
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    .line 1014
    .line 1015
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    move-object v5, v0

    .line 1020
    check-cast v5, Landroid/app/NotificationManager;

    .line 1021
    .line 1022
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1023
    .line 1024
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->pluginEnablerImplProvider:Ljavax/inject/Provider;

    .line 1025
    .line 1026
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    move-object v6, v0

    .line 1031
    check-cast v6, Lcom/android/systemui/shared/plugins/PluginEnabler;

    .line 1032
    .line 1033
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1034
    .line 1035
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->namedListOfString()Ljava/util/List;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v7

    .line 1039
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1040
    .line 1041
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesPluginInstanceFactoryProvider:Ljavax/inject/Provider;

    .line 1042
    .line 1043
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object p0

    .line 1047
    move-object v8, p0

    .line 1048
    check-cast v8, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    .line 1049
    .line 1050
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/plugins/PluginsModule_ProvidePluginInstanceManagerFactoryFactory;->providePluginInstanceManagerFactory(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/app/NotificationManager;Lcom/android/systemui/shared/plugins/PluginEnabler;Ljava/util/List;Lcom/android/systemui/shared/plugins/PluginInstance$Factory;)Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;

    .line 1051
    .line 1052
    .line 1053
    move-result-object p0

    .line 1054
    return-object p0

    .line 1055
    :pswitch_43
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1056
    .line 1057
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1058
    .line 1059
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePluginInstanceManagerFactoryProvider:Ljavax/inject/Provider;

    .line 1060
    .line 1061
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    move-object v2, v0

    .line 1066
    check-cast v2, Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;

    .line 1067
    .line 1068
    invoke-static {}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginDebugFactory;->providesPluginDebug()Z

    .line 1069
    .line 1070
    .line 1071
    move-result v3

    .line 1072
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1073
    .line 1074
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->uncaughtExceptionPreHandlerManagerProvider:Ljavax/inject/Provider;

    .line 1075
    .line 1076
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    move-object v4, v0

    .line 1081
    check-cast v4, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    .line 1082
    .line 1083
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1084
    .line 1085
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->pluginEnablerImplProvider:Ljavax/inject/Provider;

    .line 1086
    .line 1087
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v0

    .line 1091
    move-object v5, v0

    .line 1092
    check-cast v5, Lcom/android/systemui/shared/plugins/PluginEnabler;

    .line 1093
    .line 1094
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1095
    .line 1096
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->pluginPrefs()Lcom/android/systemui/shared/plugins/PluginPrefs;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v6

    .line 1100
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1101
    .line 1102
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->namedListOfString()Ljava/util/List;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v7

    .line 1106
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1107
    .line 1108
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesPluginInstanceFactoryProvider:Ljavax/inject/Provider;

    .line 1109
    .line 1110
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1111
    .line 1112
    .line 1113
    move-result-object p0

    .line 1114
    move-object v8, p0

    .line 1115
    check-cast v8, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    .line 1116
    .line 1117
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginManagerFactory;->providesPluginManager(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;ZLcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;Lcom/android/systemui/shared/plugins/PluginEnabler;Lcom/android/systemui/shared/plugins/PluginPrefs;Ljava/util/List;Lcom/android/systemui/shared/plugins/PluginInstance$Factory;)Lcom/android/systemui/plugins/PluginManager;

    .line 1118
    .line 1119
    .line 1120
    move-result-object p0

    .line 1121
    return-object p0

    .line 1122
    :pswitch_44
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1123
    .line 1124
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->androidInternalsModule:Lcom/android/systemui/dagger/AndroidInternalsModule;

    .line 1125
    .line 1126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1127
    .line 1128
    .line 1129
    new-instance p0, Lcom/android/internal/logging/MetricsLogger;

    .line 1130
    .line 1131
    invoke-direct {p0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 1132
    .line 1133
    .line 1134
    return-object p0

    .line 1135
    :pswitch_45
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 1136
    .line 1137
    .line 1138
    move-result-object p0

    .line 1139
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1140
    .line 1141
    .line 1142
    return-object p0

    .line 1143
    :pswitch_46
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1144
    .line 1145
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1146
    .line 1147
    const-class v0, Landroid/os/UserManager;

    .line 1148
    .line 1149
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    move-result-object p0

    .line 1153
    check-cast p0, Landroid/os/UserManager;

    .line 1154
    .line 1155
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1156
    .line 1157
    .line 1158
    return-object p0

    .line 1159
    :pswitch_47
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1160
    .line 1161
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1162
    .line 1163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1164
    .line 1165
    .line 1166
    move-result-object p0

    .line 1167
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1168
    .line 1169
    .line 1170
    return-object p0

    .line 1171
    :pswitch_48
    new-instance p0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 1172
    .line 1173
    invoke-direct {p0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    .line 1174
    .line 1175
    .line 1176
    return-object p0

    .line 1177
    :pswitch_49
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 1178
    .line 1179
    .line 1180
    move-result-object p0

    .line 1181
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1182
    .line 1183
    .line 1184
    return-object p0

    .line 1185
    :pswitch_4a
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1186
    .line 1187
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 1188
    .line 1189
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->deviceStateManagerFoldProvider:Ljavax/inject/Provider;

    .line 1190
    .line 1191
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    check-cast v0, Lcom/android/systemui/unfold/updates/FoldProvider;

    .line 1196
    .line 1197
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1198
    .line 1199
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 1200
    .line 1201
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v2

    .line 1205
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 1206
    .line 1207
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1208
    .line 1209
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    .line 1210
    .line 1211
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    move-result-object p0

    .line 1215
    check-cast p0, Ljava/util/Optional;

    .line 1216
    .line 1217
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1218
    .line 1219
    .line 1220
    new-instance v1, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;

    .line 1221
    .line 1222
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;-><init>(Lcom/android/systemui/unfold/updates/FoldProvider;Ljava/util/concurrent/Executor;)V

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 1226
    .line 1227
    .line 1228
    move-result-object p0

    .line 1229
    return-object p0

    .line 1230
    :pswitch_4b
    new-instance v0, Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;

    .line 1231
    .line 1232
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1233
    .line 1234
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideFoldStateProvider:Ljavax/inject/Provider;

    .line 1235
    .line 1236
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1237
    .line 1238
    .line 1239
    move-result-object p0

    .line 1240
    check-cast p0, Lcom/android/systemui/unfold/updates/FoldStateProvider;

    .line 1241
    .line 1242
    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;-><init>(Lcom/android/systemui/unfold/updates/FoldStateProvider;)V

    .line 1243
    .line 1244
    .line 1245
    return-object v0

    .line 1246
    :pswitch_4c
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1247
    .line 1248
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1249
    .line 1250
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 1251
    .line 1252
    .line 1253
    move-result-object p0

    .line 1254
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1255
    .line 1256
    .line 1257
    return-object p0

    .line 1258
    :pswitch_4d
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 1259
    .line 1260
    .line 1261
    move-result-object p0

    .line 1262
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1263
    .line 1264
    .line 1265
    return-object p0

    .line 1266
    :pswitch_4e
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1267
    .line 1268
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainLooperProvider:Ljavax/inject/Provider;

    .line 1269
    .line 1270
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1271
    .line 1272
    .line 1273
    move-result-object p0

    .line 1274
    check-cast p0, Landroid/os/Looper;

    .line 1275
    .line 1276
    new-instance v0, Landroid/os/Handler;

    .line 1277
    .line 1278
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1279
    .line 1280
    .line 1281
    return-object v0

    .line 1282
    :pswitch_4f
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1283
    .line 1284
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1285
    .line 1286
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 1287
    .line 1288
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1289
    .line 1290
    .line 1291
    move-result-object p0

    .line 1292
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 1293
    .line 1294
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1295
    .line 1296
    .line 1297
    return-object p0

    .line 1298
    :pswitch_50
    new-instance p0, Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;

    .line 1299
    .line 1300
    invoke-direct {p0}, Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;-><init>()V

    .line 1301
    .line 1302
    .line 1303
    return-object p0

    .line 1304
    :pswitch_51
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1305
    .line 1306
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldSharedModule:Lcom/android/systemui/unfold/UnfoldSharedModule;

    .line 1307
    .line 1308
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldKeyguardVisibilityManagerImplProvider:Ljavax/inject/Provider;

    .line 1309
    .line 1310
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1311
    .line 1312
    .line 1313
    move-result-object p0

    .line 1314
    check-cast p0, Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;

    .line 1315
    .line 1316
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1317
    .line 1318
    .line 1319
    return-object p0

    .line 1320
    :pswitch_52
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1321
    .line 1322
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1323
    .line 1324
    const-class v0, Landroid/app/ActivityManager;

    .line 1325
    .line 1326
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1327
    .line 1328
    .line 1329
    move-result-object p0

    .line 1330
    check-cast p0, Landroid/app/ActivityManager;

    .line 1331
    .line 1332
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1333
    .line 1334
    .line 1335
    return-object p0

    .line 1336
    :pswitch_53
    new-instance v0, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

    .line 1337
    .line 1338
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1339
    .line 1340
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideActivityManagerProvider:Ljavax/inject/Provider;

    .line 1341
    .line 1342
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1343
    .line 1344
    .line 1345
    move-result-object p0

    .line 1346
    check-cast p0, Landroid/app/ActivityManager;

    .line 1347
    .line 1348
    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;-><init>(Landroid/app/ActivityManager;)V

    .line 1349
    .line 1350
    .line 1351
    return-object v0

    .line 1352
    :pswitch_54
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1353
    .line 1354
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1355
    .line 1356
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 1357
    .line 1358
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1359
    .line 1360
    .line 1361
    move-result-object p0

    .line 1362
    check-cast p0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 1363
    .line 1364
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1365
    .line 1366
    .line 1367
    return-object p0

    .line 1368
    :pswitch_55
    new-instance v0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;

    .line 1369
    .line 1370
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1371
    .line 1372
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideDeviceStateManagerProvider:Ljavax/inject/Provider;

    .line 1373
    .line 1374
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v1

    .line 1378
    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 1379
    .line 1380
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1381
    .line 1382
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1383
    .line 1384
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;-><init>(Landroid/hardware/devicestate/DeviceStateManager;Landroid/content/Context;)V

    .line 1385
    .line 1386
    .line 1387
    return-object v0

    .line 1388
    :pswitch_56
    new-instance p0, Lcom/android/systemui/dump/DumpManager;

    .line 1389
    .line 1390
    invoke-direct {p0}, Lcom/android/systemui/dump/DumpManager;-><init>()V

    .line 1391
    .line 1392
    .line 1393
    return-object p0

    .line 1394
    :pswitch_57
    new-instance v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 1395
    .line 1396
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1397
    .line 1398
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 1399
    .line 1400
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1401
    .line 1402
    .line 1403
    move-result-object p0

    .line 1404
    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    .line 1405
    .line 1406
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;-><init>(Lcom/android/systemui/dump/DumpManager;)V

    .line 1407
    .line 1408
    .line 1409
    return-object v0

    .line 1410
    :pswitch_58
    new-instance v0, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;

    .line 1411
    .line 1412
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1413
    .line 1414
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 1415
    .line 1416
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1417
    .line 1418
    .line 1419
    move-result-object p0

    .line 1420
    check-cast p0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 1421
    .line 1422
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;-><init>(Lcom/android/systemui/keyguard/ScreenLifecycle;)V

    .line 1423
    .line 1424
    .line 1425
    return-object v0

    .line 1426
    :pswitch_59
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 1427
    .line 1428
    .line 1429
    move-result-object p0

    .line 1430
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1431
    .line 1432
    .line 1433
    return-object p0

    .line 1434
    :pswitch_5a
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1435
    .line 1436
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1437
    .line 1438
    const-class v0, Landroid/hardware/SensorManager;

    .line 1439
    .line 1440
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1441
    .line 1442
    .line 1443
    move-result-object p0

    .line 1444
    check-cast p0, Landroid/hardware/SensorManager;

    .line 1445
    .line 1446
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1447
    .line 1448
    .line 1449
    return-object p0

    .line 1450
    :pswitch_5b
    new-instance v0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    .line 1451
    .line 1452
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1453
    .line 1454
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesSensorManagerProvider:Ljavax/inject/Provider;

    .line 1455
    .line 1456
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v1

    .line 1460
    check-cast v1, Landroid/hardware/SensorManager;

    .line 1461
    .line 1462
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1463
    .line 1464
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 1465
    .line 1466
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1467
    .line 1468
    .line 1469
    move-result-object p0

    .line 1470
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 1471
    .line 1472
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;-><init>(Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)V

    .line 1473
    .line 1474
    .line 1475
    return-object v0

    .line 1476
    :pswitch_5c
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1477
    .line 1478
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldSharedModule:Lcom/android/systemui/unfold/UnfoldSharedModule;

    .line 1479
    .line 1480
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->deviceFoldStateProvider()Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 1481
    .line 1482
    .line 1483
    move-result-object p0

    .line 1484
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1485
    .line 1486
    .line 1487
    return-object p0

    .line 1488
    :pswitch_5d
    new-instance v0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;

    .line 1489
    .line 1490
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1491
    .line 1492
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1493
    .line 1494
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideFoldStateProvider:Ljavax/inject/Provider;

    .line 1495
    .line 1496
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1497
    .line 1498
    .line 1499
    move-result-object p0

    .line 1500
    check-cast p0, Lcom/android/systemui/unfold/updates/FoldStateProvider;

    .line 1501
    .line 1502
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;-><init>(Landroid/content/Context;Lcom/android/systemui/unfold/updates/FoldStateProvider;)V

    .line 1503
    .line 1504
    .line 1505
    return-object v0

    .line 1506
    :pswitch_5e
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1507
    .line 1508
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1509
    .line 1510
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1511
    .line 1512
    .line 1513
    move-result-object p0

    .line 1514
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1515
    .line 1516
    .line 1517
    return-object p0

    .line 1518
    :pswitch_5f
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider$1;

    .line 1519
    .line 1520
    invoke-direct {v0, p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider$1;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;)V

    .line 1521
    .line 1522
    .line 1523
    return-object v0

    .line 1524
    :pswitch_60
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1525
    .line 1526
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldSharedInternalModule:Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

    .line 1527
    .line 1528
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    .line 1529
    .line 1530
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v0

    .line 1534
    move-object v2, v0

    .line 1535
    check-cast v2, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;

    .line 1536
    .line 1537
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1538
    .line 1539
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->factoryProvider:Ljavax/inject/Provider;

    .line 1540
    .line 1541
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v0

    .line 1545
    move-object v3, v0

    .line 1546
    check-cast v3, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;

    .line 1547
    .line 1548
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1549
    .line 1550
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->aTraceLoggerTransitionProgressListener()Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v4

    .line 1554
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1555
    .line 1556
    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->physicsBasedUnfoldTransitionProgressProvider:Ljavax/inject/Provider;

    .line 1557
    .line 1558
    iget-object v6, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->fixedTimingTransitionProgressProvider:Ljavax/inject/Provider;

    .line 1559
    .line 1560
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/unfold/UnfoldSharedInternalModule_UnfoldTransitionProgressProviderFactory;->unfoldTransitionProgressProvider(Lcom/android/systemui/unfold/UnfoldSharedInternalModule;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljava/util/Optional;

    .line 1561
    .line 1562
    .line 1563
    move-result-object p0

    .line 1564
    return-object p0

    .line 1565
    :pswitch_61
    new-instance p0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    .line 1566
    .line 1567
    invoke-direct {p0}, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;-><init>()V

    .line 1568
    .line 1569
    .line 1570
    return-object p0

    .line 1571
    :pswitch_62
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1572
    .line 1573
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 1574
    .line 1575
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    .line 1576
    .line 1577
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v0

    .line 1581
    check-cast v0, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;

    .line 1582
    .line 1583
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1584
    .line 1585
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    .line 1586
    .line 1587
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUnfoldOnlyProvider:Ljavax/inject/Provider;

    .line 1588
    .line 1589
    invoke-static {v1, v0, v2, p0}, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvideShellProgressProviderFactory;->provideShellProgressProvider(Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    .line 1590
    .line 1591
    .line 1592
    move-result-object p0

    .line 1593
    return-object p0

    .line 1594
    :pswitch_63
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 1595
    .line 1596
    .line 1597
    move-result-object p0

    .line 1598
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1599
    .line 1600
    .line 1601
    return-object p0

    .line 1602
    nop

    .line 1603
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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

.method public final get1()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->id:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/AssertionError;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->id:I

    .line 9
    .line 10
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 11
    .line 12
    .line 13
    throw v0

    .line 14
    :pswitch_0
    new-instance p0, Lcom/android/dream/lowlight/LowLightTransitionCoordinator;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/android/dream/lowlight/LowLightTransitionCoordinator;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideOptionalVibratorFactory;->provideOptionalVibrator(Landroid/content/Context;)Ljava/util/Optional;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :pswitch_3
    new-instance p0, Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;-><init>()V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 53
    .line 54
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 61
    .line 62
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideOptionalTelecomManagerFactory;->provideOptionalTelecomManager(Landroid/content/Context;)Ljava/util/Optional;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :pswitch_6
    const-string/jumbo p0, "package"

    .line 76
    .line 77
    .line 78
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldSharedModule:Lcom/android/systemui/unfold/UnfoldSharedModule;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldKeyguardVisibilityManagerImplProvider:Ljavax/inject/Provider;

    .line 95
    .line 96
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    check-cast p0, Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    return-object p0

    .line 106
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 109
    .line 110
    const-class v0, Landroid/content/om/OverlayManager;

    .line 111
    .line 112
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    check-cast p0, Landroid/content/om/OverlayManager;

    .line 117
    .line 118
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-object p0

    .line 122
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 125
    .line 126
    const-class v0, Landroid/os/storage/StorageManager;

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Landroid/os/storage/StorageManager;

    .line 133
    .line 134
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    return-object p0

    .line 138
    :pswitch_a
    new-instance v0, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->coverUtilProvider:Ljavax/inject/Provider;

    .line 143
    .line 144
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Lcom/android/systemui/util/CoverUtil;

    .line 149
    .line 150
    invoke-direct {v0, p0}, Lcom/android/systemui/basic/util/CoverUtilWrapper;-><init>(Lcom/android/systemui/util/CoverUtil;)V

    .line 151
    .line 152
    .line 153
    return-object v0

    .line 154
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 155
    .line 156
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesFoldStateLoggingProvider:Ljavax/inject/Provider;

    .line 159
    .line 160
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Ljava/util/Optional;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    sget-object v0, Lcom/android/systemui/unfold/UnfoldTransitionModule$providesFoldStateLogger$1;->INSTANCE:Lcom/android/systemui/unfold/UnfoldTransitionModule$providesFoldStateLogger$1;

    .line 170
    .line 171
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    return-object p0

    .line 176
    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 177
    .line 178
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 179
    .line 180
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    .line 181
    .line 182
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;

    .line 187
    .line 188
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 189
    .line 190
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideFoldStateProvider:Ljavax/inject/Provider;

    .line 191
    .line 192
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {v1, v0, p0}, Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvidesFoldStateLoggingProviderFactory;->providesFoldStateLoggingProvider(Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Ldagger/Lazy;)Ljava/util/Optional;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    return-object p0

    .line 201
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 202
    .line 203
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 204
    .line 205
    const-class v0, Landroid/app/AppOpsManager;

    .line 206
    .line 207
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    check-cast p0, Landroid/app/AppOpsManager;

    .line 212
    .line 213
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    return-object p0

    .line 217
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 218
    .line 219
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 220
    .line 221
    const-class v0, Landroid/app/UiModeManager;

    .line 222
    .line 223
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    check-cast p0, Landroid/app/UiModeManager;

    .line 228
    .line 229
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    return-object p0

    .line 233
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 234
    .line 235
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 236
    .line 237
    const-class v0, Landroid/telecom/TelecomManager;

    .line 238
    .line 239
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    check-cast p0, Landroid/telecom/TelecomManager;

    .line 244
    .line 245
    return-object p0

    .line 246
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 247
    .line 248
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 249
    .line 250
    const-class v0, Landroid/os/PowerExemptionManager;

    .line 251
    .line 252
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    check-cast p0, Landroid/os/PowerExemptionManager;

    .line 257
    .line 258
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    return-object p0

    .line 262
    :pswitch_11
    new-instance v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    .line 263
    .line 264
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 265
    .line 266
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesPluginManagerProvider:Ljavax/inject/Provider;

    .line 267
    .line 268
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-direct {v0, p0}, Lcom/android/systemui/plugins/PluginDependencyProvider;-><init>(Ldagger/Lazy;)V

    .line 273
    .line 274
    .line 275
    return-object v0

    .line 276
    :pswitch_12
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 277
    .line 278
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 279
    .line 280
    const-class v0, Landroid/view/accessibility/CaptioningManager;

    .line 281
    .line 282
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    .line 287
    .line 288
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    return-object p0

    .line 292
    :pswitch_13
    const-string p0, "audio"

    .line 293
    .line 294
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    invoke-static {p0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    return-object p0

    .line 306
    :pswitch_14
    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    return-object p0

    .line 314
    nop

    .line 315
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
