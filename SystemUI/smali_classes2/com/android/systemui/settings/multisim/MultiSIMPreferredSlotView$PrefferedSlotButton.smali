.class public final Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mButtonView:Landroid/view/ViewGroup;

.field public mCarrierNameText:Landroid/widget/TextView;

.field public mCategoryText:Landroid/widget/TextView;

.field public final mContext:Landroid/content/Context;

.field public mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

.field public mImsDataInfoLine:Landroid/view/ViewGroup;

.field public mSimImageForDataInfo:Landroid/widget/ImageView;

.field public mSimImageForSimName:Landroid/widget/ImageView;

.field public mSimNameAndImageLine:Landroid/view/ViewGroup;

.field public mSimNameOrAskText:Landroid/widget/TextView;

.field public mSimNameText:Landroid/widget/TextView;

.field public final mSimSlotId:I

.field public mTextSimPrimary:Landroid/widget/TextView;

.field public final mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iput-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 10
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static/range {p3 .. p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const v5, 0x7f0d02dc

    .line 19
    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Landroid/view/ViewGroup;

    .line 28
    .line 29
    iput-object v4, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    .line 30
    .line 31
    iput-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 32
    .line 33
    sget-object v5, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO2:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    if-ne v2, v5, :cond_0

    .line 37
    .line 38
    iput v6, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimSlotId:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iput v7, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimSlotId:I

    .line 42
    .line 43
    :goto_0
    iput-object v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const v5, 0x7f0a0a64

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Landroid/view/ViewGroup;

    .line 53
    .line 54
    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mImsDataInfoLine:Landroid/view/ViewGroup;

    .line 55
    .line 56
    const v5, 0x7f0a0a68

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Landroid/view/ViewGroup;

    .line 64
    .line 65
    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    .line 66
    .line 67
    const v5, 0x7f0a0a62

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCategoryText:Landroid/widget/TextView;

    .line 77
    .line 78
    const v5, 0x7f0a0a6b

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Landroid/widget/TextView;

    .line 86
    .line 87
    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameText:Landroid/widget/TextView;

    .line 88
    .line 89
    const v5, 0x7f0a0a61

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    .line 99
    .line 100
    const v5, 0x7f0a0a65

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    check-cast v5, Landroid/widget/ImageView;

    .line 108
    .line 109
    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForDataInfo:Landroid/widget/ImageView;

    .line 110
    .line 111
    const v5, 0x7f0a0a66

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    check-cast v5, Landroid/widget/ImageView;

    .line 119
    .line 120
    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    .line 121
    .line 122
    const v5, 0x7f0a0a6a

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Landroid/widget/TextView;

    .line 130
    .line 131
    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    .line 132
    .line 133
    const v5, 0x7f0a0a67

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    check-cast v5, Landroid/widget/TextView;

    .line 141
    .line 142
    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mTextSimPrimary:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->isSimInfoButton()Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-eqz v5, :cond_1

    .line 149
    .line 150
    const v5, 0x7f0a0a60

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    move-object v9, v5

    .line 158
    check-cast v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 159
    .line 160
    iput-boolean v7, v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    .line 161
    .line 162
    const-class v5, Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 163
    .line 164
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    check-cast v5, Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 169
    .line 170
    iget-object v5, v5, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSIMInfoIconManagerFactory:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;

    .line 171
    .line 172
    sget-object v10, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->HOME:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    .line 173
    .line 174
    iget v15, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimSlotId:I

    .line 175
    .line 176
    new-instance v14, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    .line 177
    .line 178
    iget-object v11, v5, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;->mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    .line 179
    .line 180
    iget-object v12, v5, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;->mWifiUiAdapter:Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;

    .line 181
    .line 182
    iget-object v13, v5, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;->mMobileUiAdapter:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;

    .line 183
    .line 184
    iget-object v8, v5, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;->mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    .line 185
    .line 186
    iget-object v5, v5, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;->mBtTetherUiAdapter:Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;

    .line 187
    .line 188
    move-object/from16 v16, v8

    .line 189
    .line 190
    move-object v8, v14

    .line 191
    move-object v7, v14

    .line 192
    move-object/from16 v14, v16

    .line 193
    .line 194
    move/from16 v16, v15

    .line 195
    .line 196
    move-object v15, v5

    .line 197
    invoke-direct/range {v8 .. v16}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;I)V

    .line 198
    .line 199
    .line 200
    iput-object v7, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    .line 201
    .line 202
    iget-object v5, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 203
    .line 204
    const/4 v8, 0x0

    .line 205
    invoke-virtual {v5, v8}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 210
    .line 211
    .line 212
    :cond_1
    iget-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCategoryText:Landroid/widget/TextView;

    .line 213
    .line 214
    sget-object v7, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$2;->$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType:[I

    .line 215
    .line 216
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    aget v2, v7, v2

    .line 221
    .line 222
    if-eq v2, v6, :cond_4

    .line 223
    .line 224
    const/4 v6, 0x2

    .line 225
    if-eq v2, v6, :cond_3

    .line 226
    .line 227
    const/4 v6, 0x3

    .line 228
    if-eq v2, v6, :cond_2

    .line 229
    .line 230
    const-string v2, ""

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_2
    const v2, 0x7f130d30

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    goto :goto_1

    .line 241
    :cond_3
    const v2, 0x7f130d36

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    goto :goto_1

    .line 249
    :cond_4
    const v2, 0x7f130d3a

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->refreshSlotInfo()V

    .line 263
    .line 264
    .line 265
    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;

    .line 266
    .line 267
    const/4 v3, 0x0

    .line 268
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda1;

    .line 275
    .line 276
    invoke-direct {v2, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->isSimInfoButton()Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eqz v2, :cond_5

    .line 287
    .line 288
    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$1;

    .line 289
    .line 290
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$1;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 294
    .line 295
    .line 296
    :cond_5
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 297
    .line 298
    const/4 v1, -0x1

    .line 299
    const/high16 v2, 0x3f800000    # 1.0f

    .line 300
    .line 301
    const/4 v3, 0x0

    .line 302
    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 303
    .line 304
    .line 305
    move-object/from16 v1, p4

    .line 306
    .line 307
    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    .line 309
    .line 310
    return-void
.end method


# virtual methods
.method public final isSimInfoButton()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/Operator;->supportNetworkInfoAtMultisimBar()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO1:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO2:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final refreshSlotInfo()V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$2;->$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    aget v0, v0, v2

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-eq v0, v2, :cond_2

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    if-eq v0, v5, :cond_1

    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    if-eq v0, v5, :cond_0

    .line 22
    .line 23
    const/4 v5, 0x4

    .line 24
    if-eq v0, v5, :cond_0

    .line 25
    .line 26
    const/4 v5, 0x5

    .line 27
    if-eq v0, v5, :cond_0

    .line 28
    .line 29
    move v0, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 32
    .line 33
    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 37
    .line 38
    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 42
    .line 43
    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 44
    .line 45
    :goto_0
    sget-object v5, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 46
    .line 47
    if-ne v1, v5, :cond_3

    .line 48
    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    if-ltz v0, :cond_4

    .line 53
    .line 54
    if-le v0, v2, :cond_5

    .line 55
    .line 56
    :cond_4
    move v0, v4

    .line 57
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    const/16 v7, 0x8

    .line 60
    .line 61
    if-ne v1, v5, :cond_b

    .line 62
    .line 63
    if-gez v0, :cond_b

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    .line 66
    .line 67
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/android/systemui/Operator;->isChinaQsTileBranding()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_9

    .line 75
    .line 76
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_BRI_BRANDING:Z

    .line 77
    .line 78
    if-nez v0, :cond_7

    .line 79
    .line 80
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_TGY_BRANDING:Z

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_6
    move v0, v4

    .line 86
    goto :goto_3

    .line 87
    :cond_7
    :goto_2
    move v0, v2

    .line 88
    :goto_3
    if-eqz v0, :cond_8

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_8
    move v2, v4

    .line 92
    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    .line 95
    .line 96
    const v1, 0x7f130d3b

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    .line 108
    .line 109
    const v1, 0x7f130d38

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    .line 125
    .line 126
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_8

    .line 130
    .line 131
    :cond_b
    if-ne v1, v5, :cond_c

    .line 132
    .line 133
    if-le v0, v2, :cond_c

    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    .line 136
    .line 137
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    .line 141
    .line 142
    const v1, 0x7f130d39

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    .line 153
    .line 154
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    .line 158
    .line 159
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_8

    .line 163
    .line 164
    :cond_c
    sget-object v8, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 165
    .line 166
    if-ne v1, v8, :cond_d

    .line 167
    .line 168
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    xor-int/2addr v2, v9

    .line 173
    if-eqz v2, :cond_d

    .line 174
    .line 175
    iget-object v2, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 176
    .line 177
    iget-boolean v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 178
    .line 179
    if-nez v2, :cond_d

    .line 180
    .line 181
    iget-boolean v2, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    .line 182
    .line 183
    if-nez v2, :cond_d

    .line 184
    .line 185
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    .line 186
    .line 187
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    .line 191
    .line 192
    const v1, 0x7f130d32

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    .line 203
    .line 204
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    .line 208
    .line 209
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_8

    .line 213
    .line 214
    :cond_d
    if-ne v1, v8, :cond_e

    .line 215
    .line 216
    iget-object v2, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 217
    .line 218
    iget-object v6, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 219
    .line 220
    iget v6, v6, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 221
    .line 222
    invoke-virtual {v2, v6}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataBlocked(I)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_e

    .line 227
    .line 228
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    .line 229
    .line 230
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    .line 234
    .line 235
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    .line 239
    .line 240
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_8

    .line 244
    .line 245
    :cond_e
    if-eq v1, v5, :cond_11

    .line 246
    .line 247
    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 248
    .line 249
    if-eq v1, v2, :cond_11

    .line 250
    .line 251
    if-ne v1, v8, :cond_f

    .line 252
    .line 253
    goto :goto_7

    .line 254
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mImsDataInfoLine:Landroid/view/ViewGroup;

    .line 255
    .line 256
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 257
    .line 258
    .line 259
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCategoryText:Landroid/widget/TextView;

    .line 260
    .line 261
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForDataInfo:Landroid/widget/ImageView;

    .line 265
    .line 266
    iget v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimSlotId:I

    .line 267
    .line 268
    invoke-static {v3, v2}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->-$$Nest$mgetSimIcon(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;I)I

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    .line 274
    .line 275
    if-ne v2, v0, :cond_10

    .line 276
    .line 277
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mTextSimPrimary:Landroid/widget/TextView;

    .line 278
    .line 279
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mTextSimPrimary:Landroid/widget/TextView;

    .line 284
    .line 285
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    .line 287
    .line 288
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    .line 289
    .line 290
    iget-object v1, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 291
    .line 292
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 293
    .line 294
    aget-object v1, v1, v2

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    .line 299
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    .line 300
    .line 301
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    .line 303
    .line 304
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    .line 305
    .line 306
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    .line 310
    .line 311
    iget-object v1, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 312
    .line 313
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    .line 314
    .line 315
    aget-object v1, v1, v2

    .line 316
    .line 317
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    .line 319
    .line 320
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    .line 321
    .line 322
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    .line 324
    .line 325
    goto :goto_8

    .line 326
    :cond_11
    :goto_7
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    .line 327
    .line 328
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    .line 330
    .line 331
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    .line 332
    .line 333
    invoke-static {v3, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->-$$Nest$mgetSimIcon(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;I)I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 338
    .line 339
    .line 340
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameText:Landroid/widget/TextView;

    .line 341
    .line 342
    iget-object v2, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 343
    .line 344
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 345
    .line 346
    aget-object v2, v2, v0

    .line 347
    .line 348
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    .line 352
    .line 353
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 354
    .line 355
    .line 356
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    .line 357
    .line 358
    iget-object v2, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 359
    .line 360
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    .line 361
    .line 362
    aget-object v0, v2, v0

    .line 363
    .line 364
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    .line 366
    .line 367
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    .line 368
    .line 369
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    .line 371
    .line 372
    :goto_8
    return-void
.end method

.method public final updateTextColor()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCategoryText:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 4
    .line 5
    iget v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonTextColor:I

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameText:Landroid/widget/TextView;

    .line 11
    .line 12
    iget v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonTextColor:I

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    .line 18
    .line 19
    iget v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonTextColor:I

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    .line 25
    .line 26
    iget v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonTextColor:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->isSimInfoButton()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v2, v3}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCategoryText:Landroid/widget/TextView;

    .line 52
    .line 53
    const v2, 0x3f3d70a4    # 0.74f

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 62
    .line 63
    iget-object v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    .line 64
    .line 65
    if-ne v3, v0, :cond_1

    .line 66
    .line 67
    iget-boolean v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    .line 68
    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 72
    .line 73
    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    .line 74
    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    :cond_1
    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 78
    .line 79
    iget-boolean v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    .line 80
    .line 81
    if-nez v1, :cond_3

    .line 82
    .line 83
    iget-boolean v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    .line 84
    .line 85
    if-nez v1, :cond_3

    .line 86
    .line 87
    iget-boolean v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    .line 88
    .line 89
    if-nez v1, :cond_3

    .line 90
    .line 91
    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    .line 92
    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameText:Landroid/widget/TextView;

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameText:Landroid/widget/TextView;

    .line 118
    .line 119
    const v1, 0x3eb33333    # 0.35f

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 138
    .line 139
    .line 140
    if-eqz v4, :cond_4

    .line 141
    .line 142
    const/4 v0, 0x0

    .line 143
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 144
    .line 145
    .line 146
    const/4 v0, 0x0

    .line 147
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    .line 149
    .line 150
    :cond_4
    :goto_1
    if-eqz v4, :cond_8

    .line 151
    .line 152
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$2;->$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType:[I

    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    aget v0, v0, v1

    .line 159
    .line 160
    const/4 v1, 0x1

    .line 161
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    .line 162
    .line 163
    if-eq v0, v1, :cond_7

    .line 164
    .line 165
    const/4 v1, 0x2

    .line 166
    if-eq v0, v1, :cond_6

    .line 167
    .line 168
    const/4 v1, 0x3

    .line 169
    if-eq v0, v1, :cond_5

    .line 170
    .line 171
    const/4 v1, 0x4

    .line 172
    if-eq v0, v1, :cond_7

    .line 173
    .line 174
    const/4 v1, 0x5

    .line 175
    if-eq v0, v1, :cond_5

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    const v0, 0x7f080db6

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    const v0, 0x7f080db8

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    const v0, 0x7f080db5

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 220
    .line 221
    .line 222
    :cond_8
    :goto_2
    return-void
.end method
