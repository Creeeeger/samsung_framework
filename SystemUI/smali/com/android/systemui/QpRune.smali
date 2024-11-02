.class public final Lcom/android/systemui/QpRune;
.super Lcom/android/systemui/Rune;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

.field public static final PANEL_DATA_USAGE_LABEL:Z

.field public static final QUICK_BAR_BRIGHTNESS_PERSONAL_CONTROL:Z

.field public static final QUICK_BAR_EXTRA_BRIGHTNESS:Z

.field public static final QUICK_BAR_MULTISIM:Z

.field public static final QUICK_BLUETOOTH_MUSIC_SHARE:Z

.field public static final QUICK_HIDE_TILE_FROM_BAR:Z

.field public static final QUICK_MANAGE_TWO_PHONE:Z

.field public static final QUICK_ONE_UI_6_1:Z

.field public static final QUICK_PANEL_BLUR:Z

.field public static final QUICK_PANEL_BLUR_DEFAULT:Z

.field public static final QUICK_PANEL_BLUR_MASSIVE:Z

.field public static final QUICK_PANEL_SUBSCREEN:Z

.field public static final QUICK_PANEL_SUBSCREEN_QUICK_PANEL_WINDOW:Z

.field public static final QUICK_SETTINGS_SUBSCREEN:Z

.field public static final QUICK_STYLE_ALTERNATE_CALENDAR:Z

.field public static final QUICK_STYLE_ALTERNATE_CALENDAR_HIJRI:Z

.field public static final QUICK_STYLE_ALTERNATE_CALENDAR_LUNAR_IN_VIETNAM:Z

.field public static final QUICK_STYLE_ALTERNATE_CALENDAR_PERSIAN:Z

.field public static final QUICK_TABLET:Z

.field public static final QUICK_TABLET_BG:Z

.field public static final QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

.field public static final QUICK_TABLET_TOP_MARGIN:Z

.field public static final QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

.field public static final QUICK_TILE_FLASHLIGHT_INTENSITY:Z

.field public static final QUICK_TILE_NIGHT_DIM:Z

.field public static final QUICK_TILE_ROTATION_MANUAL:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    .line 12
    .line 13
    const-string/jumbo v1, "ro.surface_flinger.protected_contents"

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "1"

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    const-string/jumbo v2, "true"

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 v1, 0x1

    .line 39
    const/4 v2, 0x0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_CAPTURED_BLUR"

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    move v3, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v3, v2

    .line 57
    :goto_0
    sput-boolean v3, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v0, v2

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    :goto_1
    move v0, v1

    .line 67
    :goto_2
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR:Z

    .line 68
    .line 69
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 74
    .line 75
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_BG:Z

    .line 76
    .line 77
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_TOP_MARGIN:Z

    .line 78
    .line 79
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    .line 80
    .line 81
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v3, "CscFeature_Common_SupportPersianCalendar"

    .line 86
    .line 87
    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR_PERSIAN:Z

    .line 92
    .line 93
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    const-string v4, "CscFeature_Common_SupportHijriLunarCalendar"

    .line 98
    .line 99
    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    sput-boolean v3, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR_HIJRI:Z

    .line 104
    .line 105
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    const-string v5, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    .line 110
    .line 111
    const/4 v6, 0x0

    .line 112
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const-string v5, "VI"

    .line 117
    .line 118
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    sput-boolean v4, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR_LUNAR_IN_VIETNAM:Z

    .line 123
    .line 124
    if-nez v0, :cond_5

    .line 125
    .line 126
    if-nez v3, :cond_5

    .line 127
    .line 128
    if-eqz v4, :cond_4

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    move v0, v2

    .line 132
    goto :goto_4

    .line 133
    :cond_5
    :goto_3
    move v0, v1

    .line 134
    :goto_4
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR:Z

    .line 135
    .line 136
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const-string v3, "CscFeature_Common_SupportTwoPhoneService"

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MANAGE_TWO_PHONE:Z

    .line 147
    .line 148
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    .line 149
    .line 150
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BAR_MULTISIM:Z

    .line 151
    .line 152
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const-string v3, "CscFeature_Common_SupportZProjectFunctionInGlobal"

    .line 157
    .line 158
    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_HIDE_TILE_FROM_BAR:Z

    .line 163
    .line 164
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const-string v3, "SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS"

    .line 169
    .line 170
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BAR_EXTRA_BRIGHTNESS:Z

    .line 175
    .line 176
    sput-boolean v1, Lcom/android/systemui/QpRune;->QUICK_BAR_BRIGHTNESS_PERSONAL_CONTROL:Z

    .line 177
    .line 178
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    .line 183
    .line 184
    const-string v4, ""

    .line 185
    .line 186
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    const-string v3, "aodversion"

    .line 191
    .line 192
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const-string v3, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    .line 200
    .line 201
    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_6

    .line 206
    .line 207
    move v0, v1

    .line 208
    goto :goto_5

    .line 209
    :cond_6
    move v0, v2

    .line 210
    :goto_5
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

    .line 211
    .line 212
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const-string v3, "SEC_FLOATING_FEATURE_LCD_CONFIG_NIGHT_DIM"

    .line 217
    .line 218
    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-ne v0, v1, :cond_7

    .line 223
    .line 224
    move v0, v1

    .line 225
    goto :goto_6

    .line 226
    :cond_7
    move v0, v2

    .line 227
    :goto_6
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_NIGHT_DIM:Z

    .line 228
    .line 229
    const-string/jumbo v0, "user"

    .line 230
    .line 231
    .line 232
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-nez v0, :cond_8

    .line 239
    .line 240
    const-string/jumbo v0, "persist.debug.subdisplay_test_mode"

    .line 241
    .line 242
    .line 243
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    and-int/2addr v0, v1

    .line 248
    if-eqz v0, :cond_8

    .line 249
    .line 250
    move-object v0, v4

    .line 251
    goto :goto_7

    .line 252
    :cond_8
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    const-string v3, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    .line 257
    .line 258
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    :goto_7
    const-string v3, "WATCHFACE"

    .line 263
    .line 264
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    sput-boolean v3, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    .line 269
    .line 270
    sput-boolean v3, Lcom/android/systemui/QpRune;->QUICK_SETTINGS_SUBSCREEN:Z

    .line 271
    .line 272
    if-eqz v3, :cond_9

    .line 273
    .line 274
    const-string v3, "LARGESCREEN"

    .line 275
    .line 276
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_9

    .line 281
    .line 282
    move v0, v1

    .line 283
    goto :goto_8

    .line 284
    :cond_9
    move v0, v2

    .line 285
    :goto_8
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 286
    .line 287
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN_QUICK_PANEL_WINDOW:Z

    .line 288
    .line 289
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    const-string v3, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_TORCH_BRIGHTNESS_LEVEL"

    .line 294
    .line 295
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_FLASHLIGHT_INTENSITY:Z

    .line 300
    .line 301
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 306
    .line 307
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    .line 312
    .line 313
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    xor-int/2addr v0, v1

    .line 322
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_ROTATION_MANUAL:Z

    .line 323
    .line 324
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 325
    .line 326
    const v3, 0x24a54

    .line 327
    .line 328
    .line 329
    if-lt v0, v3, :cond_a

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_a
    move v1, v2

    .line 333
    :goto_9
    sput-boolean v1, Lcom/android/systemui/QpRune;->QUICK_ONE_UI_6_1:Z

    .line 334
    .line 335
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_CHINA_FEATURE:Z

    .line 336
    .line 337
    sput-boolean v0, Lcom/android/systemui/QpRune;->PANEL_DATA_USAGE_LABEL:Z

    .line 338
    .line 339
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/Rune;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
