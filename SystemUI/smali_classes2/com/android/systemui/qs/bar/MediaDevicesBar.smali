.class public final Lcom/android/systemui/qs/bar/MediaDevicesBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# static fields
.field public static final EMERGENCY_MODE_URI:Landroid/net/Uri;


# instance fields
.field public mBrightnessBarOnTop:Z

.field public final mCustomDeviceControlsController:Lcom/android/systemui/controls/controller/CustomDeviceControlsController;

.field public mDeviceTouchArea:Landroid/widget/LinearLayout;

.field public mDevicesTitleText:Landroid/widget/TextView;

.field public mIsAllowedOnPanel:Z

.field public mIsAllowedOnTop:Z

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public final mMediaOutputHelper:Lcom/android/systemui/media/MediaOutputHelper;

.field public mMediaTitleText:Landroid/widget/TextView;

.field public mMediaTouchArea:Landroid/widget/LinearLayout;

.field public mOrientation:I

.field public final mQSBackupRestoreManager:Lcom/android/systemui/qs/QSBackupRestoreManager;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSettingsListener:Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda0;

.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "emergency_mode"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/controls/controller/CustomDeviceControlsController;Lcom/android/systemui/media/MediaOutputHelper;Lcom/android/systemui/qs/QSBackupRestoreManager;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/util/ConfigurationState;

    .line 5
    .line 6
    sget-object v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 7
    .line 8
    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 9
    .line 10
    sget-object v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 11
    .line 12
    filled-new-array {v1, v2, v3}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 24
    .line 25
    new-instance v0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsListener:Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 37
    .line 38
    const-class p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 47
    .line 48
    iput-object p4, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mCustomDeviceControlsController:Lcom/android/systemui/controls/controller/CustomDeviceControlsController;

    .line 49
    .line 50
    iput-object p6, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mQSBackupRestoreManager:Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 51
    .line 52
    sget-object p1, Lcom/android/systemui/qs/bar/MediaDevicesBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    .line 53
    .line 54
    filled-new-array {p1}, [Landroid/net/Uri;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo p1, "qspanel_media_quickcontrol_bar_available"

    .line 62
    .line 63
    .line 64
    filled-new-array {p1}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p3, p0, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string/jumbo p2, "qspanel_media_quickcontrol_bar_available_on_top"

    .line 72
    .line 73
    .line 74
    filled-new-array {p2}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p3, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "brightness_on_top"

    .line 82
    .line 83
    filled-new-array {v0}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p3, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 v1, 0x1

    .line 91
    invoke-virtual {p3, v1, p1}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    const/4 v2, 0x0

    .line 96
    if-eqz p1, :cond_0

    .line 97
    .line 98
    move p1, v1

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move p1, v2

    .line 101
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnPanel:Z

    .line 102
    .line 103
    const/4 p1, -0x1

    .line 104
    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_1

    .line 109
    .line 110
    move p1, v1

    .line 111
    goto :goto_1

    .line 112
    :cond_1
    move p1, v2

    .line 113
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnTop:Z

    .line 114
    .line 115
    invoke-virtual {p3, v1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_2

    .line 120
    .line 121
    move v2, v1

    .line 122
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mBrightnessBarOnTop:Z

    .line 123
    .line 124
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    .line 125
    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    new-instance p1, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;

    .line 132
    .line 133
    invoke-direct {p1, p4}, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsController;)V

    .line 134
    .line 135
    .line 136
    check-cast p4, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    .line 137
    .line 138
    iget-object p2, p4, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 139
    .line 140
    iget-boolean p3, p2, Lcom/android/systemui/controls/dagger/ControlsComponent;->featureEnabled:Z

    .line 141
    .line 142
    const-string v0, "CustomDeviceControlsControllerImpl"

    .line 143
    .line 144
    if-nez p3, :cond_3

    .line 145
    .line 146
    const-string/jumbo p1, "setCallback(): canceled"

    .line 147
    .line 148
    .line 149
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_3
    const-string/jumbo p3, "setCallback()"

    .line 154
    .line 155
    .line 156
    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    const-string/jumbo p3, "removeCallback()"

    .line 160
    .line 161
    .line 162
    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    const/4 v2, 0x0

    .line 166
    iput-object v2, p4, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->callback:Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;

    .line 167
    .line 168
    iget-object v3, p4, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 169
    .line 170
    invoke-virtual {v3}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsListingController()Ljava/util/Optional;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    new-instance v4, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$removeCallback$1;

    .line 175
    .line 176
    invoke-direct {v4, p4}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$removeCallback$1;-><init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 180
    .line 181
    .line 182
    iput-object p1, p4, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->callback:Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;

    .line 183
    .line 184
    const-string p1, "controls_enabled"

    .line 185
    .line 186
    iget-object v3, p4, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 187
    .line 188
    invoke-interface {v3, p1, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-nez p1, :cond_4

    .line 193
    .line 194
    const-string p1, "fireControlsUpdate()"

    .line 195
    .line 196
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    iget-object p1, p4, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->callback:Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;

    .line 200
    .line 201
    if-eqz p1, :cond_5

    .line 202
    .line 203
    iget-object p1, p1, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsController;

    .line 204
    .line 205
    check-cast p1, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    iput-object v2, p1, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->callback:Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;

    .line 214
    .line 215
    iget-object p2, p1, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 216
    .line 217
    invoke-virtual {p2}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsListingController()Ljava/util/Optional;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    new-instance p3, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$removeCallback$1;

    .line 222
    .line 223
    invoke-direct {p3, p1}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$removeCallback$1;-><init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_4
    invoke-virtual {p2}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsListingController()Ljava/util/Optional;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    new-instance p2, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$setCallback$1;

    .line 235
    .line 236
    invoke-direct {p2, p4}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$setCallback$1;-><init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 240
    .line 241
    .line 242
    :cond_5
    :goto_2
    iput-object p5, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaOutputHelper:Lcom/android/systemui/media/MediaOutputHelper;

    .line 243
    .line 244
    new-instance p1, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;

    .line 245
    .line 246
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V

    .line 247
    .line 248
    .line 249
    const-string p0, "MediaDevices"

    .line 250
    .line 251
    invoke-virtual {p6, p0, p1}, Lcom/android/systemui/qs/QSBackupRestoreManager;->addCallback(Ljava/lang/String;Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;)V

    .line 252
    .line 253
    .line 254
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsListener:Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mQSBackupRestoreManager:Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/qs/QSBackupRestoreManager;->mQSBnRMap:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "MediaDevices"

    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final getBarHeight()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnTop:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mBrightnessBarOnTop:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Lcom/android/systemui/util/ConfigurationState;->getValue(Lcom/android/systemui/util/ConfigurationState$ConfigurationField;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x2

    .line 26
    if-ne v0, v2, :cond_1

    .line 27
    .line 28
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarHeight(Landroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const v2, 0x7f070cde

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQuickQSCommonBottomMargin(Landroid/content/Context;)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    add-int/2addr p0, v0

    .line 68
    return p0
.end method

.method public final getBarLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d02ef

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d02ef

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 16
    .line 17
    const v0, 0x7f0a0676

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTouchArea:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 29
    .line 30
    const v0, 0x7f0a032a

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/widget/LinearLayout;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDeviceTouchArea:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 42
    .line 43
    const v0, 0x7f0a0672

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 55
    .line 56
    const v0, 0x7f0a0882

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    .line 68
    .line 69
    new-instance v0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda2;

    .line 70
    .line 71
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    .line 78
    .line 79
    new-instance v0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda2;

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBarVisibility()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateHeightMargins()V

    .line 92
    .line 93
    .line 94
    sget-object p1, Lcom/android/systemui/util/TouchDelegateUtil;->INSTANCE:Lcom/android/systemui/util/TouchDelegateUtil;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTouchArea:Landroid/widget/LinearLayout;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1}, Lcom/android/systemui/util/TouchDelegateUtil;->expandTouchAreaAsParent(Landroid/view/View;Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDeviceTouchArea:Landroid/widget/LinearLayout;

    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-static {p1, p0}, Lcom/android/systemui/util/TouchDelegateUtil;->expandTouchAreaAsParent(Landroid/view/View;Landroid/view/View;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final isAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isMediaQuickControlBarAvailable(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    iget v2, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mOrientation:I

    .line 27
    .line 28
    if-eq v2, v0, :cond_2

    .line 29
    .line 30
    :cond_1
    iput v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mOrientation:I

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBarVisibility()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateHeightMargins()V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "onTuningChanged(): key = "

    .line 2
    .line 3
    const-string v1, ", newValue = "

    .line 4
    .line 5
    invoke-static {v0, p1, v1, p2}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string/jumbo v0, "qspanel_media_quickcontrol_bar_available"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v1, v2

    .line 36
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnPanel:Z

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_2
    const-string/jumbo v0, "qspanel_media_quickcontrol_bar_available_on_top"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move v1, v2

    .line 56
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnTop:Z

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_4
    const-string v0, "brightness_on_top"

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_6

    .line 66
    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_5
    move v1, v2

    .line 75
    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mBrightnessBarOnTop:Z

    .line 76
    .line 77
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateHeightMargins()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBarVisibility()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final onUiModeChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateResources()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setUnderneathQqs(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsUnderneathQqs:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateHeightMargins()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateBackground()Landroid/graphics/drawable/RippleDrawable;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x7f070cde

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const v2, 0x7f060468

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 33
    .line 34
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 35
    .line 36
    .line 37
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const v3, 0x7f06058a

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const v3, 0x7f060588

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 72
    .line 73
    .line 74
    :goto_0
    int-to-float p0, v0

    .line 75
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 76
    .line 77
    .line 78
    const/16 v0, 0x8

    .line 79
    .line 80
    new-array v0, v0, [F

    .line 81
    .line 82
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([FF)V

    .line 83
    .line 84
    .line 85
    new-instance p0, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    invoke-direct {p0, v0, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const/4 v3, -0x1

    .line 101
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    .line 103
    .line 104
    new-instance p0, Landroid/graphics/drawable/RippleDrawable;

    .line 105
    .line 106
    invoke-direct {p0, v1, v2, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 107
    .line 108
    .line 109
    return-object p0
.end method

.method public final updateBarVisibility()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnPanel:Z

    .line 15
    .line 16
    if-eqz v3, :cond_2

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnTop:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    :cond_1
    move v1, v2

    .line 29
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final updateHeightMargins()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f070cde

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const v3, 0x7f070cd7

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const v3, 0x7f070cd4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnTop:Z

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    iget-boolean v3, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mBrightnessBarOnTop:Z

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    sget-object v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 60
    .line 61
    invoke-virtual {v4, v3}, Lcom/android/systemui/util/ConfigurationState;->getValue(Lcom/android/systemui/util/ConfigurationState$ConfigurationField;)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/4 v4, 0x2

    .line 66
    if-ne v3, v4, :cond_2

    .line 67
    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const v1, 0x7f070105

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const v2, 0x7f070816

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    :cond_2
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 97
    .line 98
    const/4 v3, -0x1

    .line 99
    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    .line 101
    .line 102
    iget-object v4, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    invoke-static {v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQuickQSCommonBottomMargin(Landroid/content/Context;)I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 109
    .line 110
    iget-object v4, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 111
    .line 112
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDeviceTouchArea:Landroid/widget/LinearLayout;

    .line 116
    .line 117
    const/4 v4, 0x0

    .line 118
    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 119
    .line 120
    .line 121
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTouchArea:Landroid/widget/LinearLayout;

    .line 122
    .line 123
    invoke-virtual {v2, v1, v4, v4, v4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 124
    .line 125
    .line 126
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 127
    .line 128
    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateResources()V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final updateResources()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f060589

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    .line 11
    .line 12
    const v2, 0x3f4ccccd    # 0.8f

    .line 13
    .line 14
    .line 15
    const v3, 0x7f070ce7

    .line 16
    .line 17
    .line 18
    const v4, 0x3fa66666    # 1.3f

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBackground()Landroid/graphics/drawable/RippleDrawable;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-static {v1, v3, v2, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBackground()Landroid/graphics/drawable/RippleDrawable;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-static {p0, v3, v2, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method
