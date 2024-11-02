.class public final Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mButtonOnNavigationBarOption:Landroid/view/View;

.field public mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field public mButtonOnNavigationBarTitle:Landroid/widget/TextView;

.field public mCallScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

.field public mHomeScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

.field public mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

.field public mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field public mLockTitle:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/SRotationLockTile;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SRotationLockTile;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile;)V

    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    sget v2, Lcom/android/systemui/qs/tiles/SRotationLockTile;->$r8$clinit:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    .line 8
    .line 9
    iget-object v3, v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const v4, 0x7f0d0385

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "QPD102"

    .line 24
    .line 25
    invoke-static {v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move-object v4, v3

    .line 29
    check-cast v4, Landroid/view/ViewGroup;

    .line 30
    .line 31
    iget-object v6, v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v6, v4}, Lcom/android/systemui/qs/SecQSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    iput-object v7, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 41
    .line 42
    invoke-static {v6, v4}, Lcom/android/systemui/qs/SecQSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    iput-object v7, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 50
    .line 51
    invoke-static {v6, v4}, Lcom/android/systemui/qs/SecQSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    iput-object v7, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 59
    .line 60
    sget-boolean v7, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 61
    .line 62
    const/16 v8, 0x8

    .line 63
    .line 64
    if-eqz v7, :cond_0

    .line 65
    .line 66
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 67
    .line 68
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 72
    .line 73
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 77
    .line 78
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    :cond_0
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 82
    .line 83
    const v9, 0x7f0a0bd9

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    check-cast v7, Landroid/widget/TextView;

    .line 91
    .line 92
    const v10, 0x7f130def

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    iget-object v10, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 103
    .line 104
    const v11, 0x7f0a0be1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    check-cast v10, Landroidx/appcompat/widget/SwitchCompat;

    .line 112
    .line 113
    iget-object v12, v2, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 114
    .line 115
    invoke-virtual {v12}, Lcom/android/systemui/util/SettingsHelper;->isHomeScreenRotationAllowed()Z

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    invoke-virtual {v10, v13}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v12}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    .line 123
    .line 124
    .line 125
    move-result v13

    .line 126
    if-eqz v13, :cond_1

    .line 127
    .line 128
    invoke-virtual {v10, v5}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 129
    .line 130
    .line 131
    :cond_1
    iget-object v13, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 132
    .line 133
    new-instance v14, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$4;

    .line 134
    .line 135
    invoke-direct {v14, v0, v10}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$4;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    new-instance v13, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$5;

    .line 142
    .line 143
    invoke-direct {v13, v0, v10}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$5;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10, v13}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    .line 148
    .line 149
    new-instance v13, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$6;

    .line 150
    .line 151
    invoke-direct {v13, v0, v10}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$6;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v10, v13}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v6}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    if-eqz v13, :cond_8

    .line 162
    .line 163
    iget-object v13, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 164
    .line 165
    invoke-virtual {v13, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    check-cast v13, Landroid/widget/TextView;

    .line 170
    .line 171
    iput-object v13, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockTitle:Landroid/widget/TextView;

    .line 172
    .line 173
    const v15, 0x7f130df0

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 177
    .line 178
    .line 179
    move-result-object v15

    .line 180
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    iget-object v13, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 184
    .line 185
    invoke-virtual {v13, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    check-cast v13, Landroidx/appcompat/widget/SwitchCompat;

    .line 190
    .line 191
    iput-object v13, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 192
    .line 193
    invoke-virtual {v12}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    if-eqz v13, :cond_2

    .line 198
    .line 199
    iget-object v13, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 200
    .line 201
    invoke-virtual {v13, v5}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 202
    .line 203
    .line 204
    :cond_2
    iget-object v13, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 205
    .line 206
    invoke-virtual {v12}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    .line 207
    .line 208
    .line 209
    move-result v15

    .line 210
    invoke-virtual {v13, v15}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 211
    .line 212
    .line 213
    sget-boolean v13, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    .line 214
    .line 215
    iget-object v2, v2, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 216
    .line 217
    if-eqz v13, :cond_3

    .line 218
    .line 219
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    if-nez v13, :cond_3

    .line 224
    .line 225
    move-object v13, v2

    .line 226
    check-cast v13, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 227
    .line 228
    invoke-virtual {v13}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->isRotateMenuHide()Z

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    if-nez v13, :cond_3

    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_3
    sget-boolean v13, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    .line 236
    .line 237
    sget-boolean v15, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 238
    .line 239
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 240
    .line 241
    .line 242
    move-result v14

    .line 243
    invoke-virtual {v12, v14}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled(Z)Z

    .line 244
    .line 245
    .line 246
    move-result v14

    .line 247
    if-nez v13, :cond_6

    .line 248
    .line 249
    if-nez v15, :cond_6

    .line 250
    .line 251
    if-eqz v14, :cond_4

    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_4
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    .line 255
    .line 256
    .line 257
    move-result v13

    .line 258
    if-nez v13, :cond_5

    .line 259
    .line 260
    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 261
    .line 262
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->isRotateMenuHide()Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-nez v2, :cond_5

    .line 267
    .line 268
    goto :goto_0

    .line 269
    :cond_5
    move v2, v5

    .line 270
    goto :goto_1

    .line 271
    :cond_6
    :goto_0
    const/4 v2, 0x1

    .line 272
    :goto_1
    if-eqz v2, :cond_7

    .line 273
    .line 274
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 275
    .line 276
    new-instance v13, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$7;

    .line 277
    .line 278
    invoke-direct {v13, v0}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$7;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    .line 283
    .line 284
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 285
    .line 286
    new-instance v13, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$8;

    .line 287
    .line 288
    invoke-direct {v13, v0}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$8;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2, v13}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 292
    .line 293
    .line 294
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 295
    .line 296
    new-instance v13, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$9;

    .line 297
    .line 298
    invoke-direct {v13, v0}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$9;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v13}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_7
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 306
    .line 307
    const/4 v13, 0x0

    .line 308
    invoke-virtual {v2, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    .line 310
    .line 311
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 312
    .line 313
    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 314
    .line 315
    .line 316
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 317
    .line 318
    invoke-virtual {v2, v13}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 319
    .line 320
    .line 321
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 322
    .line 323
    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 324
    .line 325
    .line 326
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockTitle:Landroid/widget/TextView;

    .line 327
    .line 328
    const v13, 0x3ecccccd    # 0.4f

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setAlpha(F)V

    .line 332
    .line 333
    .line 334
    goto :goto_2

    .line 335
    :cond_8
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 336
    .line 337
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 338
    .line 339
    .line 340
    :goto_2
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 341
    .line 342
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    check-cast v2, Landroid/widget/TextView;

    .line 347
    .line 348
    const v13, 0x7f130dee

    .line 349
    .line 350
    .line 351
    invoke-virtual {v6, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 352
    .line 353
    .line 354
    move-result-object v13

    .line 355
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    .line 357
    .line 358
    iget-object v13, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 359
    .line 360
    invoke-virtual {v13, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 361
    .line 362
    .line 363
    move-result-object v13

    .line 364
    check-cast v13, Landroidx/appcompat/widget/SwitchCompat;

    .line 365
    .line 366
    invoke-virtual {v12}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    .line 367
    .line 368
    .line 369
    move-result v14

    .line 370
    if-eqz v14, :cond_9

    .line 371
    .line 372
    invoke-virtual {v13, v5}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 373
    .line 374
    .line 375
    :cond_9
    invoke-virtual {v12}, Lcom/android/systemui/util/SettingsHelper;->isCallScreenRotationAllowed()Z

    .line 376
    .line 377
    .line 378
    move-result v14

    .line 379
    invoke-virtual {v13, v14}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 380
    .line 381
    .line 382
    iget-object v14, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 383
    .line 384
    new-instance v15, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$10;

    .line 385
    .line 386
    invoke-direct {v15, v0, v13}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$10;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    .line 391
    .line 392
    new-instance v14, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$11;

    .line 393
    .line 394
    invoke-direct {v14, v0, v13}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$11;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v13, v14}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 398
    .line 399
    .line 400
    new-instance v14, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$12;

    .line 401
    .line 402
    invoke-direct {v14, v0, v13}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$12;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v13, v14}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    .line 407
    .line 408
    sget-boolean v14, Lcom/android/systemui/QpRune;->QUICK_TILE_ROTATION_MANUAL:Z

    .line 409
    .line 410
    const v15, 0x7f0a0202

    .line 411
    .line 412
    .line 413
    if-eqz v14, :cond_b

    .line 414
    .line 415
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 416
    .line 417
    .line 418
    move-result-object v14

    .line 419
    const v11, 0x7f0d0386

    .line 420
    .line 421
    .line 422
    invoke-virtual {v14, v11, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    .line 434
    .line 435
    check-cast v1, Landroid/view/ViewGroup;

    .line 436
    .line 437
    invoke-static {v6, v1}, Lcom/android/systemui/qs/SecQSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    .line 442
    .line 443
    check-cast v4, Landroid/view/ViewGroup;

    .line 444
    .line 445
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 449
    .line 450
    .line 451
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    .line 452
    .line 453
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    check-cast v1, Landroid/widget/TextView;

    .line 458
    .line 459
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarTitle:Landroid/widget/TextView;

    .line 460
    .line 461
    const v4, 0x7f130dd4

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 465
    .line 466
    .line 467
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    .line 468
    .line 469
    const v4, 0x7f0a0be0

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 477
    .line 478
    .line 479
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    .line 480
    .line 481
    const v4, 0x7f0a0be1

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    .line 489
    .line 490
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 491
    .line 492
    invoke-virtual {v12}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarRotateSuggestionEnabled()Z

    .line 493
    .line 494
    .line 495
    move-result v4

    .line 496
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v12}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    if-eqz v1, :cond_a

    .line 504
    .line 505
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 506
    .line 507
    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 508
    .line 509
    .line 510
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    const/4 v4, 0x1

    .line 519
    xor-int/2addr v1, v4

    .line 520
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->updateButtonOnNavigationBarOption(Z)V

    .line 521
    .line 522
    .line 523
    goto :goto_3

    .line 524
    :cond_b
    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 529
    .line 530
    .line 531
    :goto_3
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 532
    .line 533
    new-instance v4, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;

    .line 534
    .line 535
    invoke-direct {v4, v0, v10, v7}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 539
    .line 540
    .line 541
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 542
    .line 543
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockTitle:Landroid/widget/TextView;

    .line 544
    .line 545
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 546
    .line 547
    new-instance v6, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;

    .line 548
    .line 549
    invoke-direct {v6, v0, v5, v4}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v1, v6}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 553
    .line 554
    .line 555
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 556
    .line 557
    new-instance v4, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;

    .line 558
    .line 559
    invoke-direct {v4, v0, v13, v2}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v1, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 563
    .line 564
    .line 565
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    .line 566
    .line 567
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarTitle:Landroid/widget/TextView;

    .line 568
    .line 569
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 570
    .line 571
    new-instance v5, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;

    .line 572
    .line 573
    invoke-direct {v5, v0, v4, v2}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$13;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v1, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 577
    .line 578
    .line 579
    return-object v3
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x7b

    .line 2
    .line 3
    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const v0, 0x7f130df1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 6
    .line 7
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final setToggleState(Z)V
    .locals 4

    .line 1
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isRotationLockTileBlocked()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget p0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->$r8$clinit:I

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v1, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 29
    .line 30
    xor-int/lit8 v1, p1, 0x1

    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 36
    .line 37
    const-string v1, "location"

    .line 38
    .line 39
    const-string v2, "auto rotate"

    .line 40
    .line 41
    const-string v3, "QPDE1008"

    .line 42
    .line 43
    invoke-static {v0, v3, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_ROTATION_MANUAL:Z

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    xor-int/lit8 p1, p1, 0x1

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->updateButtonOnNavigationBarOption(Z)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public final updateButtonOnNavigationBarOption(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED_HARD_KEY:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-class v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 23
    .line 24
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isTaskBarEnabled(Z)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    move p1, v1

    .line 43
    :cond_1
    const v0, 0x7f0a0bd9

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 49
    .line 50
    new-instance v2, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$14;

    .line 51
    .line 52
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$14;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    .line 59
    .line 60
    new-instance v2, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$15;

    .line 61
    .line 62
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$15;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 69
    .line 70
    new-instance v2, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$16;

    .line 71
    .line 72
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$16;-><init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const/high16 v1, 0x3f800000    # 1.0f

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const v1, 0x3ecccccd    # 0.4f

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 122
    .line 123
    .line 124
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 127
    .line 128
    .line 129
    :cond_3
    :goto_1
    return-void
.end method
