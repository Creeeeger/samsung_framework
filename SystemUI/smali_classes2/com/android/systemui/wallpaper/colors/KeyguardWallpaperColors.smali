.class public final Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG_FLAG_NAMES:[Ljava/lang/String;

.field public static final NUM_SEPARATED_AREA:I

.field public static final UPDATE_FLAGS:[J

.field public static final UPDATE_FLAGS_ADAPTIVE_CONTRAST:[J

.field public static final UPDATE_FLAGS_SHADOW:[J


# instance fields
.field public final mSemWallpaperColors:Landroid/util/SparseArray;

.field public final mSemWallpaperColorsCover:Landroid/util/SparseArray;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v1, v0, [J

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    .line 8
    .line 9
    new-array v2, v0, [J

    .line 10
    .line 11
    fill-array-data v2, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v2, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_SHADOW:[J

    .line 15
    .line 16
    new-array v0, v0, [J

    .line 17
    .line 18
    fill-array-data v0, :array_2

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_ADAPTIVE_CONTRAST:[J

    .line 22
    .line 23
    const-string v2, "STATUSBAR "

    .line 24
    .line 25
    const-string v3, "BODY_TOP "

    .line 26
    .line 27
    const-string v4, "BODY_MID "

    .line 28
    .line 29
    const-string v5, "BODY_BOTTOM "

    .line 30
    .line 31
    const-string v6, "NAVIBAR "

    .line 32
    .line 33
    const-string v7, "BACKGROUND "

    .line 34
    .line 35
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->DEBUG_FLAG_NAMES:[Ljava/lang/String;

    .line 40
    .line 41
    array-length v0, v1

    .line 42
    sput v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPARATED_AREA:I

    .line 43
    .line 44
    return-void

    .line 45
    :array_0
    .array-data 8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 8
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
    .end array-data

    .line 74
    :array_2
    .array-data 8
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance p1, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColorsCover:Landroid/util/SparseArray;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 19
    .line 20
    return-void
.end method

.method public static getChangeFlagsString(J)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[ "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x1

    .line 9
    .line 10
    and-long/2addr v1, p0

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    cmp-long v1, v1, v3

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v1, "THEME "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string/jumbo v1, "| "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-wide/16 v5, 0x400

    .line 29
    .line 30
    and-long/2addr v5, p0

    .line 31
    cmp-long v2, v5, v3

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const-string v2, "COLOR_THEME "

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-wide/16 v5, 0x2

    .line 44
    .line 45
    and-long/2addr v5, p0

    .line 46
    cmp-long v2, v5, v3

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    const-string v2, "ADAPTIVE "

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    move v5, v2

    .line 60
    :goto_0
    const/4 v6, 0x6

    .line 61
    if-ge v5, v6, :cond_4

    .line 62
    .line 63
    sget-object v6, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    .line 64
    .line 65
    aget-wide v6, v6, v5

    .line 66
    .line 67
    and-long/2addr v6, p0

    .line 68
    cmp-long v6, v6, v3

    .line 69
    .line 70
    if-eqz v6, :cond_3

    .line 71
    .line 72
    sget-object v6, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->DEBUG_FLAG_NAMES:[Ljava/lang/String;

    .line 73
    .line 74
    aget-object v6, v6, v5

    .line 75
    .line 76
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :goto_1
    if-ge v2, v6, :cond_6

    .line 86
    .line 87
    sget-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_SHADOW:[J

    .line 88
    .line 89
    aget-wide v7, v1, v2

    .line 90
    .line 91
    and-long/2addr v7, p0

    .line 92
    cmp-long v1, v7, v3

    .line 93
    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    const-string p0, "SHADOW "

    .line 97
    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    :goto_2
    const-string p0, "]"

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0
.end method


# virtual methods
.method public final checkUpdates(Lcom/android/systemui/wallpaper/colors/ColorData;Lcom/android/systemui/wallpaper/colors/ColorData;)J
    .locals 17

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, v1, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move v0, v4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v3

    .line 16
    :goto_0
    iget-boolean v5, v2, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme:Z

    .line 17
    .line 18
    if-eqz v5, :cond_1

    .line 19
    .line 20
    move v5, v4

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v5, v3

    .line 23
    :goto_1
    if-eqz v5, :cond_2

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    if-eq v0, v5, :cond_3

    .line 27
    .line 28
    :goto_2
    move v0, v4

    .line 29
    goto :goto_3

    .line 30
    :cond_3
    move v0, v3

    .line 31
    :goto_3
    const-wide/16 v5, 0x0

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    const-wide/16 v7, 0x1

    .line 36
    .line 37
    move-object/from16 v0, p0

    .line 38
    .line 39
    goto :goto_4

    .line 40
    :cond_4
    move-object/from16 v0, p0

    .line 41
    .line 42
    move-wide v7, v5

    .line 43
    :goto_4
    iget-object v0, v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled$1()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    const-wide/16 v9, 0x400

    .line 52
    .line 53
    or-long/2addr v7, v9

    .line 54
    :cond_5
    :try_start_0
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_6

    .line 61
    .line 62
    goto :goto_5

    .line 63
    :cond_6
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 64
    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    goto :goto_5

    .line 68
    :cond_7
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    .line 69
    .line 70
    if-eqz v0, :cond_8

    .line 71
    .line 72
    goto :goto_5

    .line 73
    :cond_8
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_9

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_9
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    .line 83
    .line 84
    .line 85
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    if-eqz v0, :cond_a

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_a
    move v0, v4

    .line 90
    goto :goto_6

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v9, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v10, "isAdaptiveColorEnabled: Error while reading settings ("

    .line 95
    .line 96
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, ")"

    .line 107
    .line 108
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v9, "WallpaperUtils"

    .line 116
    .line 117
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :goto_5
    move v0, v3

    .line 121
    :goto_6
    if-eqz v0, :cond_b

    .line 122
    .line 123
    const-wide/16 v9, 0x2

    .line 124
    .line 125
    or-long/2addr v7, v9

    .line 126
    :cond_b
    if-eqz v1, :cond_c

    .line 127
    .line 128
    iget-object v0, v1, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_c
    const/4 v0, 0x0

    .line 132
    :goto_7
    iget-object v1, v2, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    .line 133
    .line 134
    if-nez v0, :cond_d

    .line 135
    .line 136
    if-nez v1, :cond_d

    .line 137
    .line 138
    goto/16 :goto_c

    .line 139
    .line 140
    :cond_d
    sget-object v2, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    .line 141
    .line 142
    sget-object v9, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_ADAPTIVE_CONTRAST:[J

    .line 143
    .line 144
    sget-object v10, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_SHADOW:[J

    .line 145
    .line 146
    sget v11, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPARATED_AREA:I

    .line 147
    .line 148
    if-nez v0, :cond_f

    .line 149
    .line 150
    if-eqz v1, :cond_f

    .line 151
    .line 152
    :goto_8
    if-ge v3, v11, :cond_17

    .line 153
    .line 154
    aget-wide v12, v2, v3

    .line 155
    .line 156
    invoke-virtual {v1, v12, v13}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    if-eqz v0, :cond_e

    .line 161
    .line 162
    aget-wide v12, v2, v3

    .line 163
    .line 164
    or-long v4, v5, v12

    .line 165
    .line 166
    aget-wide v12, v10, v3

    .line 167
    .line 168
    or-long/2addr v4, v12

    .line 169
    aget-wide v12, v9, v3

    .line 170
    .line 171
    or-long v5, v4, v12

    .line 172
    .line 173
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_f
    if-eqz v0, :cond_11

    .line 177
    .line 178
    if-nez v1, :cond_11

    .line 179
    .line 180
    :goto_9
    if-ge v3, v11, :cond_17

    .line 181
    .line 182
    aget-wide v12, v2, v3

    .line 183
    .line 184
    invoke-virtual {v0, v12, v13}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    if-eqz v1, :cond_10

    .line 189
    .line 190
    aget-wide v12, v2, v3

    .line 191
    .line 192
    or-long v4, v5, v12

    .line 193
    .line 194
    aget-wide v12, v10, v3

    .line 195
    .line 196
    or-long/2addr v4, v12

    .line 197
    aget-wide v12, v9, v3

    .line 198
    .line 199
    or-long v5, v4, v12

    .line 200
    .line 201
    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 202
    .line 203
    goto :goto_9

    .line 204
    :cond_11
    move v12, v3

    .line 205
    :goto_a
    if-ge v12, v11, :cond_17

    .line 206
    .line 207
    aget-wide v13, v2, v12

    .line 208
    .line 209
    invoke-virtual {v0, v13, v14}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 210
    .line 211
    .line 212
    move-result-object v13

    .line 213
    aget-wide v14, v2, v12

    .line 214
    .line 215
    invoke-virtual {v1, v14, v15}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 216
    .line 217
    .line 218
    move-result-object v14

    .line 219
    if-nez v13, :cond_12

    .line 220
    .line 221
    if-eqz v14, :cond_16

    .line 222
    .line 223
    aget-wide v13, v2, v12

    .line 224
    .line 225
    or-long/2addr v5, v13

    .line 226
    aget-wide v13, v10, v12

    .line 227
    .line 228
    or-long/2addr v5, v13

    .line 229
    aget-wide v13, v9, v12

    .line 230
    .line 231
    goto :goto_b

    .line 232
    :cond_12
    sget-boolean v15, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 233
    .line 234
    if-eqz v15, :cond_13

    .line 235
    .line 236
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors;->getWhich()I

    .line 237
    .line 238
    .line 239
    move-result v15

    .line 240
    invoke-static {v15}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    .line 241
    .line 242
    .line 243
    move-result v15

    .line 244
    if-eqz v15, :cond_13

    .line 245
    .line 246
    aget-wide v13, v2, v12

    .line 247
    .line 248
    or-long/2addr v5, v13

    .line 249
    aget-wide v13, v10, v12

    .line 250
    .line 251
    or-long/2addr v5, v13

    .line 252
    aget-wide v13, v9, v12

    .line 253
    .line 254
    goto :goto_b

    .line 255
    :cond_13
    invoke-virtual {v13, v14, v3}, Landroid/app/SemWallpaperColors$Item;->equals(Ljava/lang/Object;I)Z

    .line 256
    .line 257
    .line 258
    move-result v15

    .line 259
    if-nez v15, :cond_14

    .line 260
    .line 261
    aget-wide v15, v2, v12

    .line 262
    .line 263
    or-long/2addr v5, v15

    .line 264
    :cond_14
    invoke-virtual {v13, v14, v4}, Landroid/app/SemWallpaperColors$Item;->equals(Ljava/lang/Object;I)Z

    .line 265
    .line 266
    .line 267
    move-result v15

    .line 268
    if-nez v15, :cond_15

    .line 269
    .line 270
    aget-wide v15, v10, v12

    .line 271
    .line 272
    or-long/2addr v5, v15

    .line 273
    :cond_15
    const/4 v15, 0x2

    .line 274
    invoke-virtual {v13, v14, v15}, Landroid/app/SemWallpaperColors$Item;->equals(Ljava/lang/Object;I)Z

    .line 275
    .line 276
    .line 277
    move-result v13

    .line 278
    if-nez v13, :cond_16

    .line 279
    .line 280
    aget-wide v13, v9, v12

    .line 281
    .line 282
    :goto_b
    or-long/2addr v5, v13

    .line 283
    :cond_16
    add-int/lit8 v12, v12, 0x1

    .line 284
    .line 285
    goto :goto_a

    .line 286
    :cond_17
    :goto_c
    or-long v0, v7, v5

    .line 287
    .line 288
    return-wide v0
.end method
