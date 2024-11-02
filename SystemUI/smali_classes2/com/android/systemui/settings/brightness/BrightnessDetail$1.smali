.class public final Lcom/android/systemui/settings/brightness/BrightnessDetail$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# instance fields
.field public mBrightnessDetailSliderView:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

.field public mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;

.field public mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;


# direct methods
.method public static -$$Nest$msetBrightness(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 11
    .line 12
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBrightnessBlocked()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string v0, "BrightenssDetail"

    .line 21
    .line 22
    const-string v1, "Auto brightness options are not available by KnoxStateMonitor."

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->setAutoBrightness(Z)V

    .line 39
    .line 40
    .line 41
    iget-object p0, v1, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 48
    .line 49
    .line 50
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_BAR_EXTRA_BRIGHTNESS:Z

    .line 51
    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-static {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->-$$Nest$msetExtraBrightnessLayoutVisibilityLogic(Lcom/android/systemui/settings/brightness/BrightnessDetail;Z)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->setAutoBrightness(Z)V

    .line 67
    .line 68
    .line 69
    iget-object p0, v1, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 76
    .line 77
    .line 78
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_BAR_EXTRA_BRIGHTNESS:Z

    .line 79
    .line 80
    if-eqz p0, :cond_2

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    invoke-static {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->-$$Nest$msetExtraBrightnessLayoutVisibilityLogic(Lcom/android/systemui/settings/brightness/BrightnessDetail;Z)V

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 90
    .line 91
    const-string p1, "QPDE1006"

    .line 92
    .line 93
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object p0, v1, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessBarPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    const-string p2, "QPDS1006"

    .line 103
    .line 104
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    .line 106
    .line 107
    iget-object p0, v1, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessBarPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 108
    .line 109
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .line 1
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d032e

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    iget-object v0, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    move-object v1, p3

    .line 20
    check-cast v1, Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/android/systemui/qs/SecQSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/android/systemui/util/DeviceType;->isLightSensorSupported(Landroid/content/Context;)Z

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/android/systemui/util/DeviceType;->isLightSensorSupported(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    const v0, 0x7f130f01

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const v0, 0x7f130f0c

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_0
    iget-object v3, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    const v4, 0x7f0a0bd9

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 72
    .line 73
    const v3, 0x7f0a0be1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    .line 81
    .line 82
    iput-object v0, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 83
    .line 84
    iget-object v0, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 85
    .line 86
    const v5, 0x7f0a0be0

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroid/widget/TextView;

    .line 94
    .line 95
    iput-object v0, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSummary:Landroid/widget/TextView;

    .line 96
    .line 97
    const/16 v6, 0x8

    .line 98
    .line 99
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 103
    .line 104
    if-eqz v0, :cond_1

    .line 105
    .line 106
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const v7, 0x7f070e7f

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iget-object v7, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 118
    .line 119
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    iget-object v9, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 124
    .line 125
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    iget-object v10, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 130
    .line 131
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 136
    .line 137
    .line 138
    :cond_1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BAR_EXTRA_BRIGHTNESS:Z

    .line 139
    .line 140
    const/4 v7, 0x1

    .line 141
    if-eqz v0, :cond_3

    .line 142
    .line 143
    iget-object v8, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 144
    .line 145
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    const v9, 0x7f070cd0

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    iget-object v9, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    const v10, 0x7f070cd1

    .line 163
    .line 164
    .line 165
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 170
    .line 171
    const/4 v11, -0x1

    .line 172
    invoke-direct {v10, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 173
    .line 174
    .line 175
    iput v9, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 176
    .line 177
    iput v9, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 178
    .line 179
    new-instance v8, Landroid/view/View;

    .line 180
    .line 181
    iget-object v9, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 182
    .line 183
    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 184
    .line 185
    .line 186
    iput-object v8, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->divider:Landroid/view/View;

    .line 187
    .line 188
    invoke-virtual {v8, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    iget-object v8, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->divider:Landroid/view/View;

    .line 192
    .line 193
    iget-object v9, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 194
    .line 195
    const v10, 0x7f06051d

    .line 196
    .line 197
    .line 198
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 203
    .line 204
    .line 205
    iget-object v8, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->divider:Landroid/view/View;

    .line 206
    .line 207
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 208
    .line 209
    .line 210
    iget-object v8, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 211
    .line 212
    invoke-static {v8, v1}, Lcom/android/systemui/qs/SecQSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    iput-object v8, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessContainer:Landroid/widget/LinearLayout;

    .line 217
    .line 218
    const v8, 0x7f130f09

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    iget-object v9, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessContainer:Landroid/widget/LinearLayout;

    .line 226
    .line 227
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    check-cast v4, Landroid/widget/TextView;

    .line 232
    .line 233
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    iget-object v4, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessContainer:Landroid/widget/LinearLayout;

    .line 237
    .line 238
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    .line 243
    .line 244
    iput-object v3, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 245
    .line 246
    const v3, 0x7f130f0a

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    iget-object v4, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessContainer:Landroid/widget/LinearLayout;

    .line 254
    .line 255
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    check-cast v4, Landroid/widget/TextView;

    .line 260
    .line 261
    iput-object v4, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessSummary:Landroid/widget/TextView;

    .line 262
    .line 263
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    iget-object v3, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessSummary:Landroid/widget/TextView;

    .line 267
    .line 268
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    iget-object v3, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessContainer:Landroid/widget/LinearLayout;

    .line 272
    .line 273
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 274
    .line 275
    .line 276
    iget-object v1, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 277
    .line 278
    iget-object v3, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 279
    .line 280
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    const-string/jumbo v4, "screen_extra_brightness"

    .line 285
    .line 286
    .line 287
    const/4 v5, -0x2

    .line 288
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    if-ne v3, v7, :cond_2

    .line 293
    .line 294
    move v3, v7

    .line 295
    goto :goto_1

    .line 296
    :cond_2
    move v3, v2

    .line 297
    :goto_1
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 298
    .line 299
    .line 300
    :cond_3
    iget-object v1, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 301
    .line 302
    invoke-virtual {p2}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->isSwitchChecked()Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 307
    .line 308
    .line 309
    iget-object v1, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 310
    .line 311
    new-instance v3, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$2;

    .line 312
    .line 313
    invoke-direct {v3, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    .line 318
    .line 319
    iget-object v1, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 320
    .line 321
    new-instance v3, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$3;

    .line 322
    .line 323
    invoke-direct {v3, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$3;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 327
    .line 328
    .line 329
    iget-object v1, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 330
    .line 331
    new-instance v3, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$4;

    .line 332
    .line 333
    invoke-direct {v3, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$4;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    .line 338
    .line 339
    iget-object v1, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 340
    .line 341
    new-instance v3, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$5;

    .line 342
    .line 343
    invoke-direct {v3, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$5;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 347
    .line 348
    .line 349
    const-string v1, "BrightenssDetail"

    .line 350
    .line 351
    const-string v3, "isCameraLightSensorSupported"

    .line 352
    .line 353
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    const-string/jumbo v4, "sensor"

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    check-cast v4, Landroid/hardware/SensorManager;

    .line 364
    .line 365
    const v5, 0x10044

    .line 366
    .line 367
    .line 368
    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    if-eqz v4, :cond_4

    .line 388
    .line 389
    goto :goto_2

    .line 390
    :cond_4
    move v7, v2

    .line 391
    :goto_2
    if-eqz v7, :cond_7

    .line 392
    .line 393
    const-class v3, Landroid/hardware/SensorPrivacyManager;

    .line 394
    .line 395
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    check-cast v3, Landroid/hardware/SensorPrivacyManager;

    .line 400
    .line 401
    const/4 v4, 0x2

    .line 402
    invoke-virtual {v3, v4}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    const-string v4, "isBlocked "

    .line 407
    .line 408
    invoke-static {v4, v3, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 409
    .line 410
    .line 411
    iget-object v1, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 412
    .line 413
    xor-int/lit8 v4, v3, 0x1

    .line 414
    .line 415
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 416
    .line 417
    .line 418
    iget-object v1, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 419
    .line 420
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 421
    .line 422
    .line 423
    iget-object v1, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 424
    .line 425
    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 426
    .line 427
    .line 428
    iget-object v1, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 429
    .line 430
    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 431
    .line 432
    .line 433
    iget-object v1, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSummary:Landroid/widget/TextView;

    .line 434
    .line 435
    if-eqz v3, :cond_5

    .line 436
    .line 437
    goto :goto_3

    .line 438
    :cond_5
    move v2, v6

    .line 439
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    .line 441
    .line 442
    iget-object v1, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSummary:Landroid/widget/TextView;

    .line 443
    .line 444
    const v2, 0x7f130eeb

    .line 445
    .line 446
    .line 447
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    .line 453
    .line 454
    iget-object v1, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 455
    .line 456
    if-eqz v3, :cond_6

    .line 457
    .line 458
    const v2, 0x3ecccccd    # 0.4f

    .line 459
    .line 460
    .line 461
    goto :goto_4

    .line 462
    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 463
    .line 464
    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 465
    .line 466
    .line 467
    :cond_7
    if-eqz v0, :cond_8

    .line 468
    .line 469
    iget-object v0, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessContainer:Landroid/widget/LinearLayout;

    .line 470
    .line 471
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessDetail$2;

    .line 472
    .line 473
    invoke-direct {v1, p2}, Lcom/android/systemui/settings/brightness/BrightnessDetail$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    .line 478
    .line 479
    iget-object v0, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 480
    .line 481
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessDetail$3;

    .line 482
    .line 483
    invoke-direct {v1, p2}, Lcom/android/systemui/settings/brightness/BrightnessDetail$3;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    .line 488
    .line 489
    iget-object v0, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 490
    .line 491
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessDetail$4;

    .line 492
    .line 493
    invoke-direct {v1, p2}, Lcom/android/systemui/settings/brightness/BrightnessDetail$4;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 497
    .line 498
    .line 499
    iget-object v0, p2, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 500
    .line 501
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    invoke-static {p2, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->-$$Nest$msetExtraBrightnessLayoutVisibilityLogic(Lcom/android/systemui/settings/brightness/BrightnessDetail;Z)V

    .line 506
    .line 507
    .line 508
    :cond_8
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;

    .line 509
    .line 510
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Landroid/content/Context;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p3, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 514
    .line 515
    .line 516
    return-object p3
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x1389

    .line 2
    .line 3
    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "android.settings.DISPLAY_SETTINGS"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const v0, 0x7f130f08

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final setAutoBrightness(Z)V
    .locals 5

    .line 1
    const-string v0, "automatic = "

    .line 2
    .line 3
    const-string v1, "BrightenssDetail"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 11
    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->isLightSensorSupported(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, -0x2

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BAR_BRIGHTNESS_PERSONAL_CONTROL:Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const-string/jumbo v0, "screen_brightness"

    .line 28
    .line 29
    .line 30
    const-string v2, "brightness_pms_marker_screen"

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    move-object v3, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v3, v2

    .line 37
    :goto_0
    if-eqz p1, :cond_1

    .line 38
    .line 39
    move-object v0, v2

    .line 40
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/16 v4, 0x64

    .line 47
    .line 48
    invoke-static {v2, v3, v4, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-static {v3, v0, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string/jumbo v0, "screen_brightness_mode"

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v0, "display_outdoor_mode"

    .line 81
    .line 82
    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_1
    return-void
.end method

.method public final setToggleState(Z)V
    .locals 0

    .line 1
    return-void
.end method
