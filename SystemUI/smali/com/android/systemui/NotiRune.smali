.class public final Lcom/android/systemui/NotiRune;
.super Lcom/android/systemui/Rune;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW:Z

.field public static final NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

.field public static final NOTI_STATIC_SHELF_ALPHA_VI:Z

.field public static final NOTI_STATUSBAR_SIMPLE_DEFAULT_ON:Z

.field public static final NOTI_STYLE_EMPTY_SHADE:Z

.field public static final NOTI_STYLE_ICON_BACKGROUND_COLOR_THEME:Z

.field public static final NOTI_STYLE_TABLET_BG:Z

.field public static final NOTI_SUBSCREEN_ALL:Z

.field public static final NOTI_SUBSCREEN_CHILD_TO_RECEIVE_PARENT_ALERT:Z

.field public static final NOTI_SUBSCREEN_CLEAR_COVER:Z

.field public static final NOTI_SUBSCREEN_GHOST_NOTIFICATION:Z

.field public static final NOTI_SUBSCREEN_NOTIFICATION:Z

.field public static final NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

.field public static final NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

.field public static final NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

.field public static final NOTI_SUBSCREEN_PENDING_CALL_FULLSCRREN_INTENT:Z

.field public static final NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY:Z

.field public static final NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI:Z

.field public static final NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_SHOW_CONTENT_WHEN_UNLOCKED"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "support"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sput-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    .line 19
    .line 20
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    xor-int/2addr v0, v1

    .line 26
    sput-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_STATIC_SHELF_ALPHA_VI:Z

    .line 27
    .line 28
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "CscFeature_SystemUI_ConfigDefStatusSimpleStatusBar"

    .line 33
    .line 34
    const-string v3, "On"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sput-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_STATUSBAR_SIMPLE_DEFAULT_ON:Z

    .line 45
    .line 46
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 47
    .line 48
    const v2, 0x22344

    .line 49
    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    if-lt v0, v2, :cond_0

    .line 53
    .line 54
    move v2, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move v2, v3

    .line 57
    :goto_0
    const v4, 0x224d4

    .line 58
    .line 59
    .line 60
    if-lt v0, v4, :cond_1

    .line 61
    .line 62
    move v0, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v0, v3

    .line 65
    :goto_1
    const-string/jumbo v4, "user"

    .line 66
    .line 67
    .line 68
    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const-string v5, ""

    .line 75
    .line 76
    if-nez v4, :cond_2

    .line 77
    .line 78
    const-string/jumbo v4, "persist.debug.subdisplay_test_mode"

    .line 79
    .line 80
    .line 81
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    and-int/2addr v4, v1

    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    move-object v4, v5

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    const-string v6, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    .line 95
    .line 96
    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    :goto_2
    const-string v6, "COVER"

    .line 101
    .line 102
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    sput-boolean v6, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION:Z

    .line 107
    .line 108
    if-eqz v6, :cond_3

    .line 109
    .line 110
    const-string v7, "WATCHFACE"

    .line 111
    .line 112
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eqz v7, :cond_3

    .line 117
    .line 118
    move v7, v1

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    move v7, v3

    .line 121
    :goto_3
    sput-boolean v7, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    .line 122
    .line 123
    if-eqz v7, :cond_4

    .line 124
    .line 125
    const-string v8, "LARGESCREEN"

    .line 126
    .line 127
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_4

    .line 132
    .line 133
    move v8, v1

    .line 134
    goto :goto_4

    .line 135
    :cond_4
    move v8, v3

    .line 136
    :goto_4
    sput-boolean v8, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    .line 137
    .line 138
    if-nez v7, :cond_6

    .line 139
    .line 140
    if-eqz v8, :cond_5

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_5
    move v7, v3

    .line 144
    goto :goto_6

    .line 145
    :cond_6
    :goto_5
    move v7, v1

    .line 146
    :goto_6
    sput-boolean v7, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    .line 147
    .line 148
    sput-boolean v6, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_PENDING_CALL_FULLSCRREN_INTENT:Z

    .line 149
    .line 150
    const-string v9, "VIRTUAL_DISPLAY"

    .line 151
    .line 152
    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    sput-boolean v4, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CLEAR_COVER:Z

    .line 157
    .line 158
    if-nez v6, :cond_8

    .line 159
    .line 160
    if-nez v7, :cond_8

    .line 161
    .line 162
    if-eqz v4, :cond_7

    .line 163
    .line 164
    goto :goto_7

    .line 165
    :cond_7
    move v4, v3

    .line 166
    goto :goto_8

    .line 167
    :cond_8
    :goto_7
    move v4, v1

    .line 168
    :goto_8
    sput-boolean v4, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_ALL:Z

    .line 169
    .line 170
    sput-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY:Z

    .line 171
    .line 172
    sput-boolean v6, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CHILD_TO_RECEIVE_PARENT_ALERT:Z

    .line 173
    .line 174
    sput-boolean v8, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_GHOST_NOTIFICATION:Z

    .line 175
    .line 176
    const-string v0, "SEC_FLOATING_FEATURE_COMMON_DISABLE_NATIVE_AI"

    .line 177
    .line 178
    if-eqz v8, :cond_9

    .line 179
    .line 180
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v4, v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-nez v4, :cond_9

    .line 189
    .line 190
    sget-boolean v4, Lcom/android/systemui/Rune;->SYSUI_CHINA_FEATURE:Z

    .line 191
    .line 192
    if-eqz v4, :cond_9

    .line 193
    .line 194
    sget v4, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    .line 195
    .line 196
    const/16 v6, 0x22

    .line 197
    .line 198
    if-lt v4, v6, :cond_9

    .line 199
    .line 200
    move v4, v1

    .line 201
    goto :goto_9

    .line 202
    :cond_9
    move v4, v3

    .line 203
    :goto_9
    sput-boolean v4, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    .line 204
    .line 205
    if-eqz v8, :cond_a

    .line 206
    .line 207
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v4, v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_a

    .line 216
    .line 217
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const-string v4, "SEC_FLOATING_FEATURE_GENAI_SUPPORT_OFFLINE_LANGUAGEMODEL"

    .line 222
    .line 223
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_a

    .line 228
    .line 229
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    const-string v4, "CountryISO"

    .line 234
    .line 235
    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    const-string v4, "CN"

    .line 240
    .line 241
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-nez v0, :cond_a

    .line 246
    .line 247
    move v3, v1

    .line 248
    :cond_a
    sput-boolean v3, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI:Z

    .line 249
    .line 250
    sput-boolean v2, Lcom/android/systemui/NotiRune;->NOTI_STYLE_ICON_BACKGROUND_COLOR_THEME:Z

    .line 251
    .line 252
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    xor-int/2addr v0, v1

    .line 257
    sput-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_STYLE_EMPTY_SHADE:Z

    .line 258
    .line 259
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_BG:Z

    .line 260
    .line 261
    sput-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_STYLE_TABLET_BG:Z

    .line 262
    .line 263
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    sput-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW:Z

    .line 268
    .line 269
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
