.class public final synthetic Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x2

    .line 8
    const/16 v5, 0x8

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_19

    .line 15
    .line 16
    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 23
    .line 24
    iget v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 29
    .line 30
    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 31
    .line 32
    invoke-virtual {v1, v2, v6}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    .line 41
    .line 42
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_1
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 54
    .line 55
    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 56
    .line 57
    iget v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 58
    .line 59
    if-eq v3, v2, :cond_1

    .line 60
    .line 61
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 62
    .line 63
    sget-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 64
    .line 65
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskCheckedImage:Landroid/widget/ImageView;

    .line 69
    .line 70
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    .line 74
    .line 75
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    .line 79
    .line 80
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersCheckedImage:Landroid/widget/ImageView;

    .line 84
    .line 85
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_2
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 95
    .line 96
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 97
    .line 98
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 99
    .line 100
    iget v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 101
    .line 102
    if-eq v2, v4, :cond_2

    .line 103
    .line 104
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 105
    .line 106
    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 107
    .line 108
    invoke-virtual {v1, v2, v4}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskCheckedImage:Landroid/widget/ImageView;

    .line 112
    .line 113
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    .line 117
    .line 118
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    .line 122
    .line 123
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersCheckedImage:Landroid/widget/ImageView;

    .line 127
    .line 128
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    :cond_2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_3
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 138
    .line 139
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 140
    .line 141
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 142
    .line 143
    iget v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 144
    .line 145
    if-eq v2, v3, :cond_3

    .line 146
    .line 147
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 148
    .line 149
    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 150
    .line 151
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskCheckedImage:Landroid/widget/ImageView;

    .line 155
    .line 156
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    .line 160
    .line 161
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    .line 165
    .line 166
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersCheckedImage:Landroid/widget/ImageView;

    .line 170
    .line 171
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    :cond_3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :pswitch_4
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 181
    .line 182
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 183
    .line 184
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 185
    .line 186
    iget v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 187
    .line 188
    if-eqz v2, :cond_4

    .line 189
    .line 190
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 191
    .line 192
    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 193
    .line 194
    invoke-virtual {v1, v2, v6}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskCheckedImage:Landroid/widget/ImageView;

    .line 198
    .line 199
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    .line 201
    .line 202
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    .line 203
    .line 204
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    .line 208
    .line 209
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    .line 211
    .line 212
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersCheckedImage:Landroid/widget/ImageView;

    .line 213
    .line 214
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    .line 216
    .line 217
    :cond_4
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :pswitch_5
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    .line 224
    .line 225
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 226
    .line 227
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 228
    .line 229
    iget-boolean v8, v7, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    .line 230
    .line 231
    iget-object v9, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    .line 232
    .line 233
    if-eqz v8, :cond_5

    .line 234
    .line 235
    const v0, 0x7f130d2f

    .line 236
    .line 237
    .line 238
    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {v9, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_18

    .line 250
    .line 251
    :cond_5
    sget-object v8, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 252
    .line 253
    iget-object v10, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 254
    .line 255
    if-ne v10, v8, :cond_6

    .line 256
    .line 257
    iget-boolean v11, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    .line 258
    .line 259
    if-eqz v11, :cond_6

    .line 260
    .line 261
    const v0, 0x7f130d31

    .line 262
    .line 263
    .line 264
    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-static {v9, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_18

    .line 276
    .line 277
    :cond_6
    if-ne v10, v8, :cond_7

    .line 278
    .line 279
    iget-boolean v8, v7, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    .line 280
    .line 281
    if-nez v8, :cond_2f

    .line 282
    .line 283
    :cond_7
    iget-boolean v8, v7, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    .line 284
    .line 285
    if-nez v8, :cond_2f

    .line 286
    .line 287
    iget-boolean v8, v7, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    .line 288
    .line 289
    if-nez v8, :cond_2f

    .line 290
    .line 291
    iget-boolean v7, v7, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    .line 292
    .line 293
    if-eqz v7, :cond_8

    .line 294
    .line 295
    goto/16 :goto_18

    .line 296
    .line 297
    :cond_8
    const-class v7, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 298
    .line 299
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 304
    .line 305
    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 306
    .line 307
    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 308
    .line 309
    if-eqz v8, :cond_9

    .line 310
    .line 311
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 316
    .line 317
    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 318
    .line 319
    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 320
    .line 321
    if-eqz v8, :cond_9

    .line 322
    .line 323
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 328
    .line 329
    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 330
    .line 331
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 332
    .line 333
    if-nez v7, :cond_9

    .line 334
    .line 335
    const-class v7, Lcom/android/systemui/util/SettingsHelper;

    .line 336
    .line 337
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    check-cast v7, Lcom/android/systemui/util/SettingsHelper;

    .line 342
    .line 343
    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 344
    .line 345
    .line 346
    move-result v7

    .line 347
    if-eqz v7, :cond_9

    .line 348
    .line 349
    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 350
    .line 351
    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->launchSimManager()V

    .line 352
    .line 353
    .line 354
    goto/16 :goto_18

    .line 355
    .line 356
    :cond_9
    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->isSimInfoButton()Z

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    if-eqz v7, :cond_a

    .line 361
    .line 362
    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 363
    .line 364
    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->launchSimManager()V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_18

    .line 368
    .line 369
    :cond_a
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 370
    .line 371
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    invoke-static {}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isBlockedAllMultiSimBar()Z

    .line 375
    .line 376
    .line 377
    move-result v7

    .line 378
    if-eqz v7, :cond_b

    .line 379
    .line 380
    goto/16 :goto_18

    .line 381
    .line 382
    :cond_b
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 383
    .line 384
    if-nez v7, :cond_c

    .line 385
    .line 386
    new-instance v7, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 387
    .line 388
    iget-object v8, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 389
    .line 390
    invoke-direct {v7, v1, v8}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;Landroid/content/Context;)V

    .line 391
    .line 392
    .line 393
    iput-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 394
    .line 395
    :cond_c
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 396
    .line 397
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    .line 401
    .line 402
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 403
    .line 404
    .line 405
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    .line 406
    .line 407
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 408
    .line 409
    .line 410
    sget-object v7, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$2;->$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType:[I

    .line 411
    .line 412
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 413
    .line 414
    .line 415
    move-result v8

    .line 416
    aget v7, v7, v8

    .line 417
    .line 418
    const/4 v8, 0x4

    .line 419
    const-string v9, "QUICK_PANEL_LAYOUT"

    .line 420
    .line 421
    const-string v11, "isChanged"

    .line 422
    .line 423
    const-string v12, "QPPE1016"

    .line 424
    .line 425
    if-eq v7, v3, :cond_18

    .line 426
    .line 427
    if-eq v7, v4, :cond_13

    .line 428
    .line 429
    if-eq v7, v2, :cond_d

    .line 430
    .line 431
    goto/16 :goto_d

    .line 432
    .line 433
    :cond_d
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 434
    .line 435
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 436
    .line 437
    invoke-virtual {v2, v6}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataBlocked(I)Z

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 442
    .line 443
    iget-object v7, v7, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 444
    .line 445
    invoke-virtual {v7, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataBlocked(I)Z

    .line 446
    .line 447
    .line 448
    move-result v7

    .line 449
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    .line 450
    .line 451
    new-instance v14, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda0;

    .line 452
    .line 453
    invoke-direct {v14, v1, v2, v0, v6}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;ZLcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;I)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    .line 458
    .line 459
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    .line 460
    .line 461
    new-instance v14, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda0;

    .line 462
    .line 463
    invoke-direct {v14, v1, v7, v0, v3}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;ZLcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    .line 468
    .line 469
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 470
    .line 471
    iget-object v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 472
    .line 473
    iget-boolean v14, v13, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 474
    .line 475
    if-nez v14, :cond_e

    .line 476
    .line 477
    iget v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    .line 478
    .line 479
    invoke-virtual {v1, v6, v13}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    .line 480
    .line 481
    .line 482
    iget v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    .line 483
    .line 484
    invoke-virtual {v1, v3, v13}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    .line 485
    .line 486
    .line 487
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    .line 488
    .line 489
    iget-object v14, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 490
    .line 491
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 492
    .line 493
    .line 494
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    .line 495
    .line 496
    iget-object v14, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    .line 497
    .line 498
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 499
    .line 500
    .line 501
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    .line 502
    .line 503
    invoke-virtual {v13, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 504
    .line 505
    .line 506
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    .line 507
    .line 508
    invoke-virtual {v13, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    .line 510
    .line 511
    goto :goto_0

    .line 512
    :cond_e
    iget v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 513
    .line 514
    if-nez v13, :cond_f

    .line 515
    .line 516
    iget v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    .line 517
    .line 518
    invoke-virtual {v1, v6, v13}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    .line 519
    .line 520
    .line 521
    iget v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    .line 522
    .line 523
    invoke-virtual {v1, v3, v13}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    .line 524
    .line 525
    .line 526
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 527
    .line 528
    iget-object v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 529
    .line 530
    iget v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 531
    .line 532
    invoke-virtual {v1, v10, v13}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuFont(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    .line 533
    .line 534
    .line 535
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    .line 536
    .line 537
    invoke-virtual {v13, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    .line 539
    .line 540
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    .line 541
    .line 542
    invoke-virtual {v13, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 543
    .line 544
    .line 545
    goto :goto_0

    .line 546
    :cond_f
    if-ne v13, v3, :cond_10

    .line 547
    .line 548
    iget v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    .line 549
    .line 550
    invoke-virtual {v1, v6, v13}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    .line 551
    .line 552
    .line 553
    iget v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    .line 554
    .line 555
    invoke-virtual {v1, v3, v13}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    .line 556
    .line 557
    .line 558
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 559
    .line 560
    iget-object v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 561
    .line 562
    iget v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 563
    .line 564
    invoke-virtual {v1, v10, v13}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuFont(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    .line 565
    .line 566
    .line 567
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    .line 568
    .line 569
    invoke-virtual {v13, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 570
    .line 571
    .line 572
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    .line 573
    .line 574
    invoke-virtual {v13, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    .line 576
    .line 577
    :cond_10
    :goto_0
    if-eqz v2, :cond_11

    .line 578
    .line 579
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    .line 580
    .line 581
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 582
    .line 583
    .line 584
    :cond_11
    if-eqz v7, :cond_12

    .line 585
    .line 586
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    .line 587
    .line 588
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 589
    .line 590
    .line 591
    :cond_12
    sget-object v2, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 592
    .line 593
    const-string v7, "mobile data"

    .line 594
    .line 595
    invoke-static {v2, v12, v11, v7, v9}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_d

    .line 599
    .line 600
    :cond_13
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    .line 601
    .line 602
    new-instance v7, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;

    .line 603
    .line 604
    const/4 v13, 0x5

    .line 605
    invoke-direct {v7, v1, v13}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    .line 610
    .line 611
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    .line 612
    .line 613
    new-instance v7, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;

    .line 614
    .line 615
    const/4 v13, 0x6

    .line 616
    invoke-direct {v7, v1, v13}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    .line 621
    .line 622
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 623
    .line 624
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 625
    .line 626
    iget v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 627
    .line 628
    if-ne v2, v3, :cond_14

    .line 629
    .line 630
    iget v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    .line 631
    .line 632
    goto :goto_1

    .line 633
    :cond_14
    iget v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    .line 634
    .line 635
    :goto_1
    invoke-virtual {v1, v6, v2}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    .line 636
    .line 637
    .line 638
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 639
    .line 640
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 641
    .line 642
    iget v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 643
    .line 644
    if-ne v2, v3, :cond_15

    .line 645
    .line 646
    iget v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    .line 647
    .line 648
    goto :goto_2

    .line 649
    :cond_15
    iget v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    .line 650
    .line 651
    :goto_2
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    .line 652
    .line 653
    .line 654
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 655
    .line 656
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 657
    .line 658
    iget v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 659
    .line 660
    invoke-virtual {v1, v10, v2}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuFont(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    .line 661
    .line 662
    .line 663
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    .line 664
    .line 665
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 666
    .line 667
    iget-object v7, v7, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 668
    .line 669
    iget v7, v7, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 670
    .line 671
    if-nez v7, :cond_16

    .line 672
    .line 673
    move v7, v6

    .line 674
    goto :goto_3

    .line 675
    :cond_16
    move v7, v5

    .line 676
    :goto_3
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    .line 678
    .line 679
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    .line 680
    .line 681
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 682
    .line 683
    iget-object v7, v7, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 684
    .line 685
    iget v7, v7, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 686
    .line 687
    if-ne v7, v3, :cond_17

    .line 688
    .line 689
    move v7, v6

    .line 690
    goto :goto_4

    .line 691
    :cond_17
    move v7, v5

    .line 692
    :goto_4
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 693
    .line 694
    .line 695
    sget-object v2, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 696
    .line 697
    const-string/jumbo v7, "text messages"

    .line 698
    .line 699
    .line 700
    invoke-static {v2, v12, v11, v7, v9}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    goto/16 :goto_d

    .line 704
    .line 705
    :cond_18
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    .line 706
    .line 707
    new-instance v13, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;

    .line 708
    .line 709
    invoke-direct {v13, v1, v3}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    .line 714
    .line 715
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    .line 716
    .line 717
    new-instance v13, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;

    .line 718
    .line 719
    invoke-direct {v13, v1, v4}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    .line 724
    .line 725
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    .line 726
    .line 727
    new-instance v13, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;

    .line 728
    .line 729
    invoke-direct {v13, v1, v2}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    .line 734
    .line 735
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

    .line 736
    .line 737
    new-instance v13, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;

    .line 738
    .line 739
    invoke-direct {v13, v1, v8}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    .line 744
    .line 745
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 746
    .line 747
    iget-object v7, v7, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 748
    .line 749
    iget v7, v7, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 750
    .line 751
    invoke-virtual {v1, v10, v7}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuFont(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    .line 752
    .line 753
    .line 754
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonText:Landroid/widget/TextView;

    .line 755
    .line 756
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 757
    .line 758
    iget-object v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 759
    .line 760
    iget v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 761
    .line 762
    if-nez v13, :cond_19

    .line 763
    .line 764
    iget v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    .line 765
    .line 766
    goto :goto_5

    .line 767
    :cond_19
    iget v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    .line 768
    .line 769
    :goto_5
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 770
    .line 771
    .line 772
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 773
    .line 774
    iget-object v7, v7, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 775
    .line 776
    iget v7, v7, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 777
    .line 778
    if-ne v7, v3, :cond_1a

    .line 779
    .line 780
    iget v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    .line 781
    .line 782
    goto :goto_6

    .line 783
    :cond_1a
    iget v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    .line 784
    .line 785
    :goto_6
    invoke-virtual {v1, v6, v7}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    .line 786
    .line 787
    .line 788
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 789
    .line 790
    iget-object v7, v7, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 791
    .line 792
    iget v7, v7, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 793
    .line 794
    if-ne v7, v4, :cond_1b

    .line 795
    .line 796
    iget v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    .line 797
    .line 798
    goto :goto_7

    .line 799
    :cond_1b
    iget v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    .line 800
    .line 801
    :goto_7
    invoke-virtual {v1, v3, v7}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    .line 802
    .line 803
    .line 804
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonText:Landroid/widget/TextView;

    .line 805
    .line 806
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 807
    .line 808
    iget-object v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 809
    .line 810
    iget v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 811
    .line 812
    if-ne v13, v2, :cond_1c

    .line 813
    .line 814
    iget v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    .line 815
    .line 816
    goto :goto_8

    .line 817
    :cond_1c
    iget v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    .line 818
    .line 819
    :goto_8
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 820
    .line 821
    .line 822
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskCheckedImage:Landroid/widget/ImageView;

    .line 823
    .line 824
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 825
    .line 826
    iget-object v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 827
    .line 828
    iget v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 829
    .line 830
    if-nez v13, :cond_1d

    .line 831
    .line 832
    move v13, v6

    .line 833
    goto :goto_9

    .line 834
    :cond_1d
    move v13, v5

    .line 835
    :goto_9
    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 836
    .line 837
    .line 838
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    .line 839
    .line 840
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 841
    .line 842
    iget-object v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 843
    .line 844
    iget v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 845
    .line 846
    if-ne v13, v3, :cond_1e

    .line 847
    .line 848
    move v13, v6

    .line 849
    goto :goto_a

    .line 850
    :cond_1e
    move v13, v5

    .line 851
    :goto_a
    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 852
    .line 853
    .line 854
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    .line 855
    .line 856
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 857
    .line 858
    iget-object v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 859
    .line 860
    iget v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 861
    .line 862
    if-ne v13, v4, :cond_1f

    .line 863
    .line 864
    move v13, v6

    .line 865
    goto :goto_b

    .line 866
    :cond_1f
    move v13, v5

    .line 867
    :goto_b
    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 868
    .line 869
    .line 870
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersCheckedImage:Landroid/widget/ImageView;

    .line 871
    .line 872
    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 873
    .line 874
    iget-object v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 875
    .line 876
    iget v13, v13, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 877
    .line 878
    if-ne v13, v2, :cond_20

    .line 879
    .line 880
    move v2, v6

    .line 881
    goto :goto_c

    .line 882
    :cond_20
    move v2, v5

    .line 883
    :goto_c
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 884
    .line 885
    .line 886
    sget-object v2, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 887
    .line 888
    const-string v7, "calls"

    .line 889
    .line 890
    invoke-static {v2, v12, v11, v7, v9}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    :goto_d
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    .line 894
    .line 895
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 896
    .line 897
    .line 898
    move-result-object v2

    .line 899
    const v7, 0x7f070c2e

    .line 900
    .line 901
    .line 902
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 903
    .line 904
    .line 905
    move-result v2

    .line 906
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    .line 907
    .line 908
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 909
    .line 910
    .line 911
    move-result-object v7

    .line 912
    const v9, 0x7f070c41

    .line 913
    .line 914
    .line 915
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 916
    .line 917
    .line 918
    move-result v7

    .line 919
    iget-object v9, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    .line 920
    .line 921
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 922
    .line 923
    .line 924
    move-result-object v9

    .line 925
    const v11, 0x7f070c2f

    .line 926
    .line 927
    .line 928
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 929
    .line 930
    .line 931
    move-result v9

    .line 932
    iget-object v11, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    .line 933
    .line 934
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 935
    .line 936
    .line 937
    move-result-object v11

    .line 938
    const v12, 0x7f070c2d

    .line 939
    .line 940
    .line 941
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 942
    .line 943
    .line 944
    move-result v11

    .line 945
    iget-object v12, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    .line 946
    .line 947
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 948
    .line 949
    .line 950
    move-result-object v12

    .line 951
    const v13, 0x7f070c3e

    .line 952
    .line 953
    .line 954
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 955
    .line 956
    .line 957
    move-result v12

    .line 958
    sget-object v13, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 959
    .line 960
    const v14, 0x7f080db8

    .line 961
    .line 962
    .line 963
    if-ne v10, v13, :cond_21

    .line 964
    .line 965
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    .line 966
    .line 967
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 968
    .line 969
    .line 970
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    .line 971
    .line 972
    invoke-virtual {v7, v9, v2, v9, v11}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 973
    .line 974
    .line 975
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    .line 976
    .line 977
    iget-object v15, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    .line 978
    .line 979
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 980
    .line 981
    .line 982
    move-result-object v15

    .line 983
    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 984
    .line 985
    .line 986
    move-result-object v15

    .line 987
    invoke-virtual {v7, v15}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 988
    .line 989
    .line 990
    goto :goto_e

    .line 991
    :cond_21
    iget-object v15, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    .line 992
    .line 993
    invoke-virtual {v15, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 994
    .line 995
    .line 996
    iget-object v15, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    .line 997
    .line 998
    invoke-virtual {v15, v9, v7, v9, v11}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 999
    .line 1000
    .line 1001
    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    .line 1002
    .line 1003
    iget-object v15, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    .line 1004
    .line 1005
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v15

    .line 1009
    const v4, 0x7f080db9

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v4

    .line 1016
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1017
    .line 1018
    .line 1019
    :goto_e
    if-ne v10, v13, :cond_25

    .line 1020
    .line 1021
    iget-object v4, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 1022
    .line 1023
    iget-object v4, v4, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 1024
    .line 1025
    iget-object v4, v4, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 1026
    .line 1027
    invoke-static {v4}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v4

    .line 1031
    invoke-virtual {v4, v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v7

    .line 1035
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v7

    .line 1039
    :cond_22
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1040
    .line 1041
    .line 1042
    move-result v10

    .line 1043
    if-eqz v10, :cond_24

    .line 1044
    .line 1045
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v10

    .line 1049
    check-cast v10, Landroid/telecom/PhoneAccountHandle;

    .line 1050
    .line 1051
    invoke-virtual {v4, v10}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v10

    .line 1055
    if-eqz v10, :cond_22

    .line 1056
    .line 1057
    invoke-virtual {v10}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    .line 1058
    .line 1059
    .line 1060
    move-result v10

    .line 1061
    and-int/2addr v10, v8

    .line 1062
    if-eqz v10, :cond_23

    .line 1063
    .line 1064
    move v10, v3

    .line 1065
    goto :goto_f

    .line 1066
    :cond_23
    move v10, v6

    .line 1067
    :goto_f
    if-nez v10, :cond_22

    .line 1068
    .line 1069
    const-string v4, "MultiSIMController"

    .line 1070
    .line 1071
    const-string v7, "Support Call preferred Others"

    .line 1072
    .line 1073
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    .line 1075
    .line 1076
    move v4, v3

    .line 1077
    goto :goto_10

    .line 1078
    :cond_24
    move v4, v6

    .line 1079
    :goto_10
    if-eqz v4, :cond_25

    .line 1080
    .line 1081
    iget-object v4, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

    .line 1082
    .line 1083
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1084
    .line 1085
    .line 1086
    iget-object v4, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    .line 1087
    .line 1088
    invoke-virtual {v4, v9, v2, v9, v11}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 1089
    .line 1090
    .line 1091
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    .line 1092
    .line 1093
    iget-object v4, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    .line 1094
    .line 1095
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v4

    .line 1099
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v4

    .line 1103
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1104
    .line 1105
    .line 1106
    goto :goto_11

    .line 1107
    :cond_25
    iget-object v4, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

    .line 1108
    .line 1109
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1110
    .line 1111
    .line 1112
    iget-object v4, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    .line 1113
    .line 1114
    invoke-virtual {v4, v9, v2, v9, v12}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 1115
    .line 1116
    .line 1117
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    .line 1118
    .line 1119
    iget-object v4, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    .line 1120
    .line 1121
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v4

    .line 1125
    const v5, 0x7f080db7

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v4

    .line 1132
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1133
    .line 1134
    .line 1135
    :goto_11
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    .line 1136
    .line 1137
    if-eqz v0, :cond_2f

    .line 1138
    .line 1139
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v2

    .line 1143
    const/4 v4, 0x2

    .line 1144
    new-array v5, v4, [I

    .line 1145
    .line 1146
    new-array v4, v4, [I

    .line 1147
    .line 1148
    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 1152
    .line 1153
    .line 1154
    move-result v7

    .line 1155
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 1156
    .line 1157
    .line 1158
    move-result v8

    .line 1159
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 1163
    .line 1164
    .line 1165
    move-result v9

    .line 1166
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 1167
    .line 1168
    .line 1169
    move-result v2

    .line 1170
    iget-object v10, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    .line 1171
    .line 1172
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v10

    .line 1176
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v10

    .line 1180
    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1181
    .line 1182
    iget-object v11, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    .line 1183
    .line 1184
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v11

    .line 1188
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v11

    .line 1192
    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1193
    .line 1194
    iget v12, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupWindowTopMargin:I

    .line 1195
    .line 1196
    aget v13, v4, v3

    .line 1197
    .line 1198
    sub-int/2addr v10, v13

    .line 1199
    sub-int/2addr v10, v12

    .line 1200
    if-ge v10, v9, :cond_26

    .line 1201
    .line 1202
    move v10, v3

    .line 1203
    goto :goto_12

    .line 1204
    :cond_26
    move v10, v6

    .line 1205
    :goto_12
    aget v4, v4, v6

    .line 1206
    .line 1207
    sub-int/2addr v11, v4

    .line 1208
    if-ge v11, v2, :cond_27

    .line 1209
    .line 1210
    move v11, v3

    .line 1211
    goto :goto_13

    .line 1212
    :cond_27
    move v11, v6

    .line 1213
    :goto_13
    if-eqz v11, :cond_28

    .line 1214
    .line 1215
    add-int/2addr v4, v8

    .line 1216
    sub-int/2addr v4, v2

    .line 1217
    :cond_28
    aput v4, v5, v6

    .line 1218
    .line 1219
    if-eqz v10, :cond_29

    .line 1220
    .line 1221
    sub-int v12, v7, v9

    .line 1222
    .line 1223
    :cond_29
    add-int/2addr v13, v12

    .line 1224
    aput v13, v5, v3

    .line 1225
    .line 1226
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 1227
    .line 1228
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1229
    .line 1230
    .line 1231
    sget-object v4, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    .line 1232
    .line 1233
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 1234
    .line 1235
    .line 1236
    move-result v4

    .line 1237
    if-eqz v4, :cond_2a

    .line 1238
    .line 1239
    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    .line 1240
    .line 1241
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isVoiceCapable(Landroid/content/Context;)Z

    .line 1242
    .line 1243
    .line 1244
    move-result v2

    .line 1245
    if-nez v2, :cond_2a

    .line 1246
    .line 1247
    move v2, v3

    .line 1248
    goto :goto_14

    .line 1249
    :cond_2a
    move v2, v6

    .line 1250
    :goto_14
    if-eqz v2, :cond_2b

    .line 1251
    .line 1252
    const/16 v2, 0x31

    .line 1253
    .line 1254
    goto :goto_15

    .line 1255
    :cond_2b
    const v2, 0x800033

    .line 1256
    .line 1257
    .line 1258
    :goto_15
    aget v4, v5, v6

    .line 1259
    .line 1260
    aget v7, v5, v3

    .line 1261
    .line 1262
    invoke-virtual {v1, v0, v2, v4, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1263
    .line 1264
    .line 1265
    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 1266
    .line 1267
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 1268
    .line 1269
    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updatePhoneNumberWhenNeeded()V

    .line 1270
    .line 1271
    .line 1272
    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    .line 1273
    .line 1274
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v0

    .line 1278
    const v2, 0x7f070c30

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1282
    .line 1283
    .line 1284
    move-result v0

    .line 1285
    int-to-float v0, v0

    .line 1286
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    .line 1287
    .line 1288
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v2

    .line 1292
    const v4, 0x7f0605b6

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 1296
    .line 1297
    .line 1298
    move-result v2

    .line 1299
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    .line 1300
    .line 1301
    if-eqz v4, :cond_2c

    .line 1302
    .line 1303
    new-instance v3, Landroid/view/SemBlurInfo$Builder;

    .line 1304
    .line 1305
    invoke-direct {v3, v6}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 1306
    .line 1307
    .line 1308
    const/16 v4, 0xc8

    .line 1309
    .line 1310
    invoke-virtual {v3, v4}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v3

    .line 1314
    invoke-virtual {v3, v2}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v2

    .line 1318
    invoke-virtual {v2, v0}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v0

    .line 1322
    goto :goto_17

    .line 1323
    :cond_2c
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    .line 1324
    .line 1325
    const/4 v2, 0x0

    .line 1326
    if-eqz v0, :cond_2e

    .line 1327
    .line 1328
    aget v0, v5, v6

    .line 1329
    .line 1330
    aget v4, v5, v3

    .line 1331
    .line 1332
    iget-object v5, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 1333
    .line 1334
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 1335
    .line 1336
    .line 1337
    move-result v11

    .line 1338
    iget-object v5, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 1339
    .line 1340
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 1341
    .line 1342
    .line 1343
    move-result v12

    .line 1344
    new-instance v10, Landroid/graphics/Rect;

    .line 1345
    .line 1346
    add-int v5, v0, v11

    .line 1347
    .line 1348
    add-int v6, v4, v12

    .line 1349
    .line 1350
    invoke-direct {v10, v0, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1351
    .line 1352
    .line 1353
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    .line 1354
    .line 1355
    const-string/jumbo v4, "window"

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v0

    .line 1362
    check-cast v0, Landroid/view/WindowManager;

    .line 1363
    .line 1364
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v6

    .line 1368
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v0

    .line 1372
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 1373
    .line 1374
    .line 1375
    move-result v7

    .line 1376
    const/16 v8, 0x7f4

    .line 1377
    .line 1378
    const/4 v9, 0x1

    .line 1379
    const/4 v13, 0x0

    .line 1380
    const/4 v14, 0x0

    .line 1381
    const/4 v15, 0x1

    .line 1382
    invoke-virtual/range {v6 .. v15}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    goto :goto_16

    .line 1387
    :catch_0
    move-exception v0

    .line 1388
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 1389
    .line 1390
    .line 1391
    move-object v0, v2

    .line 1392
    :goto_16
    if-nez v0, :cond_2d

    .line 1393
    .line 1394
    move-object v0, v2

    .line 1395
    :cond_2d
    if-eqz v0, :cond_2e

    .line 1396
    .line 1397
    new-instance v2, Landroid/view/SemBlurInfo$Builder;

    .line 1398
    .line 1399
    invoke-direct {v2, v3}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 1400
    .line 1401
    .line 1402
    const/16 v3, 0xfa

    .line 1403
    .line 1404
    invoke-virtual {v2, v3}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v2

    .line 1408
    invoke-virtual {v2, v0}, Landroid/view/SemBlurInfo$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v0

    .line 1412
    goto :goto_17

    .line 1413
    :cond_2e
    move-object v0, v2

    .line 1414
    :goto_17
    if-eqz v0, :cond_2f

    .line 1415
    .line 1416
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    .line 1417
    .line 1418
    invoke-virtual {v0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v0

    .line 1422
    invoke-virtual {v1, v0}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 1423
    .line 1424
    .line 1425
    :cond_2f
    :goto_18
    return-void

    .line 1426
    :goto_19
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1427
    .line 1428
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 1429
    .line 1430
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 1431
    .line 1432
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 1433
    .line 1434
    iget v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 1435
    .line 1436
    if-eq v2, v3, :cond_30

    .line 1437
    .line 1438
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 1439
    .line 1440
    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 1441
    .line 1442
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    .line 1443
    .line 1444
    .line 1445
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    .line 1446
    .line 1447
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1448
    .line 1449
    .line 1450
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    .line 1451
    .line 1452
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1453
    .line 1454
    .line 1455
    :cond_30
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1456
    .line 1457
    .line 1458
    return-void

    .line 1459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
