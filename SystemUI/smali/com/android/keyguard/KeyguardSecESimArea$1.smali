.class public final Lcom/android/keyguard/KeyguardSecESimArea$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecESimArea;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecESimArea;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.android.keyguard.disable_esim"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    const-string v1, "KeyguardSecEsimArea"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p1, :cond_4

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mProgressBar:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v4, "Error disabling esim, result code = "

    .line 34
    .line 35
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    const-string p1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    .line 49
    .line 50
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const-string/jumbo v3, "switch detailedCode: "

    .line 55
    .line 56
    .line 57
    invoke-static {v3, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/16 v3, 0x2711

    .line 61
    .line 62
    if-ne p1, v3, :cond_0

    .line 63
    .line 64
    new-instance p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 65
    .line 66
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 67
    .line 68
    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecESimArea;->access$000(Lcom/android/keyguard/KeyguardSecESimArea;)Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-direct {p1, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const v5, 0x7f130807

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v4, "\n\n"

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 102
    .line 103
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const v6, 0x7f130808

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 121
    .line 122
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    const v5, 0x7f130809

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 144
    .line 145
    .line 146
    const/high16 v3, 0x1040000

    .line 147
    .line 148
    const/4 v4, 0x0

    .line 149
    invoke-virtual {p1, v3, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    new-instance v3, Lcom/android/keyguard/KeyguardSecESimArea$1$$ExternalSyntheticLambda0;

    .line 153
    .line 154
    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecESimArea$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecESimArea$1;)V

    .line 155
    .line 156
    .line 157
    const v4, 0x7f13080a

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v4, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    const/16 v4, 0x7d9

    .line 168
    .line 169
    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 173
    .line 174
    .line 175
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 176
    .line 177
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    .line 178
    .line 179
    invoke-virtual {p1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_1
    const-string p1, "Success ACTION_DISABLE_ESIM"

    .line 184
    .line 185
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 189
    .line 190
    iget-object v3, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 191
    .line 192
    if-eqz v3, :cond_3

    .line 193
    .line 194
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 195
    .line 196
    const/4 v3, 0x2

    .line 197
    invoke-interface {p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSimState(I)Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-nez p1, :cond_2

    .line 202
    .line 203
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 204
    .line 205
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 206
    .line 207
    const/4 v3, 0x3

    .line 208
    invoke-interface {p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSimState(I)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-nez p1, :cond_2

    .line 213
    .line 214
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 215
    .line 216
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 217
    .line 218
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-nez p1, :cond_2

    .line 223
    .line 224
    const-string p1, "Dismiss SIM PIN/PUK View"

    .line 225
    .line 226
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 230
    .line 231
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 232
    .line 233
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 238
    .line 239
    iget-object v4, v4, Lcom/android/keyguard/KeyguardSecESimArea;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 240
    .line 241
    const/4 v5, 0x1

    .line 242
    invoke-interface {p1, v3, v4, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 243
    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 247
    .line 248
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 249
    .line 250
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 254
    .line 255
    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mPendingEsimTextVisible:Z

    .line 256
    .line 257
    if-eqz v3, :cond_3

    .line 258
    .line 259
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    .line 260
    .line 261
    invoke-virtual {p1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 265
    .line 266
    iput-boolean v2, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mPendingEsimTextVisible:Z

    .line 267
    .line 268
    :cond_4
    const-string p1, "com.android.keyguard.euicc_reset"

    .line 269
    .line 270
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-eqz p1, :cond_6

    .line 279
    .line 280
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 281
    .line 282
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mProgressBar:Landroid/widget/ProgressBar;

    .line 283
    .line 284
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    if-eqz p1, :cond_5

    .line 292
    .line 293
    const-string p2, "Error euicc memory reset, result code = "

    .line 294
    .line 295
    invoke-static {p2, p1, v1}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 299
    .line 300
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    .line 301
    .line 302
    invoke-virtual {p1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 303
    .line 304
    .line 305
    goto :goto_1

    .line 306
    :cond_5
    const-string p1, "Success ACTION_EUICC_RESET"

    .line 307
    .line 308
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 312
    .line 313
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mPendingEsimTextVisible:Z

    .line 314
    .line 315
    :cond_6
    return-void
.end method
