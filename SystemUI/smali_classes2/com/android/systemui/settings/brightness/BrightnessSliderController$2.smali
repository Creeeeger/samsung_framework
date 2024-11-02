.class public final Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mTracking:Z

    .line 9
    .line 10
    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 11
    .line 12
    invoke-virtual {v0, p2, p1, v1}, Lcom/android/systemui/settings/brightness/BrightnessController;->onChanged(IZZ)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->setSeekBarContentDescription(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string/jumbo v0, "screen_brightness_mode"

    .line 31
    .line 32
    .line 33
    const/4 v2, -0x2

    .line 34
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 v0, 0x1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    move p1, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move p1, v1

    .line 44
    :goto_0
    if-nez p1, :cond_6

    .line 45
    .line 46
    sget-boolean p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialogEnabled:Z

    .line 47
    .line 48
    if-eqz p1, :cond_6

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 51
    .line 52
    iget-object v2, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 53
    .line 54
    check-cast v2, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 55
    .line 56
    iget-boolean v3, v2, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsTouchSlider:Z

    .line 57
    .line 58
    if-eqz v3, :cond_6

    .line 59
    .line 60
    if-eqz p3, :cond_6

    .line 61
    .line 62
    iget p3, v2, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mDualSeekBarThreshold:I

    .line 63
    .line 64
    if-gt p3, p2, :cond_5

    .line 65
    .line 66
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    const-string p1, "ToggleSlider"

    .line 71
    .line 72
    const-string p2, "hideMirror : USING_HIGH_BRIGHTNESS_DIALOG"

    .line 73
    .line 74
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const p2, 0x10e010a

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mPowerManager:Landroid/os/PowerManager;

    .line 106
    .line 107
    invoke-virtual {p2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    const p3, 0x7f140560

    .line 112
    .line 113
    .line 114
    if-le p1, p2, :cond_3

    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 117
    .line 118
    if-nez p1, :cond_4

    .line 119
    .line 120
    new-instance p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const p2, 0x7f130f10

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    const v0, 0x7f130f14

    .line 157
    .line 158
    .line 159
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 167
    .line 168
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 172
    .line 173
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda2;

    .line 174
    .line 175
    invoke-direct {p2, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController;)V

    .line 176
    .line 177
    .line 178
    const p3, 0x7f130f13

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 185
    .line 186
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda3;

    .line 187
    .line 188
    invoke-direct {p2}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda3;-><init>()V

    .line 189
    .line 190
    .line 191
    const p3, 0x7f130f11

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 198
    .line 199
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessSliderController$3;

    .line 200
    .line 201
    invoke-direct {p2, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$3;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 205
    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 214
    .line 215
    if-nez p1, :cond_4

    .line 216
    .line 217
    new-instance p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 224
    .line 225
    .line 226
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    const p2, 0x7f130f0f

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 244
    .line 245
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 249
    .line 250
    const p2, 0x7f130f12

    .line 251
    .line 252
    .line 253
    const/4 p3, 0x0

    .line 254
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 258
    .line 259
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessSliderController$4;

    .line 260
    .line 261
    invoke-direct {p2, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$4;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 265
    .line 266
    .line 267
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 268
    .line 269
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 270
    .line 271
    .line 272
    :cond_4
    :goto_1
    return-void

    .line 273
    :cond_5
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 274
    .line 275
    if-eqz p1, :cond_6

    .line 276
    .line 277
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_6

    .line 282
    .line 283
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 284
    .line 285
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 286
    .line 287
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 288
    .line 289
    .line 290
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 291
    .line 292
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 293
    .line 294
    if-eqz p1, :cond_6

    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->showMirror()V

    .line 297
    .line 298
    .line 299
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 300
    .line 301
    iget-object p3, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 302
    .line 303
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 304
    .line 305
    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->setLocationAndSize(Landroid/view/View;)V

    .line 306
    .line 307
    .line 308
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 309
    .line 310
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 311
    .line 312
    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 313
    .line 314
    iget p3, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mDualSeekBarThreshold:I

    .line 315
    .line 316
    if-gt p3, p2, :cond_7

    .line 317
    .line 318
    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setDualSeekBarResources(Z)V

    .line 319
    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_7
    invoke-virtual {p1, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setDualSeekBarResources(Z)V

    .line 323
    .line 324
    .line 325
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 326
    .line 327
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 328
    .line 329
    if-eqz p1, :cond_b

    .line 330
    .line 331
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 332
    .line 333
    if-nez p1, :cond_8

    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_8
    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->setValue(I)V

    .line 337
    .line 338
    .line 339
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 340
    .line 341
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 342
    .line 343
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 344
    .line 345
    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 346
    .line 347
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 348
    .line 349
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    .line 350
    .line 351
    .line 352
    move-result p0

    .line 353
    iget-object p3, p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 354
    .line 355
    if-nez p3, :cond_9

    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_9
    int-to-float p2, p2

    .line 359
    int-to-float p0, p0

    .line 360
    div-float/2addr p2, p0

    .line 361
    iget p0, p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mIconAnimationValue:F

    .line 362
    .line 363
    cmpl-float p0, p0, p2

    .line 364
    .line 365
    if-nez p0, :cond_a

    .line 366
    .line 367
    goto :goto_4

    .line 368
    :cond_a
    iput p2, p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mIconAnimationValue:F

    .line 369
    .line 370
    invoke-virtual {p3, p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgressInternal(FZ)V

    .line 371
    .line 372
    .line 373
    :cond_b
    :goto_4
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mTracking:Z

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->showMirror()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->setLocationAndSize(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mTracking:Z

    .line 5
    .line 6
    iget-object v1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getValue()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v2, 0x1

    .line 15
    check-cast v1, Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 16
    .line 17
    invoke-virtual {v1, p1, v0, v2}, Lcom/android/systemui/settings/brightness/BrightnessController;->onChanged(IZZ)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 23
    .line 24
    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setDualSeekBarResources(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 30
    .line 31
    iget-boolean p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSliderNeedToDisabled:Z

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const-string p1, "ToggleSlider"

    .line 36
    .line 37
    const-string/jumbo v1, "slider disabled by onStopTrackingTouch()"

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 44
    .line 45
    iput-boolean v0, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSliderNeedToDisabled:Z

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->updateSystemBrightnessEnabled(Z)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    sget-object p1, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 57
    .line 58
    const-string/jumbo v0, "quick panel"

    .line 59
    .line 60
    .line 61
    const-string v1, "QUICK_PANEL_LAYOUT"

    .line 62
    .line 63
    const-string v2, "QPPE1009"

    .line 64
    .line 65
    const-string v3, "location"

    .line 66
    .line 67
    invoke-static {p1, v2, v3, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 73
    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method
