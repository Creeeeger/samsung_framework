.class public final Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAdaptable:Landroid/widget/LinearLayout;

.field public final mAdaptiveClickListener:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$1;

.field public mCustom:Landroid/widget/TextView;

.field public final mCustomClickListener:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$2;

.field public mDetailSummary:Landroid/widget/TextView;

.field public mEnableControlInSetting:Z

.field public final mLevelChangedListener:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$6;

.field public mRadioAdaptive:Landroid/widget/RadioButton;

.field public mRadioAdaptiveContainer:Landroid/widget/LinearLayout;

.field public mRadioCustom:Landroid/widget/RadioButton;

.field public mRadioCustomContainer:Landroid/widget/LinearLayout;

.field public mRadioCustomSummary:Landroid/widget/TextView;

.field public mSlider:Landroidx/appcompat/widget/SeslSeekBar;

.field public mSliderTitle:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mEnableControlInSetting:Z

    .line 4
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mAdaptiveClickListener:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$1;

    .line 5
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mCustomClickListener:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$2;

    .line 6
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$6;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$6;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mLevelChangedListener:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$6;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    return-void
.end method

.method public static getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x5a0

    .line 8
    .line 9
    cmp-long v0, p1, v0

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    long-to-int p1, p1

    .line 18
    div-int/lit8 p2, p1, 0x3c

    .line 19
    .line 20
    const/16 v1, 0xb

    .line 21
    .line 22
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 23
    .line 24
    .line 25
    const/16 p2, 0xc

    .line 26
    .line 27
    rem-int/lit8 p1, p1, 0x3c

    .line 28
    .line 29
    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 4
    .line 5
    sget-object v2, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->EYECOMFORT_SETTINGS:Landroid/content/Intent;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, 0x7f0d02cb

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    move-object/from16 v4, p3

    .line 18
    .line 19
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 24
    .line 25
    const/16 v4, 0x1f

    .line 26
    .line 27
    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->sendIntent(I)V

    .line 28
    .line 29
    .line 30
    const v2, 0x7f0a0164

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mDetailSummary:Landroid/widget/TextView;

    .line 40
    .line 41
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_TILE_NIGHT_DIM:Z

    .line 42
    .line 43
    const/16 v5, 0x8

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 52
    .line 53
    iget-object v6, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    const v7, 0x7f130db2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    const v2, 0x7f0a015a

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mCustom:Landroid/widget/TextView;

    .line 75
    .line 76
    const v2, 0x7f0a015b

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Landroid/widget/LinearLayout;

    .line 84
    .line 85
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mAdaptable:Landroid/widget/LinearLayout;

    .line 86
    .line 87
    const v2, 0x7f0a015c

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Landroid/widget/RadioButton;

    .line 95
    .line 96
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioAdaptive:Landroid/widget/RadioButton;

    .line 97
    .line 98
    const v2, 0x7f0a015d

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Landroid/widget/LinearLayout;

    .line 106
    .line 107
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioAdaptiveContainer:Landroid/widget/LinearLayout;

    .line 108
    .line 109
    const v2, 0x7f0a015e

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Landroid/widget/RadioButton;

    .line 117
    .line 118
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustom:Landroid/widget/RadioButton;

    .line 119
    .line 120
    const v2, 0x7f0a015f

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Landroid/widget/LinearLayout;

    .line 128
    .line 129
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustomContainer:Landroid/widget/LinearLayout;

    .line 130
    .line 131
    const v2, 0x7f0a0163

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Landroid/widget/TextView;

    .line 139
    .line 140
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustomSummary:Landroid/widget/TextView;

    .line 141
    .line 142
    const v2, 0x7f0a0161

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Landroid/widget/TextView;

    .line 150
    .line 151
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSliderTitle:Landroid/widget/TextView;

    .line 152
    .line 153
    if-eqz v4, :cond_1

    .line 154
    .line 155
    const v2, 0x7f0a0162

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSliderTitle:Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_1
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 172
    .line 173
    iget-object v5, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 174
    .line 175
    if-nez v4, :cond_2

    .line 176
    .line 177
    const v6, 0x7f13022b

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_2
    const v6, 0x7f130d61

    .line 182
    .line 183
    .line 184
    :goto_1
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    :goto_2
    const/4 v2, 0x1

    .line 192
    if-eqz v4, :cond_5

    .line 193
    .line 194
    move-object v4, v1

    .line 195
    check-cast v4, Landroid/view/ViewGroup;

    .line 196
    .line 197
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 198
    .line 199
    iget-object v6, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 200
    .line 201
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    const v7, 0x7f070cd0

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 213
    .line 214
    const/4 v8, -0x1

    .line 215
    invoke-direct {v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 216
    .line 217
    .line 218
    new-instance v6, Landroid/view/View;

    .line 219
    .line 220
    iget-object v8, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 221
    .line 222
    invoke-direct {v6, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 223
    .line 224
    .line 225
    iput-object v6, v5, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDivider:Landroid/view/View;

    .line 226
    .line 227
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    .line 229
    .line 230
    iget-object v6, v5, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDivider:Landroid/view/View;

    .line 231
    .line 232
    iget-object v7, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 233
    .line 234
    const v8, 0x7f06051e

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 242
    .line 243
    .line 244
    iget-object v5, v5, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDivider:Landroid/view/View;

    .line 245
    .line 246
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 247
    .line 248
    .line 249
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 250
    .line 251
    iget-object v5, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 252
    .line 253
    invoke-static {v5, v4}, Lcom/android/systemui/qs/SecQSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/SecQSSwitchPreference;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 258
    .line 259
    iput-object v5, v6, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mNightDimContainer:Landroid/widget/LinearLayout;

    .line 260
    .line 261
    iget-object v5, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 262
    .line 263
    const v6, 0x7f130db5

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 271
    .line 272
    iget-object v6, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 273
    .line 274
    const v7, 0x7f130db4

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 282
    .line 283
    iget-object v7, v7, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mNightDimContainer:Landroid/widget/LinearLayout;

    .line 284
    .line 285
    const v8, 0x7f0a0bd9

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    check-cast v7, Landroid/widget/TextView;

    .line 293
    .line 294
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    .line 296
    .line 297
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 298
    .line 299
    iget-object v5, v5, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mNightDimContainer:Landroid/widget/LinearLayout;

    .line 300
    .line 301
    const v7, 0x7f0a0be0

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    check-cast v5, Landroid/widget/TextView;

    .line 309
    .line 310
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    .line 315
    .line 316
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 317
    .line 318
    iget-object v6, v5, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mNightDimContainer:Landroid/widget/LinearLayout;

    .line 319
    .line 320
    const v7, 0x7f0a0be1

    .line 321
    .line 322
    .line 323
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    check-cast v6, Landroidx/appcompat/widget/SwitchCompat;

    .line 328
    .line 329
    iput-object v6, v5, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mNightDimSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 330
    .line 331
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 332
    .line 333
    iget-object v5, v5, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mNightDimContainer:Landroid/widget/LinearLayout;

    .line 334
    .line 335
    const v6, 0x7f0a0b82

    .line 336
    .line 337
    .line 338
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    check-cast v5, Landroid/widget/LinearLayout;

    .line 343
    .line 344
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 345
    .line 346
    iget-object v6, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 347
    .line 348
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    const v7, 0x7f070e88

    .line 353
    .line 354
    .line 355
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 356
    .line 357
    .line 358
    move-result v6

    .line 359
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 360
    .line 361
    iget-object v7, v7, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 362
    .line 363
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    const v8, 0x7f070e90

    .line 368
    .line 369
    .line 370
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 371
    .line 372
    .line 373
    move-result v7

    .line 374
    invoke-virtual {v5, v6, v3, v7, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 375
    .line 376
    .line 377
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 378
    .line 379
    iget-object v5, v5, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mNightDimContainer:Landroid/widget/LinearLayout;

    .line 380
    .line 381
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 382
    .line 383
    .line 384
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 385
    .line 386
    iget-object v5, v4, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 387
    .line 388
    iget-object v5, v5, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 389
    .line 390
    const-string v6, "blue_light_filter_night_dim"

    .line 391
    .line 392
    invoke-virtual {v5, v6}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    if-ne v5, v2, :cond_3

    .line 401
    .line 402
    move v5, v2

    .line 403
    goto :goto_3

    .line 404
    :cond_3
    move v5, v3

    .line 405
    :goto_3
    iget-object v4, v4, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mNightDimSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 406
    .line 407
    if-eqz v4, :cond_4

    .line 408
    .line 409
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 410
    .line 411
    .line 412
    :cond_4
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 413
    .line 414
    iget-object v4, v4, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mNightDimContainer:Landroid/widget/LinearLayout;

    .line 415
    .line 416
    new-instance v5, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$3;

    .line 417
    .line 418
    invoke-direct {v5, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    .line 423
    .line 424
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 425
    .line 426
    iget-object v4, v4, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mNightDimSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 427
    .line 428
    new-instance v5, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$4;

    .line 429
    .line 430
    invoke-direct {v5, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$4;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    .line 435
    .line 436
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 437
    .line 438
    iget-object v4, v4, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mNightDimSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 439
    .line 440
    new-instance v5, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$5;

    .line 441
    .line 442
    invoke-direct {v5, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$5;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 446
    .line 447
    .line 448
    :cond_5
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

    .line 449
    .line 450
    const-string v5, "blue_light_filter_off_time"

    .line 451
    .line 452
    const-string v6, "blue_light_filter_on_time"

    .line 453
    .line 454
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 455
    .line 456
    const-wide/16 v10, 0x1a4

    .line 457
    .line 458
    const/4 v12, -0x2

    .line 459
    const-wide/16 v13, 0x474

    .line 460
    .line 461
    const/4 v15, 0x2

    .line 462
    if-eqz v4, :cond_9

    .line 463
    .line 464
    iget-object v8, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mAdaptable:Landroid/widget/LinearLayout;

    .line 465
    .line 466
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    .line 468
    .line 469
    iget-object v8, v7, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 470
    .line 471
    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveBluelight()Z

    .line 472
    .line 473
    .line 474
    move-result v8

    .line 475
    if-eqz v8, :cond_6

    .line 476
    .line 477
    iget-object v8, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioAdaptive:Landroid/widget/RadioButton;

    .line 478
    .line 479
    invoke-virtual {v8, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 480
    .line 481
    .line 482
    iget-object v8, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustom:Landroid/widget/RadioButton;

    .line 483
    .line 484
    invoke-virtual {v8, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 485
    .line 486
    .line 487
    goto :goto_4

    .line 488
    :cond_6
    iget-object v8, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioAdaptive:Landroid/widget/RadioButton;

    .line 489
    .line 490
    invoke-virtual {v8, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 491
    .line 492
    .line 493
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustom:Landroid/widget/RadioButton;

    .line 494
    .line 495
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 496
    .line 497
    .line 498
    :goto_4
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustomSummary:Landroid/widget/TextView;

    .line 499
    .line 500
    iget-object v8, v7, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 501
    .line 502
    iget-object v8, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 503
    .line 504
    const-string v9, "blue_light_filter_type"

    .line 505
    .line 506
    invoke-virtual {v8, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 507
    .line 508
    .line 509
    move-result-object v8

    .line 510
    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 511
    .line 512
    .line 513
    move-result v8

    .line 514
    iget-object v7, v7, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 515
    .line 516
    if-ne v8, v2, :cond_7

    .line 517
    .line 518
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 519
    .line 520
    .line 521
    move-result-object v8

    .line 522
    invoke-static {v8, v6, v13, v14, v12}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    .line 523
    .line 524
    .line 525
    move-result-wide v8

    .line 526
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    invoke-static {v6, v5, v10, v11, v12}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    .line 531
    .line 532
    .line 533
    move-result-wide v5

    .line 534
    new-instance v10, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .line 538
    .line 539
    invoke-static {v7, v8, v9}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v8

    .line 543
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    const-string v8, " ~ "

    .line 547
    .line 548
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-static {v7, v5, v6}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    goto :goto_5

    .line 563
    :cond_7
    if-ne v8, v15, :cond_8

    .line 564
    .line 565
    const v8, 0x7f130228

    .line 566
    .line 567
    .line 568
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v5

    .line 572
    goto :goto_5

    .line 573
    :cond_8
    const v9, 0x7f130227

    .line 574
    .line 575
    .line 576
    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v5

    .line 580
    :goto_5
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    .line 582
    .line 583
    goto :goto_8

    .line 584
    :cond_9
    const v9, 0x7f130227

    .line 585
    .line 586
    .line 587
    iget-object v8, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mCustom:Landroid/widget/TextView;

    .line 588
    .line 589
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    .line 591
    .line 592
    iget-object v8, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mCustom:Landroid/widget/TextView;

    .line 593
    .line 594
    iget-object v9, v7, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 595
    .line 596
    iget-object v9, v9, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 597
    .line 598
    const-string v3, "blue_light_filter_type"

    .line 599
    .line 600
    invoke-virtual {v9, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 605
    .line 606
    .line 607
    move-result v3

    .line 608
    iget-object v7, v7, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 609
    .line 610
    if-ne v3, v2, :cond_a

    .line 611
    .line 612
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 613
    .line 614
    .line 615
    move-result-object v3

    .line 616
    invoke-static {v3, v6, v13, v14, v12}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    .line 617
    .line 618
    .line 619
    move-result-wide v13

    .line 620
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 621
    .line 622
    .line 623
    move-result-object v3

    .line 624
    invoke-static {v3, v5, v10, v11, v12}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    .line 625
    .line 626
    .line 627
    move-result-wide v5

    .line 628
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    invoke-static {v7, v13, v14}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v9

    .line 636
    invoke-static {v7, v5, v6}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v5

    .line 640
    filled-new-array {v9, v5}, [Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v5

    .line 644
    const v6, 0x7f13022a

    .line 645
    .line 646
    .line 647
    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    goto :goto_7

    .line 652
    :cond_a
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 653
    .line 654
    .line 655
    move-result-object v5

    .line 656
    new-array v6, v2, [Ljava/lang/Object;

    .line 657
    .line 658
    if-ne v3, v15, :cond_b

    .line 659
    .line 660
    const v3, 0x7f130228

    .line 661
    .line 662
    .line 663
    goto :goto_6

    .line 664
    :cond_b
    const v3, 0x7f130227

    .line 665
    .line 666
    .line 667
    :goto_6
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    const/4 v7, 0x0

    .line 672
    aput-object v3, v6, v7

    .line 673
    .line 674
    const v3, 0x7f130229

    .line 675
    .line 676
    .line 677
    invoke-virtual {v5, v3, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    :goto_7
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    .line 683
    .line 684
    :goto_8
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 685
    .line 686
    iget-object v3, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 687
    .line 688
    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 689
    .line 690
    iget-boolean v3, v3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 691
    .line 692
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->updateListener(Z)V

    .line 693
    .line 694
    .line 695
    const v3, 0x7f0a0160

    .line 696
    .line 697
    .line 698
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    check-cast v3, Landroidx/appcompat/widget/SeslSeekBar;

    .line 703
    .line 704
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    .line 705
    .line 706
    if-eq v3, v5, :cond_c

    .line 707
    .line 708
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 709
    .line 710
    iget-object v5, v5, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 711
    .line 712
    const-string v6, "blue_light_filter_opacity"

    .line 713
    .line 714
    invoke-virtual {v5, v6}, Lcom/android/systemui/util/SettingsHelper;->getBlueLightFilterMode(Ljava/lang/String;)I

    .line 715
    .line 716
    .line 717
    move-result v5

    .line 718
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    .line 719
    .line 720
    const/4 v6, 0x5

    .line 721
    invoke-virtual {v3, v6}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    .line 722
    .line 723
    .line 724
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    .line 725
    .line 726
    monitor-enter v3

    .line 727
    :try_start_0
    iget v6, v3, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    .line 728
    .line 729
    add-int/2addr v6, v2

    .line 730
    invoke-virtual {v3, v6}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    .line 732
    .line 733
    monitor-exit v3

    .line 734
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    .line 735
    .line 736
    const/16 v6, 0xa

    .line 737
    .line 738
    invoke-virtual {v3, v6}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 739
    .line 740
    .line 741
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    .line 742
    .line 743
    invoke-virtual {v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setSeamless()V

    .line 744
    .line 745
    .line 746
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    .line 747
    .line 748
    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 749
    .line 750
    .line 751
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 752
    .line 753
    iget-object v5, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 754
    .line 755
    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 756
    .line 757
    iget-boolean v5, v5, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 758
    .line 759
    iget-object v3, v3, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 760
    .line 761
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveBluelight()Z

    .line 762
    .line 763
    .line 764
    move-result v3

    .line 765
    and-int/2addr v3, v4

    .line 766
    xor-int/2addr v2, v3

    .line 767
    and-int/2addr v2, v5

    .line 768
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->updateSeekBarThumb(Z)V

    .line 769
    .line 770
    .line 771
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    .line 772
    .line 773
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mLevelChangedListener:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$6;

    .line 774
    .line 775
    iput-object v0, v2, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 776
    .line 777
    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$$ExternalSyntheticLambda0;

    .line 778
    .line 779
    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$$ExternalSyntheticLambda0;-><init>()V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 783
    .line 784
    .line 785
    goto :goto_9

    .line 786
    :catchall_0
    move-exception v0

    .line 787
    monitor-exit v3

    .line 788
    throw v0

    .line 789
    :cond_c
    :goto_9
    return-object v1
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x138e

    .line 2
    .line 3
    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->EYECOMFORT_SETTINGS:Landroid/content/Intent;

    .line 7
    .line 8
    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->EYECOMFORT_SETTINGS:Landroid/content/Intent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const v0, 0x7f130db6

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
    sget-object v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->EYECOMFORT_SETTINGS:Landroid/content/Intent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

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
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 6
    .line 7
    const-string v2, "location_mode"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    move v1, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v3

    .line 24
    :goto_0
    iget-object v4, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "blue_light_filter_type"

    .line 31
    .line 32
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 37
    .line 38
    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 39
    .line 40
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 41
    .line 42
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 43
    .line 44
    const/4 v7, 0x2

    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 48
    .line 49
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-eqz v8, :cond_1

    .line 54
    .line 55
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    invoke-virtual {v5, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_1

    .line 64
    .line 65
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    if-ne v4, v7, :cond_1

    .line 74
    .line 75
    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 76
    .line 77
    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 78
    .line 79
    iget-boolean v5, v5, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 80
    .line 81
    if-nez v5, :cond_1

    .line 82
    .line 83
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 84
    .line 85
    invoke-interface {v1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->forceCollapsePanels()V

    .line 86
    .line 87
    .line 88
    new-instance v1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$$ExternalSyntheticLambda1;

    .line 89
    .line 90
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;Z)V

    .line 91
    .line 92
    .line 93
    iget-object p0, v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 94
    .line 95
    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 100
    .line 101
    .line 102
    if-nez v1, :cond_4

    .line 103
    .line 104
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

    .line 105
    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveBluelight()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_4

    .line 113
    .line 114
    :cond_2
    if-ne v4, v7, :cond_4

    .line 115
    .line 116
    if-nez p1, :cond_3

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->setMode(Z)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->showLocationOnDialog(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->setMode(Z)V

    .line 127
    .line 128
    .line 129
    :goto_1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_NIGHT_DIM:Z

    .line 130
    .line 131
    if-nez v0, :cond_5

    .line 132
    .line 133
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

    .line 134
    .line 135
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveBluelight()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    and-int/2addr v0, v1

    .line 140
    xor-int/2addr v0, v2

    .line 141
    and-int/2addr v0, p1

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->updateSeekBarThumb(Z)V

    .line 143
    .line 144
    .line 145
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->updateListener(Z)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final updateListener(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustomContainer:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mCustomClickListener:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$2;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v2, v1

    .line 10
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustomContainer:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioAdaptiveContainer:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mAdaptiveClickListener:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$1;

    .line 23
    .line 24
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioAdaptiveContainer:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mDetailSummary:Landroid/widget/TextView;

    .line 33
    .line 34
    const/high16 v1, 0x3f800000    # 1.0f

    .line 35
    .line 36
    const v2, 0x3ecccccd    # 0.4f

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    move v3, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v3, v2

    .line 44
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mCustom:Landroid/widget/TextView;

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    move v3, v1

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move v3, v2

    .line 54
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mAdaptable:Landroid/widget/LinearLayout;

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    move v3, v1

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    move v3, v2

    .line 64
    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 65
    .line 66
    .line 67
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_NIGHT_DIM:Z

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mNightDimContainer:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mNightDimSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mNightDimContainer:Landroid/widget/LinearLayout;

    .line 84
    .line 85
    if-eqz p1, :cond_5

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_5
    move v1, v2

    .line 89
    :goto_4
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 90
    .line 91
    .line 92
    :cond_6
    return-void
.end method

.method public final updateSeekBarThumb(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSliderTitle:Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    sget-object p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->EYECOMFORT_SETTINGS:Landroid/content/Intent;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const p1, 0x7f0604f5

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    new-array p1, v1, [I

    .line 44
    .line 45
    filled-new-array {p1}, [[I

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 50
    .line 51
    filled-new-array {p0}, [I

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v1, p1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    sget-object p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->EYECOMFORT_SETTINGS:Landroid/content/Intent;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const p1, 0x7f060965

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    new-array p1, v1, [I

    .line 75
    .line 76
    filled-new-array {p1}, [[I

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 81
    .line 82
    filled-new-array {p0}, [I

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-direct {v1, p1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    return-void
.end method
