.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/QuickStepContract;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/system/QuickStepContract$SystemUiStateFlags;
    }
.end annotation


# static fields
.field public static final KEY_EXTRA_INPUT_MONITOR:Ljava/lang/String; = "extra_input_monitor"

.field public static final KEY_EXTRA_SHELL_ONE_HANDED:Ljava/lang/String; = "extra_shell_one_handed"

.field public static final KEY_EXTRA_SHELL_PIP:Ljava/lang/String; = "extra_shell_pip"

.field public static final KEY_EXTRA_SHELL_SHELL_TRANSITIONS:Ljava/lang/String; = "extra_shell_shell_transitions"

.field public static final KEY_EXTRA_SHELL_SPLIT_SCREEN:Ljava/lang/String; = "extra_shell_split_screen"

.field public static final KEY_EXTRA_SHELL_STARTING_WINDOW:Ljava/lang/String; = "extra_shell_starting_window"

.field public static final KEY_EXTRA_SUPPORTS_WINDOW_CORNERS:Ljava/lang/String; = "extra_supports_window_corners"

.field public static final KEY_EXTRA_SYSUI_PROXY:Ljava/lang/String; = "extra_sysui_proxy"

.field public static final KEY_EXTRA_WINDOW_CORNER_RADIUS:Ljava/lang/String; = "extra_window_corner_radius"

.field public static final NAV_BAR_MODE_2BUTTON_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.twobutton"

.field public static final NAV_BAR_MODE_3BUTTON_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.threebutton"

.field public static final NAV_BAR_MODE_GESTURAL_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural"

.field public static final NAV_BAR_MODE_SAMSUNG_GESTURAL:I = 0x3

.field public static final QUICKSTEP_TOUCH_SLOP_RATIO:F = 3.0f

.field public static final SYSUI_STATE_A11Y_BUTTON_CLICKABLE:I = 0x10

.field public static final SYSUI_STATE_A11Y_BUTTON_LONG_CLICKABLE:I = 0x20

.field public static final SYSUI_STATE_ALLOW_GESTURE_IGNORING_BAR_VISIBILITY:I = 0x20000

.field public static final SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED:I = 0x2000

.field public static final SYSUI_STATE_BACK_DISABLED:I = 0x400000

.field public static final SYSUI_STATE_BOUNCER_SHOWING:I = 0x8

.field public static final SYSUI_STATE_BUBBLES_EXPANDED:I = 0x4000

.field public static final SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED:I = 0x800000

.field public static final SYSUI_STATE_DEVICE_DOZING:I = 0x200000

.field public static final SYSUI_STATE_GAME_TOOLS_SHOWING:I = 0x2000000

.field public static final SYSUI_STATE_GLOBAL_ACTIONS_SHOWING:I = 0x8000

.field public static final SYSUI_STATE_HOME_DISABLED:I = 0x100

.field public static final SYSUI_STATE_IME_SHOWING:I = 0x40000

.field public static final SYSUI_STATE_IME_SWITCHER_SHOWING:I = 0x100000

.field public static final SYSUI_STATE_KNOX_HARD_KEY_INTENT:I = 0x20000000

.field public static final SYSUI_STATE_MAGNIFICATION_OVERLAP:I = 0x80000

.field public static final SYSUI_STATE_NAV_BAR_HIDDEN:I = 0x2

.field public static final SYSUI_STATE_NAV_BAR_VIS_GONE:I = 0x10000000

.field public static final SYSUI_STATE_NOTIFICATION_PANEL_EXPANDED:I = 0x4

.field public static final SYSUI_STATE_ONE_HANDED_ACTIVE:I = 0x10000

.field public static final SYSUI_STATE_OVERVIEW_DISABLED:I = 0x80

.field public static final SYSUI_STATE_QUICK_SETTINGS_EXPANDED:I = 0x800

.field public static final SYSUI_STATE_REQUESTED_HOME_KEY:I = 0x8000000

.field public static final SYSUI_STATE_REQUESTED_RECENT_KEY:I = 0x4000000

.field public static final SYSUI_STATE_SCREEN_PINNING:I = 0x1

.field public static final SYSUI_STATE_SEARCH_DISABLED:I = 0x400

.field public static final SYSUI_STATE_STATUS_BAR_KEYGUARD_SHOWING:I = 0x40

.field public static final SYSUI_STATE_STATUS_BAR_KEYGUARD_SHOWING_OCCLUDED:I = 0x200

.field public static final SYSUI_STATE_TRACING_ENABLED:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertDpToPixel(F)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float/2addr p0, v0

    .line 12
    float-to-int p0, p0

    .line 13
    return p0
.end method

.method public static getQuickScrubTouchSlopPx()I
    .locals 1

    .line 1
    const/high16 v0, 0x41c00000    # 24.0f

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/QuickStepContract;->convertDpToPixel(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static getQuickStepDragSlopPx()I
    .locals 1

    .line 1
    const/high16 v0, 0x41200000    # 10.0f

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/QuickStepContract;->convertDpToPixel(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final getQuickStepTouchSlopPx(Landroid/content/Context;)F
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getQuickStepTouchSlopPx()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 2
    invoke-static {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/QuickStepContract;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getSystemUiStateString(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/StringJoiner;

    .line 2
    .line 3
    const-string/jumbo v1, "|"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    and-int/lit8 v1, p0, 0x1

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string/jumbo v1, "screen_pinned"

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v2

    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 21
    .line 22
    .line 23
    and-int/lit16 v1, p0, 0x80

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string/jumbo v1, "overview_disabled"

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v1, v2

    .line 32
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 33
    .line 34
    .line 35
    and-int/lit16 v1, p0, 0x100

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const-string v1, "home_disabled"

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-object v1, v2

    .line 43
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 44
    .line 45
    .line 46
    and-int/lit16 v1, p0, 0x400

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    const-string/jumbo v1, "search_disabled"

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move-object v1, v2

    .line 55
    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 56
    .line 57
    .line 58
    and-int/lit8 v1, p0, 0x2

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    const-string v1, "navbar_hidden"

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_4
    move-object v1, v2

    .line 66
    :goto_4
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 67
    .line 68
    .line 69
    and-int/lit8 v1, p0, 0x4

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    const-string v1, "notif_visible"

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_5
    move-object v1, v2

    .line 77
    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 78
    .line 79
    .line 80
    and-int/lit16 v1, p0, 0x800

    .line 81
    .line 82
    if-eqz v1, :cond_6

    .line 83
    .line 84
    const-string/jumbo v1, "qs_visible"

    .line 85
    .line 86
    .line 87
    goto :goto_6

    .line 88
    :cond_6
    move-object v1, v2

    .line 89
    :goto_6
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 90
    .line 91
    .line 92
    and-int/lit8 v1, p0, 0x40

    .line 93
    .line 94
    if-eqz v1, :cond_7

    .line 95
    .line 96
    const-string v1, "keygrd_visible"

    .line 97
    .line 98
    goto :goto_7

    .line 99
    :cond_7
    move-object v1, v2

    .line 100
    :goto_7
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 101
    .line 102
    .line 103
    and-int/lit16 v1, p0, 0x200

    .line 104
    .line 105
    if-eqz v1, :cond_8

    .line 106
    .line 107
    const-string v1, "keygrd_occluded"

    .line 108
    .line 109
    goto :goto_8

    .line 110
    :cond_8
    move-object v1, v2

    .line 111
    :goto_8
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 112
    .line 113
    .line 114
    and-int/lit8 v1, p0, 0x8

    .line 115
    .line 116
    if-eqz v1, :cond_9

    .line 117
    .line 118
    const-string v1, "bouncer_visible"

    .line 119
    .line 120
    goto :goto_9

    .line 121
    :cond_9
    move-object v1, v2

    .line 122
    :goto_9
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 123
    .line 124
    .line 125
    const v1, 0x8000

    .line 126
    .line 127
    .line 128
    and-int/2addr v1, p0

    .line 129
    if-eqz v1, :cond_a

    .line 130
    .line 131
    const-string v1, "global_actions"

    .line 132
    .line 133
    goto :goto_a

    .line 134
    :cond_a
    move-object v1, v2

    .line 135
    :goto_a
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 136
    .line 137
    .line 138
    and-int/lit8 v1, p0, 0x10

    .line 139
    .line 140
    if-eqz v1, :cond_b

    .line 141
    .line 142
    const-string v1, "a11y_click"

    .line 143
    .line 144
    goto :goto_b

    .line 145
    :cond_b
    move-object v1, v2

    .line 146
    :goto_b
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 147
    .line 148
    .line 149
    and-int/lit8 v1, p0, 0x20

    .line 150
    .line 151
    if-eqz v1, :cond_c

    .line 152
    .line 153
    const-string v1, "a11y_long_click"

    .line 154
    .line 155
    goto :goto_c

    .line 156
    :cond_c
    move-object v1, v2

    .line 157
    :goto_c
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 158
    .line 159
    .line 160
    and-int/lit16 v1, p0, 0x1000

    .line 161
    .line 162
    if-eqz v1, :cond_d

    .line 163
    .line 164
    const-string/jumbo v1, "tracing"

    .line 165
    .line 166
    .line 167
    goto :goto_d

    .line 168
    :cond_d
    move-object v1, v2

    .line 169
    :goto_d
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 170
    .line 171
    .line 172
    and-int/lit16 v1, p0, 0x2000

    .line 173
    .line 174
    if-eqz v1, :cond_e

    .line 175
    .line 176
    const-string v1, "asst_gesture_constrain"

    .line 177
    .line 178
    goto :goto_e

    .line 179
    :cond_e
    move-object v1, v2

    .line 180
    :goto_e
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 181
    .line 182
    .line 183
    and-int/lit16 v1, p0, 0x4000

    .line 184
    .line 185
    if-eqz v1, :cond_f

    .line 186
    .line 187
    const-string v1, "bubbles_expanded"

    .line 188
    .line 189
    goto :goto_f

    .line 190
    :cond_f
    move-object v1, v2

    .line 191
    :goto_f
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 192
    .line 193
    .line 194
    const/high16 v1, 0x10000

    .line 195
    .line 196
    and-int/2addr v1, p0

    .line 197
    if-eqz v1, :cond_10

    .line 198
    .line 199
    const-string/jumbo v1, "one_handed_active"

    .line 200
    .line 201
    .line 202
    goto :goto_10

    .line 203
    :cond_10
    move-object v1, v2

    .line 204
    :goto_10
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 205
    .line 206
    .line 207
    const/high16 v1, 0x20000

    .line 208
    .line 209
    and-int/2addr v1, p0

    .line 210
    if-eqz v1, :cond_11

    .line 211
    .line 212
    const-string v1, "allow_gesture"

    .line 213
    .line 214
    goto :goto_11

    .line 215
    :cond_11
    move-object v1, v2

    .line 216
    :goto_11
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 217
    .line 218
    .line 219
    const/high16 v1, 0x40000

    .line 220
    .line 221
    and-int/2addr v1, p0

    .line 222
    if-eqz v1, :cond_12

    .line 223
    .line 224
    const-string v1, "ime_visible"

    .line 225
    .line 226
    goto :goto_12

    .line 227
    :cond_12
    move-object v1, v2

    .line 228
    :goto_12
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 229
    .line 230
    .line 231
    const/high16 v1, 0x80000

    .line 232
    .line 233
    and-int/2addr v1, p0

    .line 234
    if-eqz v1, :cond_13

    .line 235
    .line 236
    const-string v1, "magnification_overlap"

    .line 237
    .line 238
    goto :goto_13

    .line 239
    :cond_13
    move-object v1, v2

    .line 240
    :goto_13
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 241
    .line 242
    .line 243
    const/high16 v1, 0x100000

    .line 244
    .line 245
    and-int/2addr v1, p0

    .line 246
    if-eqz v1, :cond_14

    .line 247
    .line 248
    const-string v1, "ime_switcher_showing"

    .line 249
    .line 250
    goto :goto_14

    .line 251
    :cond_14
    move-object v1, v2

    .line 252
    :goto_14
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 253
    .line 254
    .line 255
    const/high16 v1, 0x200000

    .line 256
    .line 257
    and-int/2addr v1, p0

    .line 258
    if-eqz v1, :cond_15

    .line 259
    .line 260
    const-string v1, "device_dozing"

    .line 261
    .line 262
    goto :goto_15

    .line 263
    :cond_15
    move-object v1, v2

    .line 264
    :goto_15
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 265
    .line 266
    .line 267
    const/high16 v1, 0x400000

    .line 268
    .line 269
    and-int/2addr v1, p0

    .line 270
    if-eqz v1, :cond_16

    .line 271
    .line 272
    const-string v1, "back_disabled"

    .line 273
    .line 274
    goto :goto_16

    .line 275
    :cond_16
    move-object v1, v2

    .line 276
    :goto_16
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 277
    .line 278
    .line 279
    const/high16 v1, 0x800000

    .line 280
    .line 281
    and-int/2addr v1, p0

    .line 282
    if-eqz v1, :cond_17

    .line 283
    .line 284
    const-string v1, "bubbles_mange_menu_expanded"

    .line 285
    .line 286
    goto :goto_17

    .line 287
    :cond_17
    move-object v1, v2

    .line 288
    :goto_17
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 289
    .line 290
    .line 291
    const/high16 v1, 0x2000000

    .line 292
    .line 293
    and-int/2addr v1, p0

    .line 294
    if-eqz v1, :cond_18

    .line 295
    .line 296
    const-string v1, "game_tools_showing"

    .line 297
    .line 298
    goto :goto_18

    .line 299
    :cond_18
    move-object v1, v2

    .line 300
    :goto_18
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 301
    .line 302
    .line 303
    const/high16 v1, 0x4000000

    .line 304
    .line 305
    and-int/2addr v1, p0

    .line 306
    if-eqz v1, :cond_19

    .line 307
    .line 308
    const-string/jumbo v1, "requested_recent_key"

    .line 309
    .line 310
    .line 311
    goto :goto_19

    .line 312
    :cond_19
    move-object v1, v2

    .line 313
    :goto_19
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 314
    .line 315
    .line 316
    const/high16 v1, 0x8000000

    .line 317
    .line 318
    and-int/2addr v1, p0

    .line 319
    if-eqz v1, :cond_1a

    .line 320
    .line 321
    const-string/jumbo v1, "requested_home_key"

    .line 322
    .line 323
    .line 324
    goto :goto_1a

    .line 325
    :cond_1a
    move-object v1, v2

    .line 326
    :goto_1a
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 327
    .line 328
    .line 329
    const/high16 v1, 0x10000000

    .line 330
    .line 331
    and-int/2addr v1, p0

    .line 332
    if-eqz v1, :cond_1b

    .line 333
    .line 334
    const-string v1, "navbar_gone"

    .line 335
    .line 336
    goto :goto_1b

    .line 337
    :cond_1b
    move-object v1, v2

    .line 338
    :goto_1b
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 339
    .line 340
    .line 341
    const/high16 v1, 0x20000000

    .line 342
    .line 343
    and-int/2addr p0, v1

    .line 344
    if-eqz p0, :cond_1c

    .line 345
    .line 346
    const-string v2, "knox_hard_key_intent"

    .line 347
    .line 348
    :cond_1c
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    return-object p0
.end method

.method public static getWindowCornerRadius(Landroid/content/Context;)F
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isAssistantGestureDisabled(I)Z
    .locals 2

    .line 1
    const/high16 v0, 0x20000

    .line 2
    .line 3
    and-int/2addr v0, p0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    and-int/lit8 p0, p0, -0x3

    .line 7
    .line 8
    :cond_0
    and-int/lit16 v0, p0, 0xc0b

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    and-int/lit8 v0, p0, 0x4

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    and-int/lit8 p0, p0, 0x40

    .line 19
    .line 20
    if-nez p0, :cond_2

    .line 21
    .line 22
    return v1

    .line 23
    :cond_2
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static isBackGestureDisabled(I)Z
    .locals 2

    .line 1
    and-int/lit8 v0, p0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    const v0, 0x8000

    .line 7
    .line 8
    .line 9
    and-int/2addr v0, p0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/high16 v0, 0x20000

    .line 14
    .line 15
    and-int/2addr v0, p0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    and-int/lit8 p0, p0, -0x3

    .line 19
    .line 20
    :cond_1
    const v0, 0x10000002

    .line 21
    .line 22
    .line 23
    and-int/2addr p0, v0

    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_2
    :goto_0
    return v1
.end method

.method public static isGesturalMode(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 11
    :goto_1
    return p0
.end method

.method public static isLegacyMode(I)Z
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
.end method

.method public static isSwipeUpMode(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    return v0
.end method

.method public static supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
