.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;
.super Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mTwilightManager:Landroidx/appcompat/app/TwilightManager;

.field public final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/TwilightManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Landroidx/appcompat/app/TwilightManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "android.intent.action.TIME_SET"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "android.intent.action.TIME_TICK"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public final getApplyableNightMode()I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Landroidx/appcompat/app/TwilightManager;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-wide v4, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    cmp-long v4, v4, v6

    .line 18
    .line 19
    if-lez v4, :cond_0

    .line 20
    .line 21
    move v4, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v4, v3

    .line 24
    :goto_0
    if-eqz v4, :cond_1

    .line 25
    .line 26
    iget-boolean v0, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    .line 27
    .line 28
    goto/16 :goto_a

    .line 29
    .line 30
    :cond_1
    iget-object v4, v0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    .line 33
    .line 34
    invoke-static {v4, v5}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const-string v6, "Failed to get last known location"

    .line 39
    .line 40
    const-string v7, "TwilightManager"

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    iget-object v9, v0, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    .line 44
    .line 45
    if-nez v5, :cond_4

    .line 46
    .line 47
    const-string/jumbo v0, "network"

    .line 48
    .line 49
    .line 50
    if-nez v9, :cond_3

    .line 51
    .line 52
    :cond_2
    :goto_1
    move-object v0, v8

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    :try_start_0
    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :goto_2
    move-object v5, v0

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    move-object v5, v8

    .line 73
    :goto_3
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 74
    .line 75
    invoke-static {v4, v0}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_6

    .line 80
    .line 81
    const-string v0, "gps"

    .line 82
    .line 83
    if-nez v9, :cond_5

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    :try_start_1
    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_6

    .line 91
    .line 92
    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 93
    .line 94
    .line 95
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    move-object v8, v0

    .line 97
    goto :goto_4

    .line 98
    :catch_1
    move-exception v0

    .line 99
    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .line 101
    .line 102
    :cond_6
    :goto_4
    if-eqz v8, :cond_7

    .line 103
    .line 104
    if-eqz v5, :cond_7

    .line 105
    .line 106
    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    .line 107
    .line 108
    .line 109
    move-result-wide v9

    .line 110
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    .line 111
    .line 112
    .line 113
    move-result-wide v11

    .line 114
    cmp-long v0, v9, v11

    .line 115
    .line 116
    if-lez v0, :cond_8

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_7
    if-eqz v8, :cond_8

    .line 120
    .line 121
    :goto_5
    move-object v5, v8

    .line 122
    :cond_8
    if-eqz v5, :cond_f

    .line 123
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    .line 126
    .line 127
    move-result-wide v6

    .line 128
    sget-object v0, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    .line 129
    .line 130
    if-nez v0, :cond_9

    .line 131
    .line 132
    new-instance v0, Landroidx/appcompat/app/TwilightCalculator;

    .line 133
    .line 134
    invoke-direct {v0}, Landroidx/appcompat/app/TwilightCalculator;-><init>()V

    .line 135
    .line 136
    .line 137
    sput-object v0, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    .line 138
    .line 139
    :cond_9
    sget-object v0, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    .line 140
    .line 141
    const-wide/32 v15, 0x5265c00

    .line 142
    .line 143
    .line 144
    sub-long v13, v6, v15

    .line 145
    .line 146
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    .line 147
    .line 148
    .line 149
    move-result-wide v9

    .line 150
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    .line 151
    .line 152
    .line 153
    move-result-wide v11

    .line 154
    move-object v8, v0

    .line 155
    invoke-virtual/range {v8 .. v14}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    .line 159
    .line 160
    .line 161
    move-result-wide v9

    .line 162
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    .line 163
    .line 164
    .line 165
    move-result-wide v11

    .line 166
    move-wide v13, v6

    .line 167
    invoke-virtual/range {v8 .. v14}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    .line 168
    .line 169
    .line 170
    iget v4, v0, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 171
    .line 172
    if-ne v4, v2, :cond_a

    .line 173
    .line 174
    move v3, v2

    .line 175
    :cond_a
    iget-wide v13, v0, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 176
    .line 177
    iget-wide v11, v0, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 178
    .line 179
    add-long/2addr v15, v6

    .line 180
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    .line 181
    .line 182
    .line 183
    move-result-wide v9

    .line 184
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    .line 185
    .line 186
    .line 187
    move-result-wide v4

    .line 188
    move-object v8, v0

    .line 189
    move-wide/from16 v17, v11

    .line 190
    .line 191
    move-wide v11, v4

    .line 192
    move-wide v4, v13

    .line 193
    move-wide v13, v15

    .line 194
    invoke-virtual/range {v8 .. v14}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    .line 195
    .line 196
    .line 197
    iget-wide v8, v0, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 198
    .line 199
    const-wide/16 v10, -0x1

    .line 200
    .line 201
    cmp-long v0, v4, v10

    .line 202
    .line 203
    if-eqz v0, :cond_e

    .line 204
    .line 205
    cmp-long v0, v17, v10

    .line 206
    .line 207
    if-nez v0, :cond_b

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_b
    cmp-long v0, v6, v17

    .line 211
    .line 212
    const-wide/16 v10, 0x0

    .line 213
    .line 214
    if-lez v0, :cond_c

    .line 215
    .line 216
    add-long/2addr v8, v10

    .line 217
    goto :goto_6

    .line 218
    :cond_c
    cmp-long v0, v6, v4

    .line 219
    .line 220
    if-lez v0, :cond_d

    .line 221
    .line 222
    add-long v8, v17, v10

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_d
    add-long v8, v4, v10

    .line 226
    .line 227
    :goto_6
    const-wide/32 v4, 0xea60

    .line 228
    .line 229
    .line 230
    add-long/2addr v8, v4

    .line 231
    goto :goto_8

    .line 232
    :cond_e
    :goto_7
    const-wide/32 v4, 0x2932e00

    .line 233
    .line 234
    .line 235
    add-long v8, v6, v4

    .line 236
    .line 237
    :goto_8
    iput-boolean v3, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    .line 238
    .line 239
    iput-wide v8, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    .line 240
    .line 241
    goto :goto_9

    .line 242
    :cond_f
    const-string v0, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 243
    .line 244
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    const/16 v1, 0xb

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    const/4 v1, 0x6

    .line 258
    if-lt v0, v1, :cond_10

    .line 259
    .line 260
    const/16 v1, 0x16

    .line 261
    .line 262
    if-lt v0, v1, :cond_11

    .line 263
    .line 264
    :cond_10
    move v3, v2

    .line 265
    :cond_11
    :goto_9
    move v0, v3

    .line 266
    :goto_a
    if-eqz v0, :cond_12

    .line 267
    .line 268
    const/4 v2, 0x2

    .line 269
    :cond_12
    return v2
.end method

.method public final onChange()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    .line 4
    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyApplicationSpecificConfig(ZZ)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method
