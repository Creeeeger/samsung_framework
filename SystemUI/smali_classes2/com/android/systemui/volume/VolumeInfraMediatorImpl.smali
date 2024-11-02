.class public final Lcom/android/systemui/volume/VolumeInfraMediatorImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;


# instance fields
.field public final accessibilityManagerWrapper:Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

.field public final audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

.field public final bixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

.field public final bluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

.field public final bluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

.field public final broadcastSender:Lcom/android/systemui/volume/util/BroadcastSender;

.field public final configurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

.field public final context:Landroid/content/Context;

.field public final desktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

.field public final deviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

.field public final displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

.field public final handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public final powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

.field public final saLoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

.field public final semPersonaManagerWrapper:Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final soundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

.field public final soundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

.field public final statusBarStateControllerWrapper:Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

.field public final statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

.field public final systemClockWrapper:Lcom/android/systemui/volume/util/SystemClockWrapper;

.field public final volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

.field public final zenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroid/content/Context;

    .line 5
    .line 6
    check-cast p1, Lcom/android/systemui/volume/VolumeDependency;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/content/Context;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->context:Landroid/content/Context;

    .line 15
    .line 16
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 25
    .line 26
    const-class v0, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 35
    .line 36
    const-class v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 45
    .line 46
    const-class v0, Lcom/android/systemui/volume/util/BixbyServiceManager;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/systemui/volume/util/BixbyServiceManager;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

    .line 55
    .line 56
    const-class v0, Lcom/android/systemui/basic/util/LogWrapper;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/android/systemui/basic/util/LogWrapper;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 65
    .line 66
    const-class v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 75
    .line 76
    const-class v0, Lcom/android/systemui/volume/util/ZenModeHelper;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/android/systemui/volume/util/ZenModeHelper;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->zenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;

    .line 85
    .line 86
    const-class v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->soundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 95
    .line 96
    const-class v0, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->accessibilityManagerWrapper:Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    .line 105
    .line 106
    const-class v0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarStateControllerWrapper:Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    .line 115
    .line 116
    const-class v0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 123
    .line 124
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->soundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 125
    .line 126
    const-class v0, Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 133
    .line 134
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 135
    .line 136
    const-class v0, Lcom/android/systemui/volume/util/SystemClockWrapper;

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Lcom/android/systemui/volume/util/SystemClockWrapper;

    .line 143
    .line 144
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->systemClockWrapper:Lcom/android/systemui/volume/util/SystemClockWrapper;

    .line 145
    .line 146
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 153
    .line 154
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 155
    .line 156
    const-class v0, Lcom/android/systemui/volume/util/ConfigurationWrapper;

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Lcom/android/systemui/volume/util/ConfigurationWrapper;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->configurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

    .line 165
    .line 166
    const-class v0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    .line 173
    .line 174
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->desktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    .line 175
    .line 176
    const-class v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 183
    .line 184
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 185
    .line 186
    const-class v0, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    .line 193
    .line 194
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    .line 195
    .line 196
    const-class v0, Lcom/android/systemui/volume/util/BroadcastSender;

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Lcom/android/systemui/volume/util/BroadcastSender;

    .line 203
    .line 204
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->broadcastSender:Lcom/android/systemui/volume/util/BroadcastSender;

    .line 205
    .line 206
    const-class v0, Lcom/android/systemui/volume/util/SALoggingWrapper;

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Lcom/android/systemui/volume/util/SALoggingWrapper;

    .line 213
    .line 214
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->saLoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

    .line 215
    .line 216
    const-class v0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    .line 223
    .line 224
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->semPersonaManagerWrapper:Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    .line 225
    .line 226
    const-class v0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    check-cast v0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    .line 233
    .line 234
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    .line 235
    .line 236
    const-class v0, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    .line 243
    .line 244
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->deviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    .line 245
    .line 246
    return-void
.end method


# virtual methods
.method public final disableSafeMediaVolume()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_disableSafeMediaVolume"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final varargs get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getMultiSoundDevice()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getAudioCastDeviceName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getActiveBtDeviceName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    goto :goto_0

    .line 40
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getSystemTime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    goto :goto_0

    .line 49
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getCutoutHeight()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    goto :goto_0

    .line 58
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getTimeoutControlsText()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    goto :goto_0

    .line 67
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getTimeoutControls()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    goto :goto_0

    .line 76
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getSmartViewDeviceName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    goto :goto_0

    .line 81
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getPinDevice()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    goto :goto_0

    .line 90
    :pswitch_9
    aget-object p2, p2, v1

    .line 91
    .line 92
    check-cast p2, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getPinDeviceName(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    goto :goto_0

    .line 103
    :pswitch_a
    aget-object p2, p2, v1

    .line 104
    .line 105
    check-cast p2, Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getPinAppName(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    goto :goto_0

    .line 116
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getDevicesForStreamMusic()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    goto :goto_0

    .line 125
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getBtCallDeviceName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    goto :goto_0

    .line 130
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getEarProtectLimit()I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    :goto_0
    if-eqz p2, :cond_0

    .line 139
    .line 140
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->SYSTEM_TIME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 141
    .line 142
    if-eq v0, p1, :cond_0

    .line 143
    .line 144
    new-instance v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;

    .line 145
    .line 146
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;-><init>(Lcom/android/systemui/volume/VolumeInfraMediatorImpl;Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 150
    .line 151
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    .line 152
    .line 153
    .line 154
    :cond_0
    return-object p2

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
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

.method public final getActiveBtDeviceName()Ljava/lang/String;
    .locals 5

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    const-string v2, "#vol.infraMediator_getActiveBtDeviceName"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isMusicShareEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->getCastDeviceConnectedName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getActiveBTDeviceName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_1
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isMusicShareEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->getCastDeviceConnectedName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v4}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getActiveBTDeviceName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    :goto_1
    return-object p0
.end method

.method public final getAudioCastDeviceName()Ljava/lang/String;
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_getAudioCastDeviceName"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->getCastDeviceConnectedName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->getCastDeviceConnectedName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_0
    return-object p0
.end method

.method public final getBixbyServiceState()V
    .locals 5

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const-string v3, "getBixbyServiceState"

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const-string v2, "#vol.infraMediator_getBixbyServiceState"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v2, Ljava/lang/Thread;

    .line 22
    .line 23
    new-instance v4, Lcom/android/systemui/volume/util/BixbyServiceManager$getBixbyServiceState$1;

    .line 24
    .line 25
    invoke-direct {v4, p0}, Lcom/android/systemui/volume/util/BixbyServiceManager$getBixbyServiceState$1;-><init>(Lcom/android/systemui/volume/util/BixbyServiceManager;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v0, Ljava/lang/Thread;

    .line 49
    .line 50
    new-instance v1, Lcom/android/systemui/volume/util/BixbyServiceManager$getBixbyServiceState$1;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/util/BixbyServiceManager$getBixbyServiceState$1;-><init>(Lcom/android/systemui/volume/util/BixbyServiceManager;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method public final getBtCallDeviceName()Ljava/lang/String;
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_getBtCallDeviceName"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getBtCallDeviceName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getBtCallDeviceName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_0
    return-object p0
.end method

.method public final getCaptionsComponentState(Z)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_getCaptionsComponentState"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final getCutoutHeight()I
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_getCutoutHeight"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->getCutoutHeight()I

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->getCutoutHeight()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0
.end method

.method public final getDevicesForStreamMusic()I
    .locals 4

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x3

    .line 8
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const-string v2, "#vol.infraMediator_getDevicesForStreamMusic"

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 18
    .line 19
    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    :goto_0
    return p0
.end method

.method public final getEarProtectLimit()I
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_getEarProtectLimit"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    :goto_0
    return p0
.end method

.method public final getMultiSoundDevice()I
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->soundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_getMultiSoundDevice"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getMultiSoundDevice()I

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getMultiSoundDevice()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    :goto_0
    return p0
.end method

.method public final getMusicFineVolume()I
    .locals 5

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x3

    .line 9
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const-string v2, "#vol.infraMediator_getMusicFineVolume"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 19
    .line 20
    invoke-virtual {p0, v4, v3}, Landroid/media/AudioManager;->getFineVolume(II)I

    .line 21
    .line 22
    .line 23
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 34
    .line 35
    invoke-virtual {p0, v4, v3}, Landroid/media/AudioManager;->getFineVolume(II)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    :goto_0
    return p0
.end method

.method public final getPinAppName(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_getPinAppName"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getPinAppName(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getPinAppName(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_0
    return-object p0
.end method

.method public final getPinDevice()I
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_getPinDevice"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetPinDevice()I

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetPinDevice()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    :goto_0
    return p0
.end method

.method public final getPinDeviceName(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_getPinDeviceName"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getPinDeviceName(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getPinDeviceName(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_0
    return-object p0
.end method

.method public final getSmartViewDeviceName()Ljava/lang/String;
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_getSmartViewDeviceName"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getSmartViewDeviceName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getSmartViewDeviceName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_0
    return-object p0
.end method

.method public final getSystemTime()J
    .locals 4

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->systemClockWrapper:Lcom/android/systemui/volume/util/SystemClockWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_getSystemTime"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    :goto_0
    return-wide v2
.end method

.method public final getTimeoutControls()I
    .locals 4

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x4

    .line 8
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->accessibilityManagerWrapper:Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const-string v2, "#vol.infraMediator_getTimeoutControls"

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(I)I

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    :goto_0
    return p0
.end method

.method public final getTimeoutControlsText()I
    .locals 4

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x6

    .line 8
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->accessibilityManagerWrapper:Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const-string v2, "#vol.infraMediator_getTimeoutControlsText"

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(I)I

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    :goto_0
    return p0
.end method

.method public final initSound(I)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->soundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_initSound"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->initSound(I)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->initSound(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final isAllSoundOff()Z
    .locals 6

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    const-string v5, "all_sound_off"

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    const-string v2, "#vol.infraMediator_isAllSoundOff"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 21
    .line 22
    invoke-virtual {p0, v5}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 27
    .line 28
    .line 29
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-ne p0, v4, :cond_0

    .line 31
    .line 32
    move v3, v4

    .line 33
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 43
    .line 44
    invoke-virtual {p0, v5}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-ne p0, v4, :cond_2

    .line 53
    .line 54
    move v3, v4

    .line 55
    :cond_2
    :goto_0
    return v3
.end method

.method public final isAodVolumePanel()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isAodVolumePanel"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isAODVolumePanel()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isAODVolumePanel()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0
.end method

.method public final isAudioMirroring()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isAudioMirroring"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isAudioMirroring()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isAudioMirroring()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0
.end method

.method public final isBixbyServiceForeground()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isBixbyServiceForeground"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceForeground()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceForeground()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0
.end method

.method public final isBixbyServiceOn()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isBixbyServiceOn"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceChecked:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-boolean p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceOn:Z

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;->checkBixbyServiceEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput-boolean v2, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    move p0, v2

    .line 32
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceChecked:Z

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-boolean p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceOn:Z

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;->checkBixbyServiceEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceOn:Z

    .line 52
    .line 53
    move p0, v0

    .line 54
    :goto_2
    return p0
.end method

.method public final isBleCallDeviceOn()Z
    .locals 6

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x1

    .line 8
    const/16 v4, 0x1a

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    const-string v2, "#vol.infraMediator_isBleCallDeviceOn"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/media/AudioManager;->getCommunicationDevice()Landroid/media/AudioDeviceInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 29
    .line 30
    .line 31
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-ne p0, v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move v3, v5

    .line 38
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/media/AudioManager;->getCommunicationDevice()Landroid/media/AudioDeviceInfo;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-ne p0, v4, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v3, v5

    .line 62
    :goto_2
    return v3
.end method

.method public final isBluetoothScoOn()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isBluetoothScoOn"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    :goto_0
    return p0
.end method

.method public final isBudsTogetherEnabled()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isBudsTogetherEnabled"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isBudsTogetherEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isBudsTogetherEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0
.end method

.method public final isCaptionEnabled()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isCaptionEnabled"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->areCaptionsEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->areCaptionsEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0
.end method

.method public final isDensityOrFontChanged()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->configurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isDensityOrFontChanged"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isDensityOrFontScaleChanged()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isDensityOrFontScaleChanged()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0
.end method

.method public final isDexMode()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->desktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isDexMode"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 17
    .line 18
    check-cast p0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 21
    .line 22
    .line 23
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 34
    .line 35
    check-cast p0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    :goto_0
    return p0
.end method

.method public final isDisplayTypeChanged()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->configurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isDisplayTypeChanged"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isDisplayTypeChanged()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isDisplayTypeChanged()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0
.end method

.method public final varargs isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isAodVolumePanel()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :pswitch_1
    const/4 v1, 0x1

    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isMultiSoundOn()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isCaptionEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isSetupWizardComplete()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isBudsTogetherEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isKioskModeEnabled()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isDexMode()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isLcdOff()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isDisplayTypeChanged()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isStandalone()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isDensityOrFontChanged()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isOrientationChanged()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isShadeLockedState()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isKeyguardState()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isMediaDefault()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    goto :goto_0

    .line 107
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isHasVibrator()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    goto :goto_0

    .line 112
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isAllSoundOff()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    goto :goto_0

    .line 117
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isVoiceCapable()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    goto :goto_0

    .line 122
    :pswitch_13
    aget-object p2, p2, v1

    .line 123
    .line 124
    check-cast p2, Ljava/lang/Integer;

    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isZenModeNone(I)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    goto :goto_0

    .line 135
    :pswitch_14
    aget-object p2, p2, v1

    .line 136
    .line 137
    check-cast p2, Ljava/lang/Integer;

    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isZenModePriorityOnly(I)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    goto :goto_0

    .line 148
    :pswitch_15
    aget-object p2, p2, v1

    .line 149
    .line 150
    check-cast p2, Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isZenModeEnabled(I)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    goto :goto_0

    .line 161
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isSmartView()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    goto :goto_0

    .line 166
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isBixbyServiceOn()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    goto :goto_0

    .line 171
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isBixbyServiceForeground()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    goto :goto_0

    .line 176
    :pswitch_19
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isBleCallDeviceOn()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    goto :goto_0

    .line 181
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isBluetoothScoOn()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    goto :goto_0

    .line 186
    :pswitch_1b
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isUserInCall()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    goto :goto_0

    .line 191
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isSafeMediaVolumePinDeviceOn()Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    goto :goto_0

    .line 196
    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isSafeMediaVolumeDeviceOn()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    :goto_0
    new-instance p2, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$isEnabled$1;

    .line 201
    .line 202
    invoke-direct {p2, p0, p1, v1}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$isEnabled$1;-><init>(Lcom/android/systemui/volume/VolumeInfraMediatorImpl;Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;Z)V

    .line 203
    .line 204
    .line 205
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 206
    .line 207
    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    .line 208
    .line 209
    .line 210
    return v1

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isHasVibrator()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isHasVibrator"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0
.end method

.method public final isKeyguardState()Z
    .locals 5

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarStateControllerWrapper:Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const-string v2, "#vol.infraMediator_isKeyguardState"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 19
    .line 20
    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 21
    .line 22
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    if-ne p0, v4, :cond_0

    .line 25
    .line 26
    move v3, v4

    .line 27
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 37
    .line 38
    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 39
    .line 40
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 41
    .line 42
    if-ne p0, v4, :cond_2

    .line 43
    .line 44
    move v3, v4

    .line 45
    :cond_2
    :goto_0
    return v3
.end method

.method public final isKioskModeEnabled()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->semPersonaManagerWrapper:Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isKioskModeEnabled"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;->context:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;->context:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    :goto_0
    return p0
.end method

.method public final isLcdOff()Z
    .locals 5

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->context:Landroid/content/Context;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string v2, "#vol.infraMediator_isLcdOff"

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-object p0, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const-class p0, Landroid/os/PowerManager;

    .line 28
    .line 29
    invoke-virtual {v4, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroid/os/PowerManager;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 36
    .line 37
    .line 38
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    xor-int/2addr v3, p0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    sget-object p0, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const-class p0, Landroid/os/PowerManager;

    .line 58
    .line 59
    invoke-virtual {v4, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Landroid/os/PowerManager;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v3, 0x0

    .line 73
    :goto_0
    return v3
.end method

.method public final isLeBroadcasting()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isLeBroadcasting"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isLeBroadcasting()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isLeBroadcasting()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0
.end method

.method public final isMediaDefault()Z
    .locals 5

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->soundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const-string v2, "#vol.infraMediator_isMediaDefault"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    .line 21
    .line 22
    .line 23
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v3, v4

    .line 28
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v3, v4

    .line 47
    :goto_1
    return v3
.end method

.method public final isMultiSoundOn()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->soundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isMultiSoundOn"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    :goto_0
    return p0
.end method

.method public final isOrientationChanged()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->configurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isOrientationChanged"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isOrientationChanged()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isOrientationChanged()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0
.end method

.method public final isSafeMediaVolumeDeviceOn()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isSafeMediaVolumeDeviceOn"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    :goto_0
    return p0
.end method

.method public final isSafeMediaVolumePinDeviceOn()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isSafeMediaVolumePinDeviceOn"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetPinDevice()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->isSafeMediaVolumeDeviceOn(I)Z

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetPinDevice()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->isSafeMediaVolumeDeviceOn(I)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    :goto_0
    return p0
.end method

.method public final isSetupWizardComplete()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->deviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isSetupWizardComplete"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->isDeviceProvisioned()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->isDeviceProvisioned()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0
.end method

.method public final isShadeLockedState()Z
    .locals 6

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x2

    .line 10
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarStateControllerWrapper:Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    const-string v2, "#vol.infraMediator_isShadeLockedState"

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 20
    .line 21
    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 22
    .line 23
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    if-ne p0, v5, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v3, v4

    .line 29
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 39
    .line 40
    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 41
    .line 42
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 43
    .line 44
    if-ne p0, v5, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v3, v4

    .line 48
    :goto_1
    return v3
.end method

.method public final isSmartView()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isSmartView"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isSmartViewEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isSmartViewEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0
.end method

.method public final isStandalone()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->desktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isStandalone"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 17
    .line 18
    check-cast p0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isStandalone()Z

    .line 21
    .line 22
    .line 23
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 34
    .line 35
    check-cast p0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isStandalone()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    :goto_0
    return p0
.end method

.method public final isSupportTvVolumeSync()Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide/16 v1, 0x1000

    .line 4
    .line 5
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const/4 v4, 0x7

    .line 10
    const-string v5, ", validPlayerType="

    .line 11
    .line 12
    const-string v6, ", dlnaEnabled="

    .line 13
    .line 14
    const-string v7, ", supportTvVolumeControl="

    .line 15
    .line 16
    const-string v8, ", screenSharing="

    .line 17
    .line 18
    const-string v9, "VolumeInfraMediatorImpl"

    .line 19
    .line 20
    iget-object v10, v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 21
    .line 22
    iget-object v11, v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 25
    .line 26
    const-string/jumbo v13, "supportTvVolumeControl="

    .line 27
    .line 28
    .line 29
    if-eqz v3, :cond_5

    .line 30
    .line 31
    const-string v3, "#vol.infraMediator_isSupportTvVolumeSync"

    .line 32
    .line 33
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->supportTvVolumeControl()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    sget-object v14, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    .line 44
    .line 45
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object v14, v11, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->context:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {v14}, Lcom/android/systemui/volume/util/SystemServiceExtension;->getDisplayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;

    .line 51
    .line 52
    .line 53
    move-result-object v14

    .line 54
    invoke-virtual {v14}, Landroid/hardware/display/DisplayManager;->semGetScreenSharingStatus()I

    .line 55
    .line 56
    .line 57
    move-result v14

    .line 58
    if-eq v14, v4, :cond_0

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v4, 0x0

    .line 63
    :goto_0
    if-eqz v3, :cond_1

    .line 64
    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    const/4 v14, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/4 v14, 0x0

    .line 70
    :goto_1
    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->isDLNAEnabled()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {v11}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->isValidPlayerType()Z

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    if-eqz v11, :cond_2

    .line 81
    .line 82
    const/4 v15, 0x1

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const/4 v15, 0x0

    .line 85
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v10, v9, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .line 123
    .line 124
    if-nez v14, :cond_4

    .line 125
    .line 126
    if-eqz v15, :cond_3

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_3
    const/4 v12, 0x0

    .line 130
    goto :goto_4

    .line 131
    :cond_4
    :goto_3
    const/4 v12, 0x1

    .line 132
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 133
    .line 134
    .line 135
    return v12

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_5
    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->supportTvVolumeControl()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    sget-object v2, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    iget-object v2, v11, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->context:Landroid/content/Context;

    .line 154
    .line 155
    invoke-static {v2}, Lcom/android/systemui/volume/util/SystemServiceExtension;->getDisplayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetScreenSharingStatus()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eq v2, v4, :cond_6

    .line 164
    .line 165
    const/4 v2, 0x1

    .line 166
    goto :goto_5

    .line 167
    :cond_6
    const/4 v2, 0x0

    .line 168
    :goto_5
    if-eqz v1, :cond_7

    .line 169
    .line 170
    if-eqz v2, :cond_7

    .line 171
    .line 172
    const/4 v3, 0x1

    .line 173
    goto :goto_6

    .line 174
    :cond_7
    const/4 v3, 0x0

    .line 175
    :goto_6
    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->isDLNAEnabled()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    invoke-virtual {v11}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->isValidPlayerType()Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-eqz v0, :cond_8

    .line 184
    .line 185
    if-eqz v4, :cond_8

    .line 186
    .line 187
    const/4 v11, 0x1

    .line 188
    goto :goto_7

    .line 189
    :cond_8
    const/4 v11, 0x0

    .line 190
    :goto_7
    invoke-static {v13, v1, v8, v2, v7}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-static {v2, v1, v6, v0, v5}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v10, v9, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    if-nez v3, :cond_a

    .line 208
    .line 209
    if-eqz v11, :cond_9

    .line 210
    .line 211
    goto :goto_8

    .line 212
    :cond_9
    const/4 v12, 0x0

    .line 213
    goto :goto_9

    .line 214
    :cond_a
    :goto_8
    const/4 v12, 0x1

    .line 215
    :goto_9
    return v12
.end method

.method public final isUserInCall()Z
    .locals 7

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x3

    .line 11
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    const-string v2, "#vol.infraMediator_isUserInCall"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/media/AudioManager;->getModeInternal()I

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eq p0, v6, :cond_0

    .line 27
    .line 28
    if-ne p0, v4, :cond_1

    .line 29
    .line 30
    :cond_0
    move v3, v5

    .line 31
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/media/AudioManager;->getModeInternal()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eq p0, v6, :cond_3

    .line 47
    .line 48
    if-ne p0, v4, :cond_4

    .line 49
    .line 50
    :cond_3
    move v3, v5

    .line 51
    :cond_4
    :goto_0
    return v3
.end method

.method public final isVoiceCapable()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isVoiceCapable"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    :goto_0
    return p0
.end method

.method public final isVolumeStarEnabled()Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_isVolumeStarEnabled"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isVolumeStarEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isVolumeStarEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0
.end method

.method public final isZenModeEnabled(I)Z
    .locals 5

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->zenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const-string v2, "#vol.infraMediator_isZenModeEnabled"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    .line 22
    .line 23
    .line 24
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v3, v4

    .line 31
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v3, v4

    .line 53
    :goto_1
    return v3
.end method

.method public final isZenModeNone(I)Z
    .locals 6

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x2

    .line 10
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->zenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    const-string v2, "#vol.infraMediator_isZenModeNone"

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    if-ne p1, v5, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v3, v4

    .line 26
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    if-ne p1, v5, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v3, v4

    .line 42
    :goto_1
    return v3
.end method

.method public final isZenModePriorityOnly(I)Z
    .locals 5

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->zenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const-string v2, "#vol.infraMediator_isZenModePriorityOnly"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    if-ne p1, v4, :cond_0

    .line 22
    .line 23
    move v3, v4

    .line 24
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    if-ne p1, v4, :cond_2

    .line 37
    .line 38
    move v3, v4

    .line 39
    :cond_2
    :goto_0
    return v3
.end method

.method public final notifyVisible(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final playSound()V
    .locals 3

    const-wide/16 v0, 0x1000

    .line 1
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->soundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_playSound"

    .line 2
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v2, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$1;-><init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;)V

    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$1;-><init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;)V

    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final playSound(I)V
    .locals 3

    const-wide/16 v0, 0x1000

    .line 9
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->soundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_playSound"

    .line 10
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 11
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v2, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;-><init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;I)V

    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;-><init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;I)V

    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->saLoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_sendEventLog"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/android/systemui/volume/util/SALoggingWrapper;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/android/systemui/volume/util/SALoggingWrapper;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final sendSystemDialogsCloseAction()V
    .locals 4

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->broadcastSender:Lcom/android/systemui/volume/util/BroadcastSender;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const-string v2, "#vol.infraMediator_sendSystemDialogsCloseAction"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v2, Landroid/content/Intent;

    .line 22
    .line 23
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastSender;->context:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v0, Landroid/content/Intent;

    .line 46
    .line 47
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastSender;->context:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public final setActiveStream(I)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_setActiveStream"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final setCaptionEnabled(Z)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_setCaptionEnabled"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setCaptionsEnabled(Z)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setCaptionsEnabled(Z)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final setRingerMode(IZ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_setRingerMode"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final setSafeMediaVolume()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_setSafeMediaVolume"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/media/AudioManager;->setSafeMediaVolume()V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/media/AudioManager;->setSafeMediaVolume()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final setSafeVolumeDialogShowing(Z)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_setSafeVolumeDialogShowing"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setSafeVolumeDialogShowing(Z)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setSafeVolumeDialogShowing(Z)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final setStreamVolume(II)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_setStreamVolume"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final setStreamVolumeDualAudio(IILjava/lang/String;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_setStreamVolumeDualAudio"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolumeDualAudio(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolumeDualAudio(IILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final startHearingEnhancementsActivity()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_startHearingEnhancementsActivity"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startHearingEnhancementsActivity()V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startHearingEnhancementsActivity()V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final startLeBroadcastActivity()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_startLeBroadcastActivity"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startLeBroadcastActivity()V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startLeBroadcastActivity()V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final startSettingsActivity()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_startSettingsActivity"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startSettingsActivity()V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startSettingsActivity()V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final startVolumeSettingsActivity()V
    .locals 4

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_startVolumeSettingsActivity"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->sendSystemDialogsCloseAction()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startVolumeSettingsActivity()V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->sendSystemDialogsCloseAction()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startVolumeSettingsActivity()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final toggleWifiDisplayMute()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_toggleWifiDisplayMute"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->toggleWifiDisplayMute()V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->toggleWifiDisplayMute()V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final userActivity()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "#vol.infraMediator_userActivity"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method
