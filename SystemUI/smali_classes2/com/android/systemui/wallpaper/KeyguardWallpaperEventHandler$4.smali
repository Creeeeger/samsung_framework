.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 5

    .line 1
    const-string v0, "KeyguardWallpaperEventHandler"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "onChanged: uri is null. Return!"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "onChanged: uri = "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "ultra_powersaving_mode"

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 45
    .line 46
    const/4 v3, -0x1

    .line 47
    if-nez v1, :cond_b

    .line 48
    .line 49
    const-string v1, "minimal_battery_use"

    .line 50
    .line 51
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :cond_1
    const-string v1, "emergency_mode"

    .line 64
    .line 65
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 82
    .line 83
    if-eq v0, p1, :cond_c

    .line 84
    .line 85
    sput-boolean p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 86
    .line 87
    const/16 p1, 0x25a

    .line 88
    .line 89
    invoke-static {p0, p1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :cond_2
    const-string v1, "lockscreen_wallpaper"

    .line 95
    .line 96
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const/16 v4, 0x386

    .line 105
    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 109
    .line 110
    invoke-static {p0, v4, p1, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_3
    const-string v1, "lockscreen_wallpaper_sub"

    .line 116
    .line 117
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_4

    .line 126
    .line 127
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-static {p0, v4, p1, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :cond_4
    const-string v1, "lock_adaptive_color"

    .line 135
    .line 136
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_5

    .line 145
    .line 146
    const/16 p1, 0x387

    .line 147
    .line 148
    invoke-static {p0, p1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :cond_5
    const-string v1, "lock_adaptive_color_sub"

    .line 154
    .line 155
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_6

    .line 164
    .line 165
    const/16 p1, 0x38b

    .line 166
    .line 167
    invoke-static {p0, p1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_6
    const-string v1, "lockscreen_wallpaper_transparent"

    .line 172
    .line 173
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    const/16 v4, 0x388

    .line 182
    .line 183
    if-eqz v1, :cond_7

    .line 184
    .line 185
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 186
    .line 187
    invoke-static {p0, v4, p1, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_7
    const-string/jumbo v1, "sub_display_lockscreen_wallpaper_transparency"

    .line 192
    .line 193
    .line 194
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_8

    .line 203
    .line 204
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 205
    .line 206
    invoke-static {p0, v4, p1, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_8
    const-string/jumbo v1, "wallpapertheme_state"

    .line 211
    .line 212
    .line 213
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_9

    .line 222
    .line 223
    const/16 p1, 0x2dd

    .line 224
    .line 225
    invoke-static {p0, p1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_9
    const-string v1, "lock_screen_allow_rotation"

    .line 230
    .line 231
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-eqz p1, :cond_a

    .line 240
    .line 241
    const/16 p1, 0x389

    .line 242
    .line 243
    invoke-static {p0, p1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_a
    const-string p0, "onChanged: Unhandled uri."

    .line 248
    .line 249
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_b
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 254
    .line 255
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    .line 260
    .line 261
    if-eq v0, p1, :cond_c

    .line 262
    .line 263
    sput-boolean p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    .line 264
    .line 265
    const/16 p1, 0x25b

    .line 266
    .line 267
    invoke-static {p0, p1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 268
    .line 269
    .line 270
    :cond_c
    :goto_1
    return-void
.end method
