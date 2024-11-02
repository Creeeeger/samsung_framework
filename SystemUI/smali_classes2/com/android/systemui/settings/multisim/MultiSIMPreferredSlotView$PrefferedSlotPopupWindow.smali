.class public final Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;
.super Landroid/widget/PopupWindow;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mPopupContentView:Landroid/view/View;

.field public mPopupNonSelectedFont:Landroid/graphics/Typeface;

.field public mPopupNormalTextColor:I

.field public mPopupSelectedFont:Landroid/graphics/Typeface;

.field public mPopupSelectedTextColor:I

.field public mPopupWindowTopMargin:I

.field public mSlotListAskButtonGroup:Landroid/view/ViewGroup;

.field public mSlotListAskButtonText:Landroid/widget/TextView;

.field public mSlotListAskCheckedImage:Landroid/widget/ImageView;

.field public mSlotListButton1Group:Landroid/view/ViewGroup;

.field public mSlotListButton2Group:Landroid/view/ViewGroup;

.field public mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

.field public mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

.field public mSlotListButtonImage1:Landroid/widget/ImageView;

.field public mSlotListButtonImage2:Landroid/widget/ImageView;

.field public mSlotListButtonText1:Landroid/widget/TextView;

.field public mSlotListButtonText2:Landroid/widget/TextView;

.field public mSlotListCarrierName1:Landroid/widget/TextView;

.field public mSlotListCarrierName2:Landroid/widget/TextView;

.field public mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

.field public mSlotListOthersButtonText:Landroid/widget/TextView;

.field public mSlotListOthersCheckedImage:Landroid/widget/ImageView;

.field public mSlotListPhoneNumber1:Landroid/widget/TextView;

.field public mSlotListPhoneNumber2:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;Landroid/content/Context;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const v0, 0x7f070c42

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupWindowTopMargin:I

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const v0, 0x7f0605b7

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const v0, 0x7f0605b8

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    .line 47
    .line 48
    const-string/jumbo p1, "sec"

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/16 v3, 0x258

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-static {v2, v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iput-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedFont:Landroid/graphics/Typeface;

    .line 64
    .line 65
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const/16 v2, 0x190

    .line 70
    .line 71
    invoke-static {p1, v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 76
    .line 77
    const p1, 0x7f0d02dd

    .line 78
    .line 79
    .line 80
    invoke-static {p2, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 85
    .line 86
    const v1, 0x7f0a0a54

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroid/view/ViewGroup;

    .line 94
    .line 95
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    .line 96
    .line 97
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 98
    .line 99
    const v1, 0x7f0a0a59

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Landroid/widget/TextView;

    .line 107
    .line 108
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    .line 109
    .line 110
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 111
    .line 112
    const v1, 0x7f0a0a56

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Landroid/widget/ImageView;

    .line 120
    .line 121
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonImage1:Landroid/widget/ImageView;

    .line 122
    .line 123
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 124
    .line 125
    const v1, 0x7f0a0a55

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/widget/ImageView;

    .line 133
    .line 134
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    .line 135
    .line 136
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 137
    .line 138
    const v1, 0x7f0a0a57

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Landroid/widget/TextView;

    .line 146
    .line 147
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListCarrierName1:Landroid/widget/TextView;

    .line 148
    .line 149
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 150
    .line 151
    const v1, 0x7f0a0a58

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Landroid/widget/TextView;

    .line 159
    .line 160
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListPhoneNumber1:Landroid/widget/TextView;

    .line 161
    .line 162
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 163
    .line 164
    const v1, 0x7f0a0a5a

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Landroid/view/ViewGroup;

    .line 172
    .line 173
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    .line 174
    .line 175
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 176
    .line 177
    const v1, 0x7f0a0a5f

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Landroid/widget/TextView;

    .line 185
    .line 186
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    .line 187
    .line 188
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 189
    .line 190
    const v1, 0x7f0a0a5c

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast p1, Landroid/widget/ImageView;

    .line 198
    .line 199
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonImage2:Landroid/widget/ImageView;

    .line 200
    .line 201
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 202
    .line 203
    const v1, 0x7f0a0a5b

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    check-cast p1, Landroid/widget/ImageView;

    .line 211
    .line 212
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    .line 213
    .line 214
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 215
    .line 216
    const v1, 0x7f0a0a5d

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    check-cast p1, Landroid/widget/TextView;

    .line 224
    .line 225
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListCarrierName2:Landroid/widget/TextView;

    .line 226
    .line 227
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 228
    .line 229
    const v1, 0x7f0a0a5e

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    check-cast p1, Landroid/widget/TextView;

    .line 237
    .line 238
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListPhoneNumber2:Landroid/widget/TextView;

    .line 239
    .line 240
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 241
    .line 242
    const v1, 0x7f0a00fa

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    check-cast p1, Landroid/view/ViewGroup;

    .line 250
    .line 251
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    .line 252
    .line 253
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 254
    .line 255
    const v1, 0x7f0a00fc

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    check-cast p1, Landroid/widget/TextView;

    .line 263
    .line 264
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonText:Landroid/widget/TextView;

    .line 265
    .line 266
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 267
    .line 268
    const v1, 0x7f0a00fb

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    check-cast p1, Landroid/widget/ImageView;

    .line 276
    .line 277
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskCheckedImage:Landroid/widget/ImageView;

    .line 278
    .line 279
    invoke-static {}, Lcom/android/systemui/Operator;->isChinaQsTileBranding()Z

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    if-nez p1, :cond_2

    .line 284
    .line 285
    sget-boolean p1, Lcom/android/systemui/Operator;->QUICK_IS_BRI_BRANDING:Z

    .line 286
    .line 287
    if-nez p1, :cond_1

    .line 288
    .line 289
    sget-boolean p1, Lcom/android/systemui/Operator;->QUICK_IS_TGY_BRANDING:Z

    .line 290
    .line 291
    if-eqz p1, :cond_0

    .line 292
    .line 293
    goto :goto_0

    .line 294
    :cond_0
    move p1, v4

    .line 295
    goto :goto_1

    .line 296
    :cond_1
    :goto_0
    move p1, v0

    .line 297
    :goto_1
    if-eqz p1, :cond_3

    .line 298
    .line 299
    :cond_2
    move v4, v0

    .line 300
    :cond_3
    if-eqz v4, :cond_4

    .line 301
    .line 302
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonText:Landroid/widget/TextView;

    .line 303
    .line 304
    const v1, 0x7f130d3b

    .line 305
    .line 306
    .line 307
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    goto :goto_2

    .line 315
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonText:Landroid/widget/TextView;

    .line 316
    .line 317
    const v1, 0x7f130d38

    .line 318
    .line 319
    .line 320
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    .line 326
    .line 327
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 328
    .line 329
    const v1, 0x7f0a07a0

    .line 330
    .line 331
    .line 332
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    check-cast p1, Landroid/view/ViewGroup;

    .line 337
    .line 338
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

    .line 339
    .line 340
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 341
    .line 342
    const v1, 0x7f0a07a2

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    check-cast p1, Landroid/widget/TextView;

    .line 350
    .line 351
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonText:Landroid/widget/TextView;

    .line 352
    .line 353
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 354
    .line 355
    const v1, 0x7f0a07a1

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    check-cast p1, Landroid/widget/ImageView;

    .line 363
    .line 364
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersCheckedImage:Landroid/widget/ImageView;

    .line 365
    .line 366
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 367
    .line 368
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 369
    .line 370
    .line 371
    const/4 p1, -0x2

    .line 372
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    const v0, 0x7f080dba

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    const p2, 0x7f070c34

    .line 400
    .line 401
    .line 402
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 407
    .line 408
    .line 409
    const/4 p1, 0x2

    .line 410
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->updateSlotListPopupContents()V

    .line 414
    .line 415
    .line 416
    return-void
.end method


# virtual methods
.method public final setSlotListMenuColor(II)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListCarrierName2:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListPhoneNumber2:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListCarrierName1:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListPhoneNumber1:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final setSlotListMenuFont(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$2;->$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq p1, v2, :cond_2

    .line 13
    .line 14
    if-eq p1, v1, :cond_0

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    if-nez p2, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    .line 23
    .line 24
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedFont:Landroid/graphics/Typeface;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    .line 39
    .line 40
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedFont:Landroid/graphics/Typeface;

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_2
    if-nez p2, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonText:Landroid/widget/TextView;

    .line 57
    .line 58
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    .line 64
    .line 65
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    .line 71
    .line 72
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonText:Landroid/widget/TextView;

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    if-ne p2, v2, :cond_4

    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonText:Landroid/widget/TextView;

    .line 88
    .line 89
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    .line 95
    .line 96
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedFont:Landroid/graphics/Typeface;

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    .line 102
    .line 103
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonText:Landroid/widget/TextView;

    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 111
    .line 112
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    if-ne p2, v1, :cond_5

    .line 117
    .line 118
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonText:Landroid/widget/TextView;

    .line 119
    .line 120
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    .line 126
    .line 127
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    .line 133
    .line 134
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedFont:Landroid/graphics/Typeface;

    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonText:Landroid/widget/TextView;

    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 142
    .line 143
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_5
    if-ne p2, v0, :cond_6

    .line 148
    .line 149
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonText:Landroid/widget/TextView;

    .line 150
    .line 151
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    .line 157
    .line 158
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 159
    .line 160
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    .line 164
    .line 165
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonText:Landroid/widget/TextView;

    .line 171
    .line 172
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedFont:Landroid/graphics/Typeface;

    .line 173
    .line 174
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 175
    .line 176
    .line 177
    :cond_6
    :goto_0
    return-void
.end method

.method public final updateSlotListPopupContents()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonImage1:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->-$$Nest$mgetSimIcon(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 20
    .line 21
    aget-object v1, v1, v2

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListCarrierName1:Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    .line 33
    .line 34
    aget-object v1, v1, v2

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListPhoneNumber1:Landroid/widget/TextView;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 46
    .line 47
    aget-object v1, v1, v2

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonImage2:Landroid/widget/ImageView;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-static {v1, v2}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->-$$Nest$mgetSimIcon(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;I)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 71
    .line 72
    aget-object v1, v1, v2

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListCarrierName2:Landroid/widget/TextView;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 82
    .line 83
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    .line 84
    .line 85
    aget-object v1, v1, v2

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListPhoneNumber2:Landroid/widget/TextView;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 97
    .line 98
    aget-object p0, p0, v2

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
