.class public final Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;
.super Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BATTERY_BACKGROUND_ALPHA:F

.field public static final BLINKING_INTERVAL:I

.field public static final DEBUG:Z

.field public static final INVALID_STRING:Ljava/lang/String;

.field public static final MSG_POST_INVALIDATE:I


# instance fields
.field public final batteryFramePaint:Landroid/graphics/Paint;

.field public final batteryLevelBackgroundDarkColor:I

.field public final batteryLevelBackgroundLightColor:I

.field public final batteryLevelBackgroundPaint:Landroid/graphics/Paint;

.field public batteryLevelColor:I

.field public final batteryLevelPaint:Landroid/graphics/Paint;

.field public final batteryLightningBoltDarkColor:I

.field public final batteryLightningBoltDarkPaint:Landroid/graphics/Paint;

.field public final batteryLightningBoltLightColor:I

.field public final batteryLightningBoltLightPaint:Landroid/graphics/Paint;

.field public batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

.field public colors:[I

.field public final context:Landroid/content/Context;

.field public final criticalLevel:I

.field public darkIntensity:F

.field public final extraThreshold:I

.field public flagBlinkingNeeded:Z

.field public flagDrawIcon:Z

.field public frameOver95:Landroid/graphics/drawable/Drawable;

.field public frameUnder15:Landroid/graphics/drawable/Drawable;

.field public height:I

.field public iconTint:I

.field public intrinsicHeight:I

.field public intrinsicWidth:I

.field public invalidTextHeight:F

.field public final invalidTextPaint:Landroid/graphics/Paint;

.field public final postInvalidateHandler:Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$postInvalidateHandler$1;

.field public final warningString:Ljava/lang/String;

.field public warningTextHeight:F

.field public final warningTextPaint:Landroid/graphics/Paint;

.field public width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput-boolean v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->DEBUG:Z

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    sput v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->MSG_POST_INVALIDATE:I

    .line 15
    .line 16
    const/16 v0, 0x3e8

    .line 17
    .line 18
    sput v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->BLINKING_INTERVAL:I

    .line 19
    .line 20
    const-string v0, "X"

    .line 21
    .line 22
    sput-object v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->INVALID_STRING:Ljava/lang/String;

    .line 23
    .line 24
    const v0, 0x3eb33333    # 0.35f

    .line 25
    .line 26
    .line 27
    sput v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->BATTERY_BACKGROUND_ALPHA:F

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v1, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryFramePaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    new-instance v1, Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    .line 20
    .line 21
    new-instance v1, Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    .line 27
    .line 28
    new-instance v1, Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    .line 34
    .line 35
    new-instance v1, Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLightningBoltLightPaint:Landroid/graphics/Paint;

    .line 41
    .line 42
    const/4 v1, -0x1

    .line 43
    iput v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->iconTint:I

    .line 44
    .line 45
    new-instance v1, Landroid/graphics/Paint;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->warningTextPaint:Landroid/graphics/Paint;

    .line 52
    .line 53
    new-instance v1, Lcom/android/systemui/battery/SamsungBatteryState;

    .line 54
    .line 55
    invoke-direct {v1}, Lcom/android/systemui/battery/SamsungBatteryState;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    .line 59
    .line 60
    const/high16 v1, -0x40800000    # -1.0f

    .line 61
    .line 62
    iput v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->darkIntensity:F

    .line 63
    .line 64
    iput-boolean v2, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->flagDrawIcon:Z

    .line 65
    .line 66
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v3, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$postInvalidateHandler$1;

    .line 71
    .line 72
    invoke-direct {v3, p0, v1}, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$postInvalidateHandler$1;-><init>(Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;Landroid/os/Looper;)V

    .line 73
    .line 74
    .line 75
    iput-object v3, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->postInvalidateHandler:Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$postInvalidateHandler$1;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const v1, 0x7f03000d

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const v3, 0x7f03000e

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    mul-int/lit8 v4, v3, 0x2

    .line 100
    .line 101
    new-array v4, v4, [I

    .line 102
    .line 103
    iput-object v4, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->colors:[I

    .line 104
    .line 105
    const/4 v4, 0x0

    .line 106
    move v5, v4

    .line 107
    :goto_0
    if-ge v5, v3, :cond_4

    .line 108
    .line 109
    iget-object v6, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->colors:[I

    .line 110
    .line 111
    if-nez v6, :cond_0

    .line 112
    .line 113
    move-object v6, v0

    .line 114
    :cond_0
    mul-int/lit8 v7, v5, 0x2

    .line 115
    .line 116
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    aput v8, v6, v7

    .line 121
    .line 122
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getType(I)I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    const/4 v8, 0x2

    .line 127
    if-ne v6, v8, :cond_2

    .line 128
    .line 129
    iget-object v6, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->colors:[I

    .line 130
    .line 131
    if-nez v6, :cond_1

    .line 132
    .line 133
    move-object v6, v0

    .line 134
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 135
    .line 136
    iget-object v8, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    .line 137
    .line 138
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    invoke-static {v9, v8, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(ILandroid/content/Context;I)I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    aput v8, v6, v7

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->colors:[I

    .line 150
    .line 151
    if-nez v6, :cond_3

    .line 152
    .line 153
    move-object v6, v0

    .line 154
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 155
    .line 156
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    aput v8, v6, v7

    .line 161
    .line 162
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    .line 170
    .line 171
    const/4 p1, 0x4

    .line 172
    iput p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->criticalLevel:I

    .line 173
    .line 174
    iget-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    .line 175
    .line 176
    const v1, 0x7f1301dd

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iput-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->warningString:Ljava/lang/String;

    .line 184
    .line 185
    const-string/jumbo p1, "sans-serif"

    .line 186
    .line 187
    .line 188
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    iget-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->warningTextPaint:Landroid/graphics/Paint;

    .line 193
    .line 194
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 195
    .line 196
    .line 197
    iget-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->warningTextPaint:Landroid/graphics/Paint;

    .line 198
    .line 199
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 200
    .line 201
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 202
    .line 203
    .line 204
    iget-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->colors:[I

    .line 205
    .line 206
    if-nez v1, :cond_5

    .line 207
    .line 208
    move-object v3, v0

    .line 209
    goto :goto_2

    .line 210
    :cond_5
    move-object v3, v1

    .line 211
    :goto_2
    array-length v3, v3

    .line 212
    if-le v3, v2, :cond_7

    .line 213
    .line 214
    iget-object v3, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->warningTextPaint:Landroid/graphics/Paint;

    .line 215
    .line 216
    if-nez v1, :cond_6

    .line 217
    .line 218
    move-object v1, v0

    .line 219
    :cond_6
    aget v1, v1, v2

    .line 220
    .line 221
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    .line 223
    .line 224
    :cond_7
    new-instance v1, Landroid/graphics/Paint;

    .line 225
    .line 226
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 227
    .line 228
    .line 229
    iput-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->invalidTextPaint:Landroid/graphics/Paint;

    .line 230
    .line 231
    const v3, -0x17cbf7

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 238
    .line 239
    .line 240
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 241
    .line 242
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 243
    .line 244
    .line 245
    iget-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    .line 246
    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    const v1, 0x7f06080f

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    const v3, 0x7f06080e

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 262
    .line 263
    .line 264
    iput v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelColor:I

    .line 265
    .line 266
    const v3, 0x7f060811

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    iput v3, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelBackgroundLightColor:I

    .line 274
    .line 275
    const v5, 0x7f060810

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, v5, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    iput v5, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelBackgroundDarkColor:I

    .line 283
    .line 284
    const v5, 0x7f060813

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, v5, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    iput v5, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLightningBoltLightColor:I

    .line 292
    .line 293
    const v6, 0x7f060812

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v6, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    iput p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLightningBoltDarkColor:I

    .line 301
    .line 302
    iget-object v6, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryFramePaint:Landroid/graphics/Paint;

    .line 303
    .line 304
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 305
    .line 306
    .line 307
    iget-object v6, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryFramePaint:Landroid/graphics/Paint;

    .line 308
    .line 309
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    .line 311
    .line 312
    iget-object v6, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    .line 313
    .line 314
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 315
    .line 316
    .line 317
    iget-object v6, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    .line 318
    .line 319
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 320
    .line 321
    .line 322
    iget-object v6, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    .line 323
    .line 324
    const/4 v7, 0x0

    .line 325
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 326
    .line 327
    .line 328
    iget-object v6, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    .line 329
    .line 330
    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 331
    .line 332
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 333
    .line 334
    .line 335
    iget-object v6, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    .line 336
    .line 337
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    .line 339
    .line 340
    iget-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    .line 341
    .line 342
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    .line 343
    .line 344
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 345
    .line 346
    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 350
    .line 351
    .line 352
    iget-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    .line 353
    .line 354
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 355
    .line 356
    .line 357
    iget-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    .line 358
    .line 359
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    .line 361
    .line 362
    iget-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    .line 363
    .line 364
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    .line 365
    .line 366
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 367
    .line 368
    invoke-direct {v3, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 372
    .line 373
    .line 374
    iget-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    .line 375
    .line 376
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 377
    .line 378
    .line 379
    iget-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    .line 380
    .line 381
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 382
    .line 383
    .line 384
    iget-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLightningBoltLightPaint:Landroid/graphics/Paint;

    .line 385
    .line 386
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 387
    .line 388
    .line 389
    iget-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLightningBoltLightPaint:Landroid/graphics/Paint;

    .line 390
    .line 391
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    .line 393
    .line 394
    iget-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    .line 395
    .line 396
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    const v1, 0x7f08111e

    .line 401
    .line 402
    .line 403
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    iput-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->frameUnder15:Landroid/graphics/drawable/Drawable;

    .line 408
    .line 409
    iget-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    .line 410
    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    const v1, 0x7f08111d

    .line 416
    .line 417
    .line 418
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    iput-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->frameOver95:Landroid/graphics/drawable/Drawable;

    .line 423
    .line 424
    iget-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    .line 425
    .line 426
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    const v0, 0x7f07123f

    .line 431
    .line 432
    .line 433
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 434
    .line 435
    .line 436
    move-result p1

    .line 437
    iput p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->intrinsicWidth:I

    .line 438
    .line 439
    iget-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    .line 440
    .line 441
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    const v0, 0x7f07123e

    .line 446
    .line 447
    .line 448
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    iput p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->intrinsicHeight:I

    .line 453
    .line 454
    iget v0, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->intrinsicWidth:I

    .line 455
    .line 456
    invoke-virtual {p0, v4, v4, v0, p1}, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->setBounds(IIII)V

    .line 457
    .line 458
    .line 459
    const-string/jumbo p1, "ro.product.name"

    .line 460
    .line 461
    .line 462
    const-string v0, ""

    .line 463
    .line 464
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    const-string v0, "gta7lite"

    .line 469
    .line 470
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    if-nez v0, :cond_8

    .line 475
    .line 476
    const-string v0, "gta9"

    .line 477
    .line 478
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-eqz v0, :cond_9

    .line 483
    .line 484
    const-string v0, "gta9p"

    .line 485
    .line 486
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 487
    .line 488
    .line 489
    move-result p1

    .line 490
    if-nez p1, :cond_9

    .line 491
    .line 492
    :cond_8
    const/16 v4, 0xa

    .line 493
    .line 494
    :cond_9
    iput v4, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->extraThreshold:I

    .line 495
    .line 496
    return-void
.end method

.method public static getColorForDarkIntensity(FII)I
    .locals 1

    .line 1
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->sInstance:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {v0, p0, p1, p2}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    .line 6
    .line 7
    iget-boolean v3, v2, Lcom/android/systemui/battery/SamsungBatteryState;->isDirectPowerMode:Z

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x4

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x1

    .line 13
    if-nez v3, :cond_4

    .line 14
    .line 15
    iget v3, v2, Lcom/android/systemui/battery/SamsungBatteryState;->batteryStatus:I

    .line 16
    .line 17
    if-ne v3, v5, :cond_4

    .line 18
    .line 19
    iget v2, v2, Lcom/android/systemui/battery/SamsungBatteryState;->batteryHealth:I

    .line 20
    .line 21
    if-eq v2, v4, :cond_1

    .line 22
    .line 23
    const/4 v3, 0x7

    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    sget v3, Lcom/android/systemui/battery/SamsungBatteryState;->BATTERY_HEALTH_OVERHEAT_LIMIT:I

    .line 27
    .line 28
    if-eq v2, v3, :cond_1

    .line 29
    .line 30
    const/4 v3, 0x6

    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v2, v6

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move v2, v7

    .line 37
    :goto_1
    if-eqz v2, :cond_4

    .line 38
    .line 39
    iput-boolean v7, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->flagBlinkingNeeded:Z

    .line 40
    .line 41
    sget-boolean v2, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->DEBUG:Z

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-boolean v2, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->flagDrawIcon:Z

    .line 46
    .line 47
    const-string v3, "battery icon blink for battery health... mFlagDrawIconTurn:"

    .line 48
    .line 49
    const-string v4, "SamsungBatteryMeterDrawable"

    .line 50
    .line 51
    invoke-static {v3, v2, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->postInvalidateHandler:Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$postInvalidateHandler$1;

    .line 55
    .line 56
    sget v3, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->MSG_POST_INVALIDATE:I

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    iget-object v2, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->postInvalidateHandler:Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$postInvalidateHandler$1;

    .line 65
    .line 66
    sget v4, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->BLINKING_INTERVAL:I

    .line 67
    .line 68
    int-to-long v4, v4

    .line 69
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-boolean v2, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->flagDrawIcon:Z

    .line 73
    .line 74
    xor-int/2addr v2, v7

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    iput-boolean v6, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->flagBlinkingNeeded:Z

    .line 77
    .line 78
    move v2, v6

    .line 79
    :goto_2
    if-eqz v2, :cond_5

    .line 80
    .line 81
    return-void

    .line 82
    :cond_5
    iget-object v2, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    .line 83
    .line 84
    iget-boolean v3, v2, Lcom/android/systemui/battery/SamsungBatteryState;->isDirectPowerMode:Z

    .line 85
    .line 86
    if-eqz v3, :cond_6

    .line 87
    .line 88
    const/16 v2, 0x64

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_6
    iget v3, v2, Lcom/android/systemui/battery/SamsungBatteryState;->batteryOnline:I

    .line 92
    .line 93
    if-nez v3, :cond_7

    .line 94
    .line 95
    move v3, v7

    .line 96
    goto :goto_3

    .line 97
    :cond_7
    move v3, v6

    .line 98
    :goto_3
    if-eqz v3, :cond_8

    .line 99
    .line 100
    move v2, v6

    .line 101
    goto :goto_4

    .line 102
    :cond_8
    iget v2, v2, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    .line 103
    .line 104
    :goto_4
    const/4 v3, -0x1

    .line 105
    if-ne v2, v3, :cond_9

    .line 106
    .line 107
    return-void

    .line 108
    :cond_9
    iget-object v3, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->frameOver95:Landroid/graphics/drawable/Drawable;

    .line 109
    .line 110
    if-nez v3, :cond_a

    .line 111
    .line 112
    const/4 v3, 0x0

    .line 113
    :cond_a
    new-instance v4, Landroid/graphics/BlendModeColorFilter;

    .line 114
    .line 115
    iget-object v5, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryFramePaint:Landroid/graphics/Paint;

    .line 116
    .line 117
    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    sget-object v8, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    .line 122
    .line 123
    invoke-direct {v4, v5, v8}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 127
    .line 128
    .line 129
    iget-object v3, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->frameOver95:Landroid/graphics/drawable/Drawable;

    .line 130
    .line 131
    if-nez v3, :cond_b

    .line 132
    .line 133
    const/4 v3, 0x0

    .line 134
    :cond_b
    iget v4, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->width:I

    .line 135
    .line 136
    iget v5, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->height:I

    .line 137
    .line 138
    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    .line 140
    .line 141
    const/16 v3, 0xff

    .line 142
    .line 143
    const/16 v4, 0x60

    .line 144
    .line 145
    const/16 v5, 0x59

    .line 146
    .line 147
    if-ge v2, v4, :cond_d

    .line 148
    .line 149
    iget-object v8, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->frameOver95:Landroid/graphics/drawable/Drawable;

    .line 150
    .line 151
    if-nez v8, :cond_c

    .line 152
    .line 153
    const/4 v8, 0x0

    .line 154
    :cond_c
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 155
    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_d
    iget-object v8, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->frameOver95:Landroid/graphics/drawable/Drawable;

    .line 159
    .line 160
    if-nez v8, :cond_e

    .line 161
    .line 162
    const/4 v8, 0x0

    .line 163
    :cond_e
    invoke-virtual {v8, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 164
    .line 165
    .line 166
    :goto_5
    iget-object v8, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->frameUnder15:Landroid/graphics/drawable/Drawable;

    .line 167
    .line 168
    if-nez v8, :cond_f

    .line 169
    .line 170
    const/4 v8, 0x0

    .line 171
    :cond_f
    new-instance v9, Landroid/graphics/BlendModeColorFilter;

    .line 172
    .line 173
    iget v10, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->criticalLevel:I

    .line 174
    .line 175
    if-le v2, v10, :cond_10

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->getColorForLevel(I)I

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    goto :goto_6

    .line 182
    :cond_10
    iget-object v10, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryFramePaint:Landroid/graphics/Paint;

    .line 183
    .line 184
    invoke-virtual {v10}, Landroid/graphics/Paint;->getColor()I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    :goto_6
    sget-object v11, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    .line 189
    .line 190
    invoke-direct {v9, v10, v11}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 194
    .line 195
    .line 196
    iget-object v8, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->frameUnder15:Landroid/graphics/drawable/Drawable;

    .line 197
    .line 198
    if-nez v8, :cond_11

    .line 199
    .line 200
    const/4 v8, 0x0

    .line 201
    :cond_11
    iget v9, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->width:I

    .line 202
    .line 203
    iget v10, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->height:I

    .line 204
    .line 205
    invoke-virtual {v8, v6, v6, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 206
    .line 207
    .line 208
    iget v8, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->criticalLevel:I

    .line 209
    .line 210
    if-gt v2, v8, :cond_13

    .line 211
    .line 212
    iget-object v3, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->frameUnder15:Landroid/graphics/drawable/Drawable;

    .line 213
    .line 214
    if-nez v3, :cond_12

    .line 215
    .line 216
    const/4 v3, 0x0

    .line 217
    :cond_12
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 218
    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_13
    iget-object v5, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->frameUnder15:Landroid/graphics/drawable/Drawable;

    .line 222
    .line 223
    if-nez v5, :cond_14

    .line 224
    .line 225
    const/4 v5, 0x0

    .line 226
    :cond_14
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 227
    .line 228
    .line 229
    :goto_7
    iget-object v3, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->frameOver95:Landroid/graphics/drawable/Drawable;

    .line 230
    .line 231
    if-nez v3, :cond_15

    .line 232
    .line 233
    const/4 v3, 0x0

    .line 234
    :cond_15
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    iget-object v5, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->frameOver95:Landroid/graphics/drawable/Drawable;

    .line 239
    .line 240
    if-nez v5, :cond_16

    .line 241
    .line 242
    const/4 v5, 0x0

    .line 243
    :cond_16
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 248
    .line 249
    invoke-static {v3, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    new-instance v9, Landroid/graphics/Canvas;

    .line 254
    .line 255
    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 256
    .line 257
    .line 258
    iget-object v10, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->frameOver95:Landroid/graphics/drawable/Drawable;

    .line 259
    .line 260
    if-nez v10, :cond_17

    .line 261
    .line 262
    const/4 v10, 0x0

    .line 263
    :cond_17
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 264
    .line 265
    .line 266
    iget-object v10, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->frameUnder15:Landroid/graphics/drawable/Drawable;

    .line 267
    .line 268
    if-nez v10, :cond_18

    .line 269
    .line 270
    const/4 v10, 0x0

    .line 271
    :cond_18
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 272
    .line 273
    .line 274
    new-instance v9, Landroid/graphics/Rect;

    .line 275
    .line 276
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 277
    .line 278
    .line 279
    div-int/lit8 v10, v3, 0x2

    .line 280
    .line 281
    div-int/lit8 v11, v5, 0x2

    .line 282
    .line 283
    if-lt v2, v4, :cond_19

    .line 284
    .line 285
    const/16 v4, 0xff

    .line 286
    .line 287
    goto :goto_8

    .line 288
    :cond_19
    iget v12, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->criticalLevel:I

    .line 289
    .line 290
    add-int/2addr v12, v7

    .line 291
    if-gt v12, v2, :cond_1a

    .line 292
    .line 293
    if-ge v2, v4, :cond_1a

    .line 294
    .line 295
    move v6, v7

    .line 296
    :cond_1a
    const/16 v4, 0x59

    .line 297
    .line 298
    if-eqz v6, :cond_1b

    .line 299
    .line 300
    :goto_8
    const/16 v6, 0xff

    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_1b
    const/16 v6, 0x59

    .line 304
    .line 305
    :goto_9
    move v12, v11

    .line 306
    move v13, v12

    .line 307
    :goto_a
    if-lez v12, :cond_1d

    .line 308
    .line 309
    invoke-virtual {v8, v10, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 310
    .line 311
    .line 312
    move-result v14

    .line 313
    invoke-static {v14}, Landroid/graphics/Color;->alpha(I)I

    .line 314
    .line 315
    .line 316
    move-result v14

    .line 317
    if-lt v14, v4, :cond_1c

    .line 318
    .line 319
    add-int/lit8 v13, v13, 0x1

    .line 320
    .line 321
    goto :goto_b

    .line 322
    :cond_1c
    add-int/lit8 v13, v13, -0x1

    .line 323
    .line 324
    add-int/lit8 v12, v12, -0x1

    .line 325
    .line 326
    goto :goto_a

    .line 327
    :cond_1d
    :goto_b
    move v12, v11

    .line 328
    move v14, v12

    .line 329
    :goto_c
    if-ge v12, v5, :cond_1f

    .line 330
    .line 331
    invoke-virtual {v8, v10, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 332
    .line 333
    .line 334
    move-result v15

    .line 335
    invoke-static {v15}, Landroid/graphics/Color;->alpha(I)I

    .line 336
    .line 337
    .line 338
    move-result v15

    .line 339
    iget v7, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->extraThreshold:I

    .line 340
    .line 341
    sub-int v7, v6, v7

    .line 342
    .line 343
    if-lt v15, v7, :cond_1e

    .line 344
    .line 345
    goto :goto_d

    .line 346
    :cond_1e
    add-int/lit8 v14, v14, 0x1

    .line 347
    .line 348
    add-int/lit8 v12, v12, 0x1

    .line 349
    .line 350
    const/4 v7, 0x1

    .line 351
    goto :goto_c

    .line 352
    :cond_1f
    :goto_d
    move v5, v10

    .line 353
    move v6, v5

    .line 354
    :goto_e
    if-lez v5, :cond_21

    .line 355
    .line 356
    invoke-virtual {v8, v5, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    .line 361
    .line 362
    .line 363
    move-result v7

    .line 364
    if-lt v7, v4, :cond_20

    .line 365
    .line 366
    goto :goto_f

    .line 367
    :cond_20
    add-int/lit8 v6, v6, -0x1

    .line 368
    .line 369
    add-int/lit8 v5, v5, -0x1

    .line 370
    .line 371
    goto :goto_e

    .line 372
    :cond_21
    :goto_f
    move v5, v10

    .line 373
    :goto_10
    if-ge v10, v3, :cond_23

    .line 374
    .line 375
    add-int/lit8 v5, v5, 0x1

    .line 376
    .line 377
    invoke-virtual {v8, v10, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 378
    .line 379
    .line 380
    move-result v7

    .line 381
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    .line 382
    .line 383
    .line 384
    move-result v7

    .line 385
    if-lt v7, v4, :cond_22

    .line 386
    .line 387
    goto :goto_11

    .line 388
    :cond_22
    add-int/lit8 v10, v10, 0x1

    .line 389
    .line 390
    goto :goto_10

    .line 391
    :cond_23
    :goto_11
    iget v3, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->extraThreshold:I

    .line 392
    .line 393
    if-lez v3, :cond_24

    .line 394
    .line 395
    invoke-virtual {v9, v6, v13, v5, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 396
    .line 397
    .line 398
    goto :goto_12

    .line 399
    :cond_24
    const/4 v3, 0x1

    .line 400
    sub-int/2addr v13, v3

    .line 401
    add-int/2addr v14, v3

    .line 402
    invoke-virtual {v9, v6, v13, v5, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 403
    .line 404
    .line 405
    :goto_12
    iget-object v3, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->frameOver95:Landroid/graphics/drawable/Drawable;

    .line 406
    .line 407
    if-nez v3, :cond_25

    .line 408
    .line 409
    const/4 v3, 0x0

    .line 410
    :cond_25
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 411
    .line 412
    .line 413
    iget-object v3, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->frameUnder15:Landroid/graphics/drawable/Drawable;

    .line 414
    .line 415
    if-nez v3, :cond_26

    .line 416
    .line 417
    const/4 v3, 0x0

    .line 418
    :cond_26
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 419
    .line 420
    .line 421
    const/4 v3, 0x0

    .line 422
    const/high16 v4, 0x3f800000    # 1.0f

    .line 423
    .line 424
    const/16 v5, 0x60

    .line 425
    .line 426
    if-lt v2, v5, :cond_27

    .line 427
    .line 428
    move v5, v4

    .line 429
    goto :goto_13

    .line 430
    :cond_27
    iget-object v5, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->colors:[I

    .line 431
    .line 432
    if-nez v5, :cond_28

    .line 433
    .line 434
    const/4 v5, 0x0

    .line 435
    :cond_28
    const/4 v6, 0x0

    .line 436
    aget v5, v5, v6

    .line 437
    .line 438
    if-gt v2, v5, :cond_29

    .line 439
    .line 440
    move v5, v3

    .line 441
    goto :goto_13

    .line 442
    :cond_29
    add-int/lit8 v5, v2, -0xf

    .line 443
    .line 444
    int-to-float v5, v5

    .line 445
    const/high16 v6, 0x42a00000    # 80.0f

    .line 446
    .line 447
    div-float/2addr v5, v6

    .line 448
    :goto_13
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 449
    .line 450
    .line 451
    move-result v6

    .line 452
    int-to-float v6, v6

    .line 453
    mul-float/2addr v6, v5

    .line 454
    float-to-int v5, v6

    .line 455
    iget v6, v9, Landroid/graphics/Rect;->bottom:I

    .line 456
    .line 457
    sub-int/2addr v6, v5

    .line 458
    new-instance v7, Landroid/graphics/Rect;

    .line 459
    .line 460
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 461
    .line 462
    .line 463
    iget v8, v9, Landroid/graphics/Rect;->left:I

    .line 464
    .line 465
    iget v10, v9, Landroid/graphics/Rect;->top:I

    .line 466
    .line 467
    iget v11, v9, Landroid/graphics/Rect;->right:I

    .line 468
    .line 469
    invoke-virtual {v7, v8, v10, v11, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 470
    .line 471
    .line 472
    iget-object v8, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    .line 473
    .line 474
    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 475
    .line 476
    .line 477
    new-instance v7, Landroid/graphics/Rect;

    .line 478
    .line 479
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 480
    .line 481
    .line 482
    iget-object v8, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    .line 483
    .line 484
    invoke-virtual {v0, v2}, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->getColorForLevel(I)I

    .line 485
    .line 486
    .line 487
    move-result v10

    .line 488
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 489
    .line 490
    .line 491
    iget v8, v9, Landroid/graphics/Rect;->left:I

    .line 492
    .line 493
    iget v10, v9, Landroid/graphics/Rect;->right:I

    .line 494
    .line 495
    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    .line 496
    .line 497
    invoke-virtual {v7, v8, v6, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 498
    .line 499
    .line 500
    iget-object v6, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    .line 501
    .line 502
    invoke-virtual {v1, v7, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 503
    .line 504
    .line 505
    iget-object v6, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    .line 506
    .line 507
    iget v7, v6, Lcom/android/systemui/battery/SamsungBatteryState;->batteryOnline:I

    .line 508
    .line 509
    if-nez v7, :cond_2a

    .line 510
    .line 511
    const/4 v7, 0x1

    .line 512
    goto :goto_14

    .line 513
    :cond_2a
    const/4 v7, 0x0

    .line 514
    :goto_14
    const v8, 0x3ef5c28f    # 0.48f

    .line 515
    .line 516
    .line 517
    const/high16 v10, 0x3f000000    # 0.5f

    .line 518
    .line 519
    if-eqz v7, :cond_2b

    .line 520
    .line 521
    iget v2, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->width:I

    .line 522
    .line 523
    int-to-float v2, v2

    .line 524
    mul-float/2addr v2, v10

    .line 525
    iget v3, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->height:I

    .line 526
    .line 527
    int-to-float v3, v3

    .line 528
    iget v4, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->invalidTextHeight:F

    .line 529
    .line 530
    add-float/2addr v3, v4

    .line 531
    mul-float/2addr v3, v8

    .line 532
    sget-object v4, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->INVALID_STRING:Ljava/lang/String;

    .line 533
    .line 534
    iget-object v0, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->invalidTextPaint:Landroid/graphics/Paint;

    .line 535
    .line 536
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_18

    .line 543
    .line 544
    :cond_2b
    iget-boolean v7, v6, Lcom/android/systemui/battery/SamsungBatteryState;->isDirectPowerMode:Z

    .line 545
    .line 546
    iget-boolean v11, v6, Lcom/android/systemui/battery/SamsungBatteryState;->pluggedIn:Z

    .line 547
    .line 548
    if-nez v7, :cond_2d

    .line 549
    .line 550
    if-eqz v11, :cond_2c

    .line 551
    .line 552
    const/4 v7, 0x5

    .line 553
    iget v6, v6, Lcom/android/systemui/battery/SamsungBatteryState;->batteryStatus:I

    .line 554
    .line 555
    if-eq v6, v7, :cond_2c

    .line 556
    .line 557
    const/4 v7, 0x3

    .line 558
    if-eq v6, v7, :cond_2c

    .line 559
    .line 560
    const/4 v7, 0x4

    .line 561
    if-eq v6, v7, :cond_2c

    .line 562
    .line 563
    goto :goto_15

    .line 564
    :cond_2c
    const/4 v6, 0x0

    .line 565
    goto :goto_16

    .line 566
    :cond_2d
    :goto_15
    const/4 v6, 0x1

    .line 567
    :goto_16
    if-eqz v6, :cond_30

    .line 568
    .line 569
    iget-object v6, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    .line 570
    .line 571
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 572
    .line 573
    .line 574
    move-result-object v6

    .line 575
    const v7, 0x7f08111c

    .line 576
    .line 577
    .line 578
    const/4 v8, 0x0

    .line 579
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 580
    .line 581
    .line 582
    move-result-object v6

    .line 583
    iget-object v7, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLightningBoltLightPaint:Landroid/graphics/Paint;

    .line 584
    .line 585
    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    .line 586
    .line 587
    .line 588
    move-result v7

    .line 589
    iget-object v8, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    .line 590
    .line 591
    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    .line 592
    .line 593
    .line 594
    move-result v8

    .line 595
    const/4 v10, 0x4

    .line 596
    new-array v10, v10, [I

    .line 597
    .line 598
    iget v11, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->criticalLevel:I

    .line 599
    .line 600
    if-gt v2, v11, :cond_2e

    .line 601
    .line 602
    move v12, v7

    .line 603
    goto :goto_17

    .line 604
    :cond_2e
    move v12, v8

    .line 605
    :goto_17
    const/4 v13, 0x0

    .line 606
    aput v12, v10, v13

    .line 607
    .line 608
    if-gt v2, v11, :cond_2f

    .line 609
    .line 610
    move v8, v7

    .line 611
    :cond_2f
    const/4 v2, 0x1

    .line 612
    aput v8, v10, v2

    .line 613
    .line 614
    const/4 v2, 0x2

    .line 615
    aput v7, v10, v2

    .line 616
    .line 617
    const/4 v8, 0x3

    .line 618
    aput v7, v10, v8

    .line 619
    .line 620
    const/4 v7, 0x4

    .line 621
    new-array v7, v7, [F

    .line 622
    .line 623
    aput v3, v7, v13

    .line 624
    .line 625
    int-to-float v5, v5

    .line 626
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 627
    .line 628
    .line 629
    move-result v8

    .line 630
    int-to-float v8, v8

    .line 631
    div-float v8, v5, v8

    .line 632
    .line 633
    const/4 v11, 0x1

    .line 634
    aput v8, v7, v11

    .line 635
    .line 636
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 637
    .line 638
    .line 639
    move-result v8

    .line 640
    int-to-float v8, v8

    .line 641
    div-float/2addr v5, v8

    .line 642
    aput v5, v7, v2

    .line 643
    .line 644
    const/4 v2, 0x3

    .line 645
    aput v4, v7, v2

    .line 646
    .line 647
    new-instance v2, Landroid/graphics/LinearGradient;

    .line 648
    .line 649
    const/16 v17, 0x0

    .line 650
    .line 651
    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    .line 652
    .line 653
    int-to-float v4, v4

    .line 654
    const/16 v19, 0x0

    .line 655
    .line 656
    iget v5, v9, Landroid/graphics/Rect;->top:I

    .line 657
    .line 658
    int-to-float v5, v5

    .line 659
    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 660
    .line 661
    move-object/from16 v16, v2

    .line 662
    .line 663
    move/from16 v18, v4

    .line 664
    .line 665
    move/from16 v20, v5

    .line 666
    .line 667
    move-object/from16 v21, v10

    .line 668
    .line 669
    move-object/from16 v22, v7

    .line 670
    .line 671
    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 672
    .line 673
    .line 674
    iget-object v4, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    .line 675
    .line 676
    iget v5, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->width:I

    .line 677
    .line 678
    iget v7, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->height:I

    .line 679
    .line 680
    new-instance v13, Landroid/graphics/Paint;

    .line 681
    .line 682
    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 683
    .line 684
    .line 685
    const/high16 v8, -0x1000000

    .line 686
    .line 687
    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 688
    .line 689
    .line 690
    const/4 v8, 0x0

    .line 691
    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 692
    .line 693
    .line 694
    const/high16 v8, 0x41200000    # 10.0f

    .line 695
    .line 696
    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 697
    .line 698
    .line 699
    sget-object v8, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 700
    .line 701
    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 702
    .line 703
    .line 704
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    .line 705
    .line 706
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 707
    .line 708
    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 715
    .line 716
    .line 717
    new-instance v8, Landroid/graphics/Matrix;

    .line 718
    .line 719
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v2, v8}, Landroid/graphics/LinearGradient;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 723
    .line 724
    .line 725
    int-to-float v11, v5

    .line 726
    const/high16 v9, 0x40000000    # 2.0f

    .line 727
    .line 728
    div-float v10, v11, v9

    .line 729
    .line 730
    int-to-float v12, v7

    .line 731
    div-float v9, v12, v9

    .line 732
    .line 733
    invoke-virtual {v8, v3, v10, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 734
    .line 735
    .line 736
    invoke-virtual {v2, v8}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 737
    .line 738
    .line 739
    const/4 v2, 0x0

    .line 740
    invoke-virtual {v6, v2, v2, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 741
    .line 742
    .line 743
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 744
    .line 745
    invoke-static {v5, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    new-instance v8, Landroid/graphics/Canvas;

    .line 750
    .line 751
    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 755
    .line 756
    .line 757
    const/4 v9, 0x0

    .line 758
    const/4 v10, 0x0

    .line 759
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 760
    .line 761
    .line 762
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 763
    .line 764
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 765
    .line 766
    .line 767
    move-result-object v4

    .line 768
    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 769
    .line 770
    .line 771
    iget v2, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->width:I

    .line 772
    .line 773
    iget v0, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->height:I

    .line 774
    .line 775
    const/4 v4, 0x0

    .line 776
    invoke-virtual {v3, v4, v4, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 780
    .line 781
    .line 782
    goto :goto_18

    .line 783
    :cond_30
    if-nez v11, :cond_31

    .line 784
    .line 785
    iget v3, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->criticalLevel:I

    .line 786
    .line 787
    if-gt v2, v3, :cond_31

    .line 788
    .line 789
    iget v2, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->width:I

    .line 790
    .line 791
    int-to-float v2, v2

    .line 792
    mul-float/2addr v2, v10

    .line 793
    iget v3, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->height:I

    .line 794
    .line 795
    int-to-float v3, v3

    .line 796
    iget v4, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->warningTextHeight:F

    .line 797
    .line 798
    add-float/2addr v3, v4

    .line 799
    mul-float/2addr v3, v8

    .line 800
    iget-object v4, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->warningString:Ljava/lang/String;

    .line 801
    .line 802
    iget-object v0, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->warningTextPaint:Landroid/graphics/Paint;

    .line 803
    .line 804
    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 805
    .line 806
    .line 807
    :cond_31
    :goto_18
    return-void
.end method

.method public final getColorForLevel(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/battery/SamsungBatteryState;->pluggedIn:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/systemui/battery/SamsungBatteryState;->charging:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget p0, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelColor:I

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->colors:[I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    move-object v4, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object v4, v2

    .line 24
    :goto_1
    array-length v4, v4

    .line 25
    if-ge v0, v4, :cond_7

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    move-object v1, v3

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move-object v1, v2

    .line 32
    :goto_2
    aget v1, v1, v0

    .line 33
    .line 34
    if-nez v2, :cond_3

    .line 35
    .line 36
    move-object v4, v3

    .line 37
    goto :goto_3

    .line 38
    :cond_3
    move-object v4, v2

    .line 39
    :goto_3
    add-int/lit8 v5, v0, 0x1

    .line 40
    .line 41
    aget v4, v4, v5

    .line 42
    .line 43
    if-gt p1, v1, :cond_6

    .line 44
    .line 45
    if-nez v2, :cond_4

    .line 46
    .line 47
    move-object v2, v3

    .line 48
    :cond_4
    array-length p1, v2

    .line 49
    add-int/lit8 p1, p1, -0x2

    .line 50
    .line 51
    if-ne v0, p1, :cond_5

    .line 52
    .line 53
    iget p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->iconTint:I

    .line 54
    .line 55
    move v1, p1

    .line 56
    goto :goto_4

    .line 57
    :cond_5
    move v1, v4

    .line 58
    goto :goto_4

    .line 59
    :cond_6
    add-int/lit8 v0, v0, 0x2

    .line 60
    .line 61
    move v1, v4

    .line 62
    goto :goto_0

    .line 63
    :cond_7
    :goto_4
    iget p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->iconTint:I

    .line 64
    .line 65
    if-ne v1, p1, :cond_8

    .line 66
    .line 67
    iget v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelColor:I

    .line 68
    .line 69
    :cond_8
    return v1
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->intrinsicHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->intrinsicWidth:I

    .line 2
    .line 3
    return p0
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setBounds(IIII)V
    .locals 0

    .line 1
    sub-int/2addr p4, p2

    .line 2
    iput p4, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->height:I

    .line 3
    .line 4
    sub-int/2addr p3, p1

    .line 5
    iput p3, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->width:I

    .line 6
    .line 7
    int-to-float p1, p4

    .line 8
    iget-object p2, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const p3, 0x7f0700b1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    mul-float/2addr p2, p1

    .line 22
    iget-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->warningTextPaint:Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->warningTextPaint:Landroid/graphics/Paint;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 34
    .line 35
    neg-float p1, p1

    .line 36
    iput p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->warningTextHeight:F

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->invalidTextPaint:Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    .line 45
    .line 46
    iget p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->warningTextHeight:F

    .line 47
    .line 48
    iput p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->invalidTextHeight:F

    .line 49
    .line 50
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setColors(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->iconTint:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryFramePaint:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelColor:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    .line 11
    .line 12
    iget v0, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->darkIntensity:F

    .line 13
    .line 14
    iget v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelBackgroundLightColor:I

    .line 15
    .line 16
    iget v2, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelBackgroundDarkColor:I

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->updateLightningBoltColor()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final setGrayColors(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->iconTint:I

    .line 2
    .line 3
    sget v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->BATTERY_BACKGROUND_ALPHA:F

    .line 4
    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    mul-float/2addr v1, v0

    .line 11
    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryFramePaint:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    .line 40
    .line 41
    iput p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLevelColor:I

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->updateLightningBoltColor()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final updateLightningBoltColor()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->darkIntensity:F

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLightningBoltLightColor:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLightningBoltDarkColor:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLightningBoltLightPaint:Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->darkIntensity:F

    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLightningBoltDarkColor:I

    .line 19
    .line 20
    iget v2, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLightningBoltLightColor:I

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
