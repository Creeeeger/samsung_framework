.class public final Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public batteryLevel:I

.field public final batteryLevelBackgroundDarkColor:I

.field public final batteryLevelBackgroundLightColor:I

.field public final batteryLevelBackgroundPaint:Landroid/graphics/Paint;

.field public batteryLevelColor:I

.field public final batteryLevelPaint:Landroid/graphics/Paint;

.field public final batteryLightningBoltDarkColor:I

.field public final batteryLightningBoltDarkPaint:Landroid/graphics/Paint;

.field public final batteryLightningBoltLightColor:I

.field public final batteryLightningBoltLightPaint:Landroid/graphics/Paint;

.field public final context:Landroid/content/Context;

.field public darkIntensity:F

.field public frameOver95:Landroid/graphics/drawable/Drawable;

.field public frameUnder15:Landroid/graphics/drawable/Drawable;

.field public height:I

.field public intrinsicHeight:I

.field public intrinsicWidth:I

.field public isNeedBoltAndWarning:Z

.field public width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->context:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    .line 12
    .line 13
    new-instance v1, Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    new-instance v2, Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    .line 26
    .line 27
    new-instance v3, Landroid/graphics/Paint;

    .line 28
    .line 29
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLightningBoltLightPaint:Landroid/graphics/Paint;

    .line 33
    .line 34
    const/high16 v4, -0x40800000    # -1.0f

    .line 35
    .line 36
    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->darkIntensity:F

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->isNeedBoltAndWarning:Z

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const v6, 0x7f060182

    .line 46
    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const v8, 0x7f060181

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v8, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 57
    .line 58
    .line 59
    iput v6, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelColor:I

    .line 60
    .line 61
    const v8, 0x7f060184

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v8, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    iput v8, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelBackgroundLightColor:I

    .line 69
    .line 70
    const v9, 0x7f060183

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v9, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    iput v9, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelBackgroundDarkColor:I

    .line 78
    .line 79
    const v9, 0x7f060186

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v9, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    iput v9, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLightningBoltLightColor:I

    .line 87
    .line 88
    const v10, 0x7f060185

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v10, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    iput v5, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLightningBoltDarkColor:I

    .line 96
    .line 97
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 101
    .line 102
    .line 103
    const/4 v10, 0x0

    .line 104
    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    .line 106
    .line 107
    sget-object v10, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 108
    .line 109
    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    .line 114
    .line 115
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    .line 116
    .line 117
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 118
    .line 119
    invoke-direct {v6, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    .line 130
    .line 131
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 132
    .line 133
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 134
    .line 135
    invoke-direct {v0, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const v1, 0x7f080b39

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->frameUnder15:Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const v1, 0x7f080b38

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->frameOver95:Landroid/graphics/drawable/Drawable;

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const v1, 0x7f070406

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->intrinsicWidth:I

    .line 191
    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    const v0, 0x7f070405

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->intrinsicHeight:I

    .line 204
    .line 205
    const/4 v0, 0x0

    .line 206
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->intrinsicWidth:I

    .line 207
    .line 208
    invoke-virtual {p0, v0, v0, v1, p1}, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->setBounds(IIII)V

    .line 209
    .line 210
    .line 211
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevel:I

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    if-ne v2, v3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/16 v3, 0x5f

    .line 12
    .line 13
    if-le v2, v3, :cond_1

    .line 14
    .line 15
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/16 v7, 0xff

    .line 37
    .line 38
    invoke-static {v7, v5, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget-object v5, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->frameOver95:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    if-nez v5, :cond_2

    .line 46
    .line 47
    move-object v5, v6

    .line 48
    :cond_2
    new-instance v8, Landroid/graphics/BlendModeColorFilter;

    .line 49
    .line 50
    sget-object v9, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    .line 51
    .line 52
    invoke-direct {v8, v4, v9}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 56
    .line 57
    .line 58
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->frameOver95:Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    if-nez v4, :cond_3

    .line 61
    .line 62
    move-object v4, v6

    .line 63
    :cond_3
    iget v5, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->width:I

    .line 64
    .line 65
    iget v8, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->height:I

    .line 66
    .line 67
    const/4 v9, 0x0

    .line 68
    invoke-virtual {v4, v9, v9, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    .line 70
    .line 71
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->frameOver95:Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    if-nez v4, :cond_4

    .line 74
    .line 75
    move-object v4, v6

    .line 76
    :cond_4
    iget v5, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevel:I

    .line 77
    .line 78
    const/16 v8, 0x59

    .line 79
    .line 80
    if-le v5, v3, :cond_5

    .line 81
    .line 82
    move v3, v7

    .line 83
    goto :goto_1

    .line 84
    :cond_5
    move v3, v8

    .line 85
    :goto_1
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 86
    .line 87
    .line 88
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->frameUnder15:Landroid/graphics/drawable/Drawable;

    .line 89
    .line 90
    if-nez v3, :cond_6

    .line 91
    .line 92
    move-object v3, v6

    .line 93
    :cond_6
    new-instance v4, Landroid/graphics/BlendModeColorFilter;

    .line 94
    .line 95
    iget v5, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelColor:I

    .line 96
    .line 97
    sget-object v10, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    .line 98
    .line 99
    invoke-direct {v4, v5, v10}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 103
    .line 104
    .line 105
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->frameUnder15:Landroid/graphics/drawable/Drawable;

    .line 106
    .line 107
    if-nez v3, :cond_7

    .line 108
    .line 109
    move-object v3, v6

    .line 110
    :cond_7
    iget v4, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->width:I

    .line 111
    .line 112
    iget v5, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->height:I

    .line 113
    .line 114
    invoke-virtual {v3, v9, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    .line 116
    .line 117
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->frameUnder15:Landroid/graphics/drawable/Drawable;

    .line 118
    .line 119
    if-nez v3, :cond_8

    .line 120
    .line 121
    move-object v3, v6

    .line 122
    :cond_8
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 123
    .line 124
    .line 125
    iget v3, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->width:I

    .line 126
    .line 127
    iget v4, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->height:I

    .line 128
    .line 129
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 130
    .line 131
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    new-instance v10, Landroid/graphics/Canvas;

    .line 136
    .line 137
    invoke-direct {v10, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    .line 139
    .line 140
    iget-object v11, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->frameOver95:Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    if-nez v11, :cond_9

    .line 143
    .line 144
    move-object v11, v6

    .line 145
    :cond_9
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 146
    .line 147
    .line 148
    iget-object v11, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->frameUnder15:Landroid/graphics/drawable/Drawable;

    .line 149
    .line 150
    if-nez v11, :cond_a

    .line 151
    .line 152
    move-object v11, v6

    .line 153
    :cond_a
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    .line 155
    .line 156
    new-instance v10, Landroid/graphics/Rect;

    .line 157
    .line 158
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 159
    .line 160
    .line 161
    div-int/lit8 v11, v3, 0x2

    .line 162
    .line 163
    div-int/lit8 v12, v4, 0x2

    .line 164
    .line 165
    move v13, v12

    .line 166
    move v14, v13

    .line 167
    :goto_2
    if-lez v13, :cond_c

    .line 168
    .line 169
    invoke-virtual {v5, v11, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 170
    .line 171
    .line 172
    move-result v15

    .line 173
    invoke-static {v15}, Landroid/graphics/Color;->alpha(I)I

    .line 174
    .line 175
    .line 176
    move-result v15

    .line 177
    if-lt v15, v8, :cond_b

    .line 178
    .line 179
    add-int/lit8 v14, v14, 0x1

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_b
    add-int/lit8 v14, v14, -0x1

    .line 183
    .line 184
    add-int/lit8 v13, v13, -0x1

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_c
    :goto_3
    move v13, v12

    .line 188
    move v15, v13

    .line 189
    :goto_4
    if-ge v13, v4, :cond_e

    .line 190
    .line 191
    invoke-virtual {v5, v11, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 192
    .line 193
    .line 194
    move-result v16

    .line 195
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    if-lt v9, v7, :cond_d

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_d
    add-int/lit8 v15, v15, 0x1

    .line 203
    .line 204
    add-int/lit8 v13, v13, 0x1

    .line 205
    .line 206
    const/4 v9, 0x0

    .line 207
    goto :goto_4

    .line 208
    :cond_e
    :goto_5
    move v4, v11

    .line 209
    move v7, v4

    .line 210
    :goto_6
    if-lez v4, :cond_10

    .line 211
    .line 212
    invoke-virtual {v5, v4, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    if-lt v9, v8, :cond_f

    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_f
    add-int/lit8 v7, v7, -0x1

    .line 224
    .line 225
    add-int/lit8 v4, v4, -0x1

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_10
    :goto_7
    move v4, v11

    .line 229
    :goto_8
    if-ge v11, v3, :cond_12

    .line 230
    .line 231
    add-int/lit8 v4, v4, 0x1

    .line 232
    .line 233
    invoke-virtual {v5, v11, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    if-lt v9, v8, :cond_11

    .line 242
    .line 243
    goto :goto_9

    .line 244
    :cond_11
    add-int/lit8 v11, v11, 0x1

    .line 245
    .line 246
    goto :goto_8

    .line 247
    :cond_12
    :goto_9
    invoke-virtual {v10, v7, v14, v4, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 248
    .line 249
    .line 250
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->frameOver95:Landroid/graphics/drawable/Drawable;

    .line 251
    .line 252
    if-nez v3, :cond_13

    .line 253
    .line 254
    move-object v3, v6

    .line 255
    :cond_13
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    .line 257
    .line 258
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->frameUnder15:Landroid/graphics/drawable/Drawable;

    .line 259
    .line 260
    if-nez v3, :cond_14

    .line 261
    .line 262
    move-object v3, v6

    .line 263
    :cond_14
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 264
    .line 265
    .line 266
    add-int/lit8 v2, v2, -0xf

    .line 267
    .line 268
    int-to-float v2, v2

    .line 269
    const/high16 v3, 0x42a00000    # 80.0f

    .line 270
    .line 271
    div-float/2addr v2, v3

    .line 272
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    int-to-float v3, v3

    .line 277
    mul-float/2addr v3, v2

    .line 278
    float-to-int v2, v3

    .line 279
    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 280
    .line 281
    sub-int/2addr v3, v2

    .line 282
    new-instance v4, Landroid/graphics/Rect;

    .line 283
    .line 284
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 285
    .line 286
    .line 287
    iget v5, v10, Landroid/graphics/Rect;->left:I

    .line 288
    .line 289
    iget v7, v10, Landroid/graphics/Rect;->top:I

    .line 290
    .line 291
    iget v8, v10, Landroid/graphics/Rect;->right:I

    .line 292
    .line 293
    invoke-virtual {v4, v5, v7, v8, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 294
    .line 295
    .line 296
    iget-object v5, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    .line 297
    .line 298
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 299
    .line 300
    .line 301
    new-instance v4, Landroid/graphics/Rect;

    .line 302
    .line 303
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 304
    .line 305
    .line 306
    iget-object v5, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    .line 307
    .line 308
    iget v7, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelColor:I

    .line 309
    .line 310
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    .line 312
    .line 313
    iget v5, v10, Landroid/graphics/Rect;->left:I

    .line 314
    .line 315
    iget v7, v10, Landroid/graphics/Rect;->right:I

    .line 316
    .line 317
    iget v8, v10, Landroid/graphics/Rect;->bottom:I

    .line 318
    .line 319
    invoke-virtual {v4, v5, v3, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 320
    .line 321
    .line 322
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    .line 323
    .line 324
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 325
    .line 326
    .line 327
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->isNeedBoltAndWarning:Z

    .line 328
    .line 329
    if-eqz v3, :cond_15

    .line 330
    .line 331
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->context:Landroid/content/Context;

    .line 332
    .line 333
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    const v4, 0x7f080b37

    .line 338
    .line 339
    .line 340
    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLightningBoltLightPaint:Landroid/graphics/Paint;

    .line 345
    .line 346
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    iget-object v5, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->batteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    .line 351
    .line 352
    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    filled-new-array {v5, v5, v4, v4}, [I

    .line 357
    .line 358
    .line 359
    move-result-object v22

    .line 360
    const/4 v4, 0x4

    .line 361
    new-array v4, v4, [F

    .line 362
    .line 363
    const/4 v5, 0x0

    .line 364
    const/4 v6, 0x0

    .line 365
    aput v5, v4, v6

    .line 366
    .line 367
    int-to-float v2, v2

    .line 368
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 369
    .line 370
    .line 371
    move-result v6

    .line 372
    int-to-float v6, v6

    .line 373
    div-float v6, v2, v6

    .line 374
    .line 375
    const/4 v7, 0x1

    .line 376
    aput v6, v4, v7

    .line 377
    .line 378
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    int-to-float v6, v6

    .line 383
    div-float/2addr v2, v6

    .line 384
    const/4 v6, 0x2

    .line 385
    aput v2, v4, v6

    .line 386
    .line 387
    const/4 v2, 0x3

    .line 388
    const/high16 v6, 0x3f800000    # 1.0f

    .line 389
    .line 390
    aput v6, v4, v2

    .line 391
    .line 392
    new-instance v2, Landroid/graphics/LinearGradient;

    .line 393
    .line 394
    const/16 v18, 0x0

    .line 395
    .line 396
    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    .line 397
    .line 398
    int-to-float v6, v6

    .line 399
    const/16 v20, 0x0

    .line 400
    .line 401
    iget v7, v10, Landroid/graphics/Rect;->top:I

    .line 402
    .line 403
    int-to-float v7, v7

    .line 404
    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 405
    .line 406
    move-object/from16 v17, v2

    .line 407
    .line 408
    move/from16 v19, v6

    .line 409
    .line 410
    move/from16 v21, v7

    .line 411
    .line 412
    move-object/from16 v23, v4

    .line 413
    .line 414
    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 415
    .line 416
    .line 417
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->context:Landroid/content/Context;

    .line 418
    .line 419
    iget v6, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->width:I

    .line 420
    .line 421
    iget v7, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->height:I

    .line 422
    .line 423
    new-instance v13, Landroid/graphics/Paint;

    .line 424
    .line 425
    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 426
    .line 427
    .line 428
    const/high16 v8, -0x1000000

    .line 429
    .line 430
    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 431
    .line 432
    .line 433
    const/4 v8, 0x0

    .line 434
    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 435
    .line 436
    .line 437
    const/high16 v8, 0x41200000    # 10.0f

    .line 438
    .line 439
    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 440
    .line 441
    .line 442
    sget-object v8, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 443
    .line 444
    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 445
    .line 446
    .line 447
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    .line 448
    .line 449
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 450
    .line 451
    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 458
    .line 459
    .line 460
    new-instance v8, Landroid/graphics/Matrix;

    .line 461
    .line 462
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2, v8}, Landroid/graphics/LinearGradient;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 466
    .line 467
    .line 468
    int-to-float v11, v6

    .line 469
    const/high16 v9, 0x40000000    # 2.0f

    .line 470
    .line 471
    div-float v10, v11, v9

    .line 472
    .line 473
    int-to-float v12, v7

    .line 474
    div-float v9, v12, v9

    .line 475
    .line 476
    invoke-virtual {v8, v5, v10, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 477
    .line 478
    .line 479
    invoke-virtual {v2, v8}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 480
    .line 481
    .line 482
    const/4 v2, 0x0

    .line 483
    invoke-virtual {v3, v2, v2, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 484
    .line 485
    .line 486
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 487
    .line 488
    invoke-static {v6, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    new-instance v8, Landroid/graphics/Canvas;

    .line 493
    .line 494
    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 498
    .line 499
    .line 500
    const/4 v9, 0x0

    .line 501
    const/4 v10, 0x0

    .line 502
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 503
    .line 504
    .line 505
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 506
    .line 507
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 512
    .line 513
    .line 514
    iget v2, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->width:I

    .line 515
    .line 516
    iget v0, v0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->height:I

    .line 517
    .line 518
    const/4 v4, 0x0

    .line 519
    invoke-virtual {v3, v4, v4, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 523
    .line 524
    .line 525
    :cond_15
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->intrinsicHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->intrinsicWidth:I

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
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->height:I

    .line 3
    .line 4
    sub-int/2addr p3, p1

    .line 5
    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardBatteryMeterDrawable;->width:I

    .line 6
    .line 7
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method
