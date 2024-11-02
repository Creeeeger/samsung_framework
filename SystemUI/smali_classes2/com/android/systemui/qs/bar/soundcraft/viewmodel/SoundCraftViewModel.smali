.class public final Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;
.super Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseViewModel;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final audioPlaybackManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/audio/AudioPlaybackManager;

.field public final bluetoothDeviceManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

.field public final modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

.field public final routineManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

.field public final showAudioEffectBox:Landroidx/lifecycle/MutableLiveData;

.field public final showDownloadGuideView:Landroidx/lifecycle/MutableLiveData;

.field public final showLoadingView:Landroidx/lifecycle/MutableLiveData;

.field public final showNoiseControlBox:Landroidx/lifecycle/MutableLiveData;

.field public final wearableManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;Lcom/android/systemui/qs/bar/soundcraft/interfaces/audio/AudioPlaybackManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->wearableManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->routineManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->bluetoothDeviceManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->audioPlaybackManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/audio/AudioPlaybackManager;

    .line 13
    .line 14
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->showNoiseControlBox:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->showAudioEffectBox:Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->showLoadingView:Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->showDownloadGuideView:Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    const-string p1, "init : hashCode="

    .line 47
    .line 48
    const-string p2, "SoundCraft.SoundCraftViewModel"

    .line 49
    .line 50
    invoke-static {p1, p0, p2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final notifyChange()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "notifyChange : budsInfo="

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "SoundCraft.SoundCraftViewModel"

    .line 20
    .line 21
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->showNoiseControlBox:Landroidx/lifecycle/MutableLiveData;

    .line 25
    .line 26
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->showAudioEffectBox:Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getEqualizerList()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x1

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getSpatialAudio()Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getVoiceBoost()Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getVolumeNormalization()Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v2, v4

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    move v2, v5

    .line 65
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->showLoadingView:Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getConnectionState()Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    move v4, v5

    .line 83
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final onCreateView()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->settings:Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const-string v5, "audio_soundcraft_app_setting"

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x1

    .line 21
    if-ne v4, v5, :cond_0

    .line 22
    .line 23
    move v4, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v4, v6

    .line 26
    :goto_0
    iput-boolean v4, v2, Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;->isAppSettingEnabled:Z

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "buds_plugin_package_name"

    .line 33
    .line 34
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iput-object v3, v2, Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$onCreateView$1;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$onCreateView$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;)V

    .line 43
    .line 44
    .line 45
    iget-object v3, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->wearableManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    sget-object v4, Lcom/android/systemui/qs/bar/soundcraft/feature/SoundCraftDebugFeatures;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/feature/SoundCraftDebugFeatures;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object v4, v3, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;->context:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    const-string v8, "audio_soundcraft_debug_dummy_buds_info"

    .line 62
    .line 63
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-ne v7, v5, :cond_1

    .line 68
    .line 69
    move v7, v5

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move v7, v6

    .line 72
    :goto_1
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;->soundCraftSettings:Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;

    .line 73
    .line 74
    const-string v9, "SoundCraft.wearable.WearableManager"

    .line 75
    .line 76
    if-eqz v7, :cond_2

    .line 77
    .line 78
    const-string v7, "isSupport : useDummyBudsInfo is true."

    .line 79
    .line 80
    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move v10, v5

    .line 84
    goto :goto_3

    .line 85
    :cond_2
    iget-object v7, v3, Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-nez v10, :cond_3

    .line 92
    .line 93
    move v10, v5

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    move v10, v6

    .line 96
    :goto_2
    if-eqz v10, :cond_4

    .line 97
    .line 98
    const-string v7, "isSupport : packageName is empty. The device is not supported."

    .line 99
    .line 100
    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move v10, v6

    .line 104
    goto :goto_3

    .line 105
    :cond_4
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    new-instance v11, Landroid/content/Intent;

    .line 110
    .line 111
    const-string v12, "com.samsung.accessory.hearablemgr.BUDS_CONTROLLER"

    .line 112
    .line 113
    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v10, v11, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    xor-int/2addr v10, v5

    .line 128
    new-instance v11, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v12, "isSupport : packageName="

    .line 131
    .line 132
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v7, ", isServiceExist="

    .line 139
    .line 140
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    :goto_3
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->settings:Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;

    .line 154
    .line 155
    iget-boolean v1, v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;->isAppSettingEnabled:Z

    .line 156
    .line 157
    const-string v7, "onCreateView : isBudsPluginSupport="

    .line 158
    .line 159
    const-string v11, ", isAppSettingEnabled="

    .line 160
    .line 161
    const-string v12, "SoundCraft.SoundCraftViewModel"

    .line 162
    .line 163
    invoke-static {v7, v10, v11, v1, v12}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    if-nez v10, :cond_5

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$onCreateView$1;->invoke()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    goto/16 :goto_5

    .line 172
    .line 173
    :cond_5
    new-instance v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getBudsInfo$1;

    .line 174
    .line 175
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getBudsInfo$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;Lkotlin/jvm/functions/Function0;)V

    .line 176
    .line 177
    .line 178
    const-string v2, "getBudsInfo"

    .line 179
    .line 180
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-static {v2, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-ne v2, v5, :cond_6

    .line 192
    .line 193
    move v2, v5

    .line 194
    goto :goto_4

    .line 195
    :cond_6
    move v2, v6

    .line 196
    :goto_4
    if-eqz v2, :cond_7

    .line 197
    .line 198
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetDummyInfoRequester;

    .line 199
    .line 200
    invoke-direct {v2}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetDummyInfoRequester;-><init>()V

    .line 201
    .line 202
    .line 203
    new-instance v7, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;

    .line 204
    .line 205
    const-string v2, "Balanced"

    .line 206
    .line 207
    invoke-direct {v7, v2, v5}, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;-><init>(Ljava/lang/String;Z)V

    .line 208
    .line 209
    .line 210
    new-instance v8, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;

    .line 211
    .line 212
    const-string v2, "Bass boost"

    .line 213
    .line 214
    invoke-direct {v8, v2, v6}, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;-><init>(Ljava/lang/String;Z)V

    .line 215
    .line 216
    .line 217
    new-instance v9, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;

    .line 218
    .line 219
    const-string v2, "Smooth"

    .line 220
    .line 221
    invoke-direct {v9, v2, v6}, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;-><init>(Ljava/lang/String;Z)V

    .line 222
    .line 223
    .line 224
    new-instance v10, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;

    .line 225
    .line 226
    const-string v2, "Dynamic"

    .line 227
    .line 228
    invoke-direct {v10, v2, v6}, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;-><init>(Ljava/lang/String;Z)V

    .line 229
    .line 230
    .line 231
    new-instance v11, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;

    .line 232
    .line 233
    const-string v2, "Clear"

    .line 234
    .line 235
    invoke-direct {v11, v2, v6}, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;-><init>(Ljava/lang/String;Z)V

    .line 236
    .line 237
    .line 238
    new-instance v12, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;

    .line 239
    .line 240
    const-string v2, "Treble boost"

    .line 241
    .line 242
    invoke-direct {v12, v2, v6}, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;-><init>(Ljava/lang/String;Z)V

    .line 243
    .line 244
    .line 245
    new-instance v13, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;

    .line 246
    .line 247
    const-string v2, "Custom"

    .line 248
    .line 249
    invoke-direct {v13, v2, v6}, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;-><init>(Ljava/lang/String;Z)V

    .line 250
    .line 251
    .line 252
    filled-new-array/range {v7 .. v13}, [Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 261
    .line 262
    const/4 v4, 0x0

    .line 263
    const/4 v6, 0x0

    .line 264
    const/4 v7, 0x0

    .line 265
    const/4 v8, 0x0

    .line 266
    const/4 v9, 0x0

    .line 267
    const/4 v10, 0x0

    .line 268
    const/4 v11, 0x0

    .line 269
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 270
    .line 271
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 272
    .line 273
    const/16 v16, 0xfd

    .line 274
    .line 275
    const/16 v17, 0x0

    .line 276
    .line 277
    move-object v3, v2

    .line 278
    move-object v12, v14

    .line 279
    move-object v13, v15

    .line 280
    invoke-direct/range {v3 .. v17}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;-><init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getBudsInfo$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_7
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester;

    .line 288
    .line 289
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    .line 290
    .line 291
    invoke-direct {v2, v4, v3, v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->bindService()V

    .line 295
    .line 296
    .line 297
    :goto_5
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->bluetoothDeviceManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    const-string v2, "SoundCraft.BluetoothDeviceManager"

    .line 303
    .line 304
    const-string v3, "init()"

    .line 305
    .line 306
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    iget-object v4, v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->callback:Lkotlin/jvm/functions/Function1;

    .line 314
    .line 315
    if-eqz v4, :cond_9

    .line 316
    .line 317
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    if-eqz v5, :cond_8

    .line 322
    .line 323
    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getNoiseControlList(Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    goto :goto_6

    .line 328
    :cond_8
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 329
    .line 330
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 331
    .line 332
    .line 333
    :goto_6
    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    :cond_9
    if-nez v3, :cond_a

    .line 337
    .line 338
    const-string v3, "connected device is empty"

    .line 339
    .line 340
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    :cond_a
    new-instance v2, Landroid/content/IntentFilter;

    .line 344
    .line 345
    const-string v3, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    .line 346
    .line 347
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    iget-object v3, v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->context:Landroid/content/Context;

    .line 351
    .line 352
    iget-object v4, v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->bluetoothMetadataBroadcastReceiver:Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager$bluetoothMetadataBroadcastReceiver$1;

    .line 353
    .line 354
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    .line 356
    .line 357
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getNoiseControlInfo$1;

    .line 358
    .line 359
    invoke-direct {v2, v0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getNoiseControlInfo$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;)V

    .line 360
    .line 361
    .line 362
    iput-object v2, v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->callback:Lkotlin/jvm/functions/Function1;

    .line 363
    .line 364
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    if-eqz v0, :cond_b

    .line 369
    .line 370
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getNoiseControlList(Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    goto :goto_7

    .line 375
    :cond_b
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 376
    .line 377
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 378
    .line 379
    .line 380
    :goto_7
    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getNoiseControlInfo$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    return-void
.end method
