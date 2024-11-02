.class public final Lcom/android/systemui/navigationbar/interactor/InteractorFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final provider:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->provider:Ljava/util/Map;

    .line 10
    .line 11
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    .line 14
    .line 15
    .line 16
    const-class v1, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    .line 17
    .line 18
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;

    .line 22
    .line 23
    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    .line 24
    .line 25
    .line 26
    const-class v1, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;

    .line 27
    .line 28
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;

    .line 32
    .line 33
    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    .line 34
    .line 35
    .line 36
    const-class v1, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;

    .line 37
    .line 38
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;

    .line 42
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V

    .line 44
    .line 45
    .line 46
    const-class v1, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    .line 47
    .line 48
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

    .line 52
    .line 53
    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    .line 54
    .line 55
    .line 56
    const-class v1, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

    .line 57
    .line 58
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    const-class v1, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    .line 67
    .line 68
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;

    .line 72
    .line 73
    invoke-direct {p0, p3, p2}, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/SettingsHelper;)V

    .line 74
    .line 75
    .line 76
    const-class v1, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;

    .line 77
    .line 78
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;

    .line 82
    .line 83
    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    .line 84
    .line 85
    .line 86
    const-class v1, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;

    .line 87
    .line 88
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;-><init>()V

    .line 94
    .line 95
    .line 96
    const-class v1, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    .line 97
    .line 98
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor;

    .line 102
    .line 103
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor;-><init>()V

    .line 104
    .line 105
    .line 106
    const-class v1, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor;

    .line 107
    .line 108
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    .line 112
    .line 113
    sget-object v1, Lcom/android/systemui/Dependency;->NAVBAR_BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 114
    .line 115
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Landroid/os/Handler;

    .line 120
    .line 121
    invoke-direct {p0, p1, p3, v2, p2}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Lcom/android/systemui/util/SettingsHelper;)V

    .line 122
    .line 123
    .line 124
    const-class v2, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    .line 125
    .line 126
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 130
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V

    .line 132
    .line 133
    .line 134
    const-class v2, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 135
    .line 136
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;

    .line 140
    .line 141
    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    .line 142
    .line 143
    .line 144
    const-class v2, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;

    .line 145
    .line 146
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;

    .line 150
    .line 151
    invoke-direct {p0, p3}, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 152
    .line 153
    .line 154
    const-class v2, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;

    .line 155
    .line 156
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;

    .line 160
    .line 161
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;-><init>()V

    .line 162
    .line 163
    .line 164
    const-class v2, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;

    .line 165
    .line 166
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    .line 170
    .line 171
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    move-object v6, v1

    .line 176
    check-cast v6, Landroid/os/Handler;

    .line 177
    .line 178
    move-object v3, p0

    .line 179
    move-object v4, p1

    .line 180
    move-object v5, p3

    .line 181
    move-object v7, p2

    .line 182
    move-object v8, p5

    .line 183
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/basic/util/LogWrapper;)V

    .line 184
    .line 185
    .line 186
    const-class p5, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    .line 187
    .line 188
    invoke-interface {v0, p5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    .line 192
    .line 193
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V

    .line 194
    .line 195
    .line 196
    const-class p1, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    .line 197
    .line 198
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;

    .line 202
    .line 203
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;)V

    .line 204
    .line 205
    .line 206
    const-class p1, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;

    .line 207
    .line 208
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    new-instance p0, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

    .line 212
    .line 213
    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    .line 214
    .line 215
    .line 216
    const-class p1, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

    .line 217
    .line 218
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->provider:Ljava/util/Map;

    .line 2
    .line 3
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    :cond_0
    return-object p0
.end method
