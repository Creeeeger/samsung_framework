.class public final Lcom/android/systemui/volume/Events;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DISMISS_REASONS:[Ljava/lang/String;

.field public static final EVENT_TAGS:[Ljava/lang/String;

.field public static final SHOW_REASONS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field static sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

.field static sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    .line 1
    const-class v0, Lcom/android/systemui/volume/Events;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string/jumbo v1, "show_dialog"

    .line 10
    .line 11
    .line 12
    const-string v2, "dismiss_dialog"

    .line 13
    .line 14
    const-string v3, "active_stream_changed"

    .line 15
    .line 16
    const-string v4, "expand"

    .line 17
    .line 18
    const-string v5, "key"

    .line 19
    .line 20
    const-string v6, "collection_started"

    .line 21
    .line 22
    const-string v7, "collection_stopped"

    .line 23
    .line 24
    const-string v8, "icon_click"

    .line 25
    .line 26
    const-string/jumbo v9, "settings_click"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v10, "touch_level_changed"

    .line 30
    .line 31
    .line 32
    const-string v11, "level_changed"

    .line 33
    .line 34
    const-string v12, "internal_ringer_mode_changed"

    .line 35
    .line 36
    const-string v13, "external_ringer_mode_changed"

    .line 37
    .line 38
    const-string/jumbo v14, "zen_mode_changed"

    .line 39
    .line 40
    .line 41
    const-string/jumbo v15, "suppressor_changed"

    .line 42
    .line 43
    .line 44
    const-string v16, "mute_changed"

    .line 45
    .line 46
    const-string/jumbo v17, "touch_level_done"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v18, "zen_mode_config_changed"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v19, "ringer_toggle"

    .line 53
    .line 54
    .line 55
    const-string/jumbo v20, "show_usb_overheat_alarm"

    .line 56
    .line 57
    .line 58
    const-string v21, "dismiss_usb_overheat_alarm"

    .line 59
    .line 60
    const-string v22, "odi_captions_click"

    .line 61
    .line 62
    const-string v23, "odi_captions_tooltip_click"

    .line 63
    .line 64
    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    .line 69
    .line 70
    const-string/jumbo v1, "unknown"

    .line 71
    .line 72
    .line 73
    const-string/jumbo v2, "touch_outside"

    .line 74
    .line 75
    .line 76
    const-string/jumbo v3, "volume_controller"

    .line 77
    .line 78
    .line 79
    const-string/jumbo v4, "timeout"

    .line 80
    .line 81
    .line 82
    const-string/jumbo v5, "screen_off"

    .line 83
    .line 84
    .line 85
    const-string/jumbo v6, "settings_clicked"

    .line 86
    .line 87
    .line 88
    const-string v7, "done_clicked"

    .line 89
    .line 90
    const-string v8, "a11y_stream_changed"

    .line 91
    .line 92
    const-string/jumbo v9, "output_chooser"

    .line 93
    .line 94
    .line 95
    const-string/jumbo v10, "usb_temperature_below_threshold"

    .line 96
    .line 97
    .line 98
    const-string v11, "csd_warning_timeout"

    .line 99
    .line 100
    const-string/jumbo v12, "posture_changed"

    .line 101
    .line 102
    .line 103
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    .line 108
    .line 109
    const-string/jumbo v0, "remote_volume_changed"

    .line 110
    .line 111
    .line 112
    const-string/jumbo v1, "usb_temperature_above_threshold"

    .line 113
    .line 114
    .line 115
    const-string/jumbo v2, "unknown"

    .line 116
    .line 117
    .line 118
    const-string/jumbo v3, "volume_changed"

    .line 119
    .line 120
    .line 121
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sput-object v0, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    .line 126
    .line 127
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    .line 128
    .line 129
    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 130
    .line 131
    .line 132
    sput-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 133
    .line 134
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 135
    .line 136
    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    .line 137
    .line 138
    .line 139
    sput-object v0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 140
    .line 141
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs writeEvent(I[Ljava/lang/Object;)V
    .locals 17

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    if-lt v0, v3, :cond_0

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    goto/16 :goto_e

    .line 16
    .line 17
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v4, "writeEvent "

    .line 20
    .line 21
    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    aget-object v2, v2, v0

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    array-length v2, v1

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x8

    .line 34
    .line 35
    if-ne v0, v1, :cond_1

    .line 36
    .line 37
    sget-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 38
    .line 39
    const/16 v1, 0x56a

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 45
    .line 46
    sget-object v1, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SETTINGS_CLICK:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 47
    .line 48
    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto/16 :goto_e

    .line 56
    .line 57
    :cond_2
    const-string v2, " "

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, "normal"

    .line 63
    .line 64
    const-string/jumbo v4, "silent"

    .line 65
    .line 66
    .line 67
    const-string/jumbo v5, "unknown"

    .line 68
    .line 69
    .line 70
    const-string/jumbo v6, "vibrate"

    .line 71
    .line 72
    .line 73
    const/4 v7, 0x1

    .line 74
    const/4 v8, 0x2

    .line 75
    sget-object v9, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    .line 76
    .line 77
    const/16 v10, 0x5b1

    .line 78
    .line 79
    sget-object v11, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    .line 80
    .line 81
    const/16 v12, 0xcf

    .line 82
    .line 83
    const-string v13, " keyguard="

    .line 84
    .line 85
    const/16 v14, 0x20

    .line 86
    .line 87
    const/4 v15, 0x3

    .line 88
    const/16 v16, 0x0

    .line 89
    .line 90
    packed-switch v0, :pswitch_data_0

    .line 91
    .line 92
    .line 93
    :pswitch_0
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    goto/16 :goto_d

    .line 101
    .line 102
    :pswitch_1
    sget-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 103
    .line 104
    invoke-virtual {v0, v10}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 108
    .line 109
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->USB_OVERHEAT_ALARM_DISMISSED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 110
    .line 111
    invoke-interface {v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 112
    .line 113
    .line 114
    array-length v0, v1

    .line 115
    if-le v0, v7, :cond_28

    .line 116
    .line 117
    aget-object v0, v1, v7

    .line 118
    .line 119
    check-cast v0, Ljava/lang/Boolean;

    .line 120
    .line 121
    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    const-string v5, "dismiss_usb_overheat_alarm"

    .line 128
    .line 129
    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    aget-object v1, v1, v16

    .line 133
    .line 134
    check-cast v1, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    aget-object v1, v11, v1

    .line 141
    .line 142
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    goto/16 :goto_d

    .line 152
    .line 153
    :pswitch_2
    sget-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 154
    .line 155
    invoke-virtual {v0, v10}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 156
    .line 157
    .line 158
    sget-object v0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 159
    .line 160
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->USB_OVERHEAT_ALARM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 161
    .line 162
    invoke-interface {v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 163
    .line 164
    .line 165
    array-length v0, v1

    .line 166
    if-le v0, v7, :cond_28

    .line 167
    .line 168
    aget-object v0, v1, v7

    .line 169
    .line 170
    check-cast v0, Ljava/lang/Boolean;

    .line 171
    .line 172
    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    const-string/jumbo v5, "show_usb_overheat_alarm"

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    aget-object v1, v1, v16

    .line 185
    .line 186
    check-cast v1, Ljava/lang/Integer;

    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    aget-object v1, v9, v1

    .line 193
    .line 194
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    goto/16 :goto_d

    .line 204
    .line 205
    :pswitch_3
    aget-object v0, v1, v16

    .line 206
    .line 207
    check-cast v0, Ljava/lang/Integer;

    .line 208
    .line 209
    sget-object v1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    const/16 v10, 0x569

    .line 216
    .line 217
    invoke-virtual {v1, v10, v9}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 218
    .line 219
    .line 220
    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    if-eqz v9, :cond_5

    .line 227
    .line 228
    if-eq v9, v7, :cond_4

    .line 229
    .line 230
    if-eq v9, v8, :cond_3

    .line 231
    .line 232
    sget-object v9, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_3
    sget-object v9, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_NORMAL:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 236
    .line 237
    goto :goto_0

    .line 238
    :cond_4
    sget-object v9, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_VIBRATE:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 239
    .line 240
    goto :goto_0

    .line 241
    :cond_5
    sget-object v9, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_SILENT:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 242
    .line 243
    :goto_0
    invoke-interface {v1, v9}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_7

    .line 251
    .line 252
    if-eq v0, v7, :cond_6

    .line 253
    .line 254
    if-eq v0, v8, :cond_8

    .line 255
    .line 256
    move-object v2, v5

    .line 257
    goto :goto_1

    .line 258
    :cond_6
    move-object v2, v6

    .line 259
    goto :goto_1

    .line 260
    :cond_7
    move-object v2, v4

    .line 261
    :cond_8
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    goto/16 :goto_d

    .line 265
    .line 266
    :pswitch_4
    array-length v0, v1

    .line 267
    if-le v0, v7, :cond_15

    .line 268
    .line 269
    aget-object v0, v1, v7

    .line 270
    .line 271
    check-cast v0, Ljava/lang/Integer;

    .line 272
    .line 273
    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    const/16 v5, 0xd1

    .line 280
    .line 281
    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 282
    .line 283
    .line 284
    sget-object v2, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-nez v0, :cond_9

    .line 291
    .line 292
    sget-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_9
    sget-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 296
    .line 297
    :goto_2
    invoke-interface {v2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_6

    .line 301
    .line 302
    :pswitch_5
    array-length v0, v1

    .line 303
    if-le v0, v7, :cond_28

    .line 304
    .line 305
    aget-object v0, v1, v16

    .line 306
    .line 307
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    aget-object v0, v1, v7

    .line 314
    .line 315
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    goto/16 :goto_d

    .line 319
    .line 320
    :pswitch_6
    aget-object v0, v1, v16

    .line 321
    .line 322
    check-cast v0, Ljava/lang/Integer;

    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eqz v1, :cond_d

    .line 329
    .line 330
    if-eq v1, v7, :cond_c

    .line 331
    .line 332
    if-eq v1, v8, :cond_b

    .line 333
    .line 334
    if-eq v1, v15, :cond_a

    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_a
    const-string v5, "alarms"

    .line 338
    .line 339
    goto :goto_3

    .line 340
    :cond_b
    const-string v5, "no_interruptions"

    .line 341
    .line 342
    goto :goto_3

    .line 343
    :cond_c
    const-string v5, "important_interruptions"

    .line 344
    .line 345
    goto :goto_3

    .line 346
    :cond_d
    const-string v5, "off"

    .line 347
    .line 348
    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_11

    .line 358
    .line 359
    if-eq v0, v7, :cond_10

    .line 360
    .line 361
    if-eq v0, v8, :cond_f

    .line 362
    .line 363
    if-eq v0, v15, :cond_e

    .line 364
    .line 365
    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->INVALID:Lcom/android/systemui/volume/Events$ZenModeEvent;

    .line 366
    .line 367
    goto :goto_4

    .line 368
    :cond_e
    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_ALARMS_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

    .line 369
    .line 370
    goto :goto_4

    .line 371
    :cond_f
    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_NO_INTERRUPTIONS:Lcom/android/systemui/volume/Events$ZenModeEvent;

    .line 372
    .line 373
    goto :goto_4

    .line 374
    :cond_10
    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_IMPORTANT_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

    .line 375
    .line 376
    goto :goto_4

    .line 377
    :cond_11
    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_OFF:Lcom/android/systemui/volume/Events$ZenModeEvent;

    .line 378
    .line 379
    :goto_4
    invoke-interface {v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 380
    .line 381
    .line 382
    goto/16 :goto_d

    .line 383
    .line 384
    :pswitch_7
    aget-object v0, v1, v16

    .line 385
    .line 386
    check-cast v0, Ljava/lang/Integer;

    .line 387
    .line 388
    sget-object v9, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 389
    .line 390
    const/16 v10, 0xd5

    .line 391
    .line 392
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    invoke-virtual {v9, v10, v0}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 397
    .line 398
    .line 399
    :pswitch_8
    aget-object v0, v1, v16

    .line 400
    .line 401
    check-cast v0, Ljava/lang/Integer;

    .line 402
    .line 403
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_13

    .line 408
    .line 409
    if-eq v0, v7, :cond_12

    .line 410
    .line 411
    if-eq v0, v8, :cond_14

    .line 412
    .line 413
    move-object v2, v5

    .line 414
    goto :goto_5

    .line 415
    :cond_12
    move-object v2, v6

    .line 416
    goto :goto_5

    .line 417
    :cond_13
    move-object v2, v4

    .line 418
    :cond_14
    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    goto/16 :goto_d

    .line 422
    .line 423
    :cond_15
    :goto_6
    :pswitch_9
    array-length v0, v1

    .line 424
    if-le v0, v7, :cond_28

    .line 425
    .line 426
    aget-object v0, v1, v16

    .line 427
    .line 428
    check-cast v0, Ljava/lang/Integer;

    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    invoke-static {v0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    aget-object v0, v1, v7

    .line 445
    .line 446
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    goto/16 :goto_d

    .line 450
    .line 451
    :pswitch_a
    array-length v0, v1

    .line 452
    if-le v0, v7, :cond_28

    .line 453
    .line 454
    aget-object v0, v1, v16

    .line 455
    .line 456
    check-cast v0, Ljava/lang/Integer;

    .line 457
    .line 458
    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 459
    .line 460
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 461
    .line 462
    .line 463
    move-result v4

    .line 464
    const/16 v5, 0xd4

    .line 465
    .line 466
    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 467
    .line 468
    .line 469
    aget-object v1, v1, v7

    .line 470
    .line 471
    check-cast v1, Ljava/lang/Integer;

    .line 472
    .line 473
    sget-object v2, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 474
    .line 475
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 476
    .line 477
    .line 478
    move-result v4

    .line 479
    if-eq v4, v7, :cond_18

    .line 480
    .line 481
    if-eq v4, v8, :cond_17

    .line 482
    .line 483
    if-eq v4, v15, :cond_16

    .line 484
    .line 485
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 486
    .line 487
    goto :goto_7

    .line 488
    :cond_16
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_TO_VIBRATE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 489
    .line 490
    goto :goto_7

    .line 491
    :cond_17
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_MUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 492
    .line 493
    goto :goto_7

    .line 494
    :cond_18
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_UNMUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 495
    .line 496
    :goto_7
    invoke-interface {v2, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    invoke-static {v0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-eq v0, v7, :cond_1a

    .line 518
    .line 519
    if-eq v0, v8, :cond_19

    .line 520
    .line 521
    if-eq v0, v15, :cond_1b

    .line 522
    .line 523
    const-string/jumbo v1, "unknown_state_"

    .line 524
    .line 525
    .line 526
    invoke-static {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    goto :goto_8

    .line 531
    :cond_19
    const-string v6, "mute"

    .line 532
    .line 533
    goto :goto_8

    .line 534
    :cond_1a
    const-string/jumbo v6, "unmute"

    .line 535
    .line 536
    .line 537
    :cond_1b
    :goto_8
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    goto/16 :goto_d

    .line 541
    .line 542
    :pswitch_b
    array-length v0, v1

    .line 543
    if-le v0, v7, :cond_28

    .line 544
    .line 545
    aget-object v0, v1, v16

    .line 546
    .line 547
    check-cast v0, Ljava/lang/Integer;

    .line 548
    .line 549
    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 550
    .line 551
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    const/16 v5, 0xd3

    .line 556
    .line 557
    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 558
    .line 559
    .line 560
    aget-object v1, v1, v7

    .line 561
    .line 562
    check-cast v1, Ljava/lang/Integer;

    .line 563
    .line 564
    sget-object v2, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 565
    .line 566
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 567
    .line 568
    .line 569
    move-result v4

    .line 570
    if-nez v4, :cond_1c

    .line 571
    .line 572
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_KEY_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 573
    .line 574
    goto :goto_9

    .line 575
    :cond_1c
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_KEY:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 576
    .line 577
    :goto_9
    invoke-interface {v2, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    invoke-static {v0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    goto/16 :goto_d

    .line 598
    .line 599
    :pswitch_c
    aget-object v0, v1, v16

    .line 600
    .line 601
    check-cast v0, Ljava/lang/Boolean;

    .line 602
    .line 603
    sget-object v1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 604
    .line 605
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    const/16 v4, 0xd0

    .line 610
    .line 611
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 612
    .line 613
    .line 614
    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 615
    .line 616
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    if-eqz v2, :cond_1d

    .line 621
    .line 622
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_EXPAND_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 623
    .line 624
    goto :goto_a

    .line 625
    :cond_1d
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_COLLAPSE_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 626
    .line 627
    :goto_a
    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    goto/16 :goto_d

    .line 634
    .line 635
    :pswitch_d
    aget-object v0, v1, v16

    .line 636
    .line 637
    check-cast v0, Ljava/lang/Integer;

    .line 638
    .line 639
    sget-object v1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 640
    .line 641
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 642
    .line 643
    .line 644
    move-result v2

    .line 645
    const/16 v4, 0xd2

    .line 646
    .line 647
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 648
    .line 649
    .line 650
    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 651
    .line 652
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_ACTIVE_STREAM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 653
    .line 654
    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 658
    .line 659
    .line 660
    move-result v0

    .line 661
    invoke-static {v0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    goto/16 :goto_d

    .line 669
    .line 670
    :pswitch_e
    sget-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 671
    .line 672
    invoke-virtual {v0, v12}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 673
    .line 674
    .line 675
    aget-object v0, v1, v16

    .line 676
    .line 677
    check-cast v0, Ljava/lang/Integer;

    .line 678
    .line 679
    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 680
    .line 681
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 682
    .line 683
    .line 684
    move-result v2

    .line 685
    if-eq v2, v7, :cond_24

    .line 686
    .line 687
    if-eq v2, v8, :cond_23

    .line 688
    .line 689
    if-eq v2, v15, :cond_22

    .line 690
    .line 691
    const/4 v4, 0x4

    .line 692
    if-eq v2, v4, :cond_21

    .line 693
    .line 694
    const/4 v4, 0x5

    .line 695
    if-eq v2, v4, :cond_20

    .line 696
    .line 697
    const/4 v4, 0x7

    .line 698
    if-eq v2, v4, :cond_1f

    .line 699
    .line 700
    const/16 v4, 0x9

    .line 701
    .line 702
    if-eq v2, v4, :cond_1e

    .line 703
    .line 704
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 705
    .line 706
    goto :goto_b

    .line 707
    :cond_1e
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_USB_TEMP_ALARM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 708
    .line 709
    goto :goto_b

    .line 710
    :cond_1f
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_STREAM_GONE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 711
    .line 712
    goto :goto_b

    .line 713
    :cond_20
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SETTINGS:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 714
    .line 715
    goto :goto_b

    .line 716
    :cond_21
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SCREEN_OFF:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 717
    .line 718
    goto :goto_b

    .line 719
    :cond_22
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_TIMEOUT:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 720
    .line 721
    goto :goto_b

    .line 722
    :cond_23
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SYSTEM:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 723
    .line 724
    goto :goto_b

    .line 725
    :cond_24
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_TOUCH_OUTSIDE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 726
    .line 727
    :goto_b
    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 731
    .line 732
    .line 733
    move-result v0

    .line 734
    aget-object v0, v11, v0

    .line 735
    .line 736
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    goto :goto_d

    .line 740
    :pswitch_f
    sget-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 741
    .line 742
    invoke-virtual {v0, v12}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 743
    .line 744
    .line 745
    array-length v0, v1

    .line 746
    if-le v0, v7, :cond_28

    .line 747
    .line 748
    aget-object v0, v1, v16

    .line 749
    .line 750
    check-cast v0, Ljava/lang/Integer;

    .line 751
    .line 752
    aget-object v1, v1, v7

    .line 753
    .line 754
    check-cast v1, Ljava/lang/Boolean;

    .line 755
    .line 756
    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 757
    .line 758
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 759
    .line 760
    .line 761
    move-result v4

    .line 762
    const-string/jumbo v5, "volume_from_keyguard"

    .line 763
    .line 764
    .line 765
    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 766
    .line 767
    .line 768
    sget-object v2, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 769
    .line 770
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 771
    .line 772
    .line 773
    move-result v4

    .line 774
    if-eq v4, v7, :cond_27

    .line 775
    .line 776
    if-eq v4, v8, :cond_26

    .line 777
    .line 778
    if-eq v4, v15, :cond_25

    .line 779
    .line 780
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    .line 781
    .line 782
    goto :goto_c

    .line 783
    :cond_25
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->VOLUME_DIALOG_SHOW_USB_TEMP_ALARM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    .line 784
    .line 785
    goto :goto_c

    .line 786
    :cond_26
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->VOLUME_DIALOG_SHOW_REMOTE_VOLUME_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    .line 787
    .line 788
    goto :goto_c

    .line 789
    :cond_27
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->VOLUME_DIALOG_SHOW_VOLUME_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    .line 790
    .line 791
    :goto_c
    invoke-interface {v2, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 795
    .line 796
    .line 797
    move-result v0

    .line 798
    aget-object v0, v9, v0

    .line 799
    .line 800
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    :cond_28
    :goto_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    :goto_e
    sget-object v1, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    .line 814
    .line 815
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    .line 817
    .line 818
    return-void

    .line 819
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
