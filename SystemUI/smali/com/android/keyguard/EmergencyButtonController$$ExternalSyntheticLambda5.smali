.class public final synthetic Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/EmergencyButtonController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/EmergencyButtonController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda5;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda5;->f$1:Z

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    const-string v2, "EmergencyButton"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v4, "takeEmergencyCallAction - showInCallScreen(false, "

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v4, ")"

    .line 31
    .line 32
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-class v2, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 53
    .line 54
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v1, v3, p0}, Lcom/samsung/android/telecom/SemTelecomManager;->showInCallScreen(ZLandroid/os/UserHandle;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, v0, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    .line 62
    .line 63
    if-eqz p0, :cond_7

    .line 64
    .line 65
    invoke-interface {p0}, Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;->onEmergencyButtonClickedWhenInCall()V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_0
    iget-object p0, v0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction()V

    .line 73
    .line 74
    .line 75
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_DIRECT_CALL_TO_ECC:Z

    .line 76
    .line 77
    const/high16 v4, 0x14800000

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    if-eqz p0, :cond_4

    .line 81
    .line 82
    :try_start_0
    iget-object p0, v0, Lcom/android/keyguard/EmergencyButtonController;->mPasswordEntry:Landroid/view/View;

    .line 83
    .line 84
    instance-of v6, p0, Lcom/android/keyguard/SecPasswordTextView;

    .line 85
    .line 86
    if-eqz v6, :cond_1

    .line 87
    .line 88
    move-object v6, p0

    .line 89
    check-cast v6, Lcom/android/keyguard/SecPasswordTextView;

    .line 90
    .line 91
    iget-object v6, v6, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 92
    .line 93
    check-cast p0, Lcom/android/keyguard/PasswordTextView;

    .line 94
    .line 95
    invoke-virtual {p0, v3, v3}, Lcom/android/keyguard/PasswordTextView;->reset(ZZ)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    instance-of v6, p0, Landroid/widget/TextView;

    .line 100
    .line 101
    if-eqz v6, :cond_2

    .line 102
    .line 103
    check-cast p0, Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    iget-object v6, v0, Lcom/android/keyguard/EmergencyButtonController;->mPasswordEntry:Landroid/view/View;

    .line 114
    .line 115
    check-cast v6, Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    :goto_0
    move-object v6, p0

    .line 121
    goto :goto_1

    .line 122
    :cond_2
    instance-of v6, p0, Landroid/widget/EditText;

    .line 123
    .line 124
    if-eqz v6, :cond_3

    .line 125
    .line 126
    check-cast p0, Landroid/widget/EditText;

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    iget-object v6, v0, Lcom/android/keyguard/EmergencyButtonController;->mPasswordEntry:Landroid/view/View;

    .line 137
    .line 138
    check-cast v6, Landroid/widget/EditText;

    .line 139
    .line 140
    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :catch_0
    :cond_3
    move-object v6, v1

    .line 145
    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-nez p0, :cond_4

    .line 150
    .line 151
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    if-eqz p0, :cond_4

    .line 156
    .line 157
    new-instance p0, Landroid/content/Intent;

    .line 158
    .line 159
    const-string v1, "android.intent.action.CALL_EMERGENCY"

    .line 160
    .line 161
    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string/jumbo v1, "tel"

    .line 165
    .line 166
    .line 167
    invoke-static {v1, v6, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    :try_start_1
    const-string v1, "callToEmergencyLine"

    .line 178
    .line 179
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0, v3, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    new-instance v3, Landroid/os/UserHandle;

    .line 199
    .line 200
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, p0, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    .line 209
    .line 210
    goto/16 :goto_2

    .line 211
    .line 212
    :catch_1
    move-exception p0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v1, "Can\'t find the component "

    .line 216
    .line 217
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_4
    iget-object p0, v0, Lcom/android/keyguard/EmergencyButtonController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 232
    .line 233
    if-nez p0, :cond_5

    .line 234
    .line 235
    const-string p0, "TelecomManager was null, cannot launch emergency dialer"

    .line 236
    .line 237
    invoke-static {v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_5
    invoke-virtual {p0, v5}, Landroid/telecom/TelecomManager;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-virtual {p0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    const-string v1, "com.android.phone.EmergencyDialer.extra.ENTRY_TYPE"

    .line 250
    .line 251
    const/4 v4, 0x1

    .line 252
    invoke-virtual {p0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-static {v1, v3, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    const-string/jumbo v4, "takeEmergencyCallAction"

    .line 265
    .line 266
    .line 267
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 271
    .line 272
    check-cast v2, Lcom/android/keyguard/EmergencyButton;

    .line 273
    .line 274
    invoke-virtual {v2}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    iget-object v4, v0, Lcom/android/keyguard/EmergencyButtonController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 279
    .line 280
    invoke-virtual {v4, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 296
    .line 297
    .line 298
    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 299
    .line 300
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 305
    .line 306
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 307
    .line 308
    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isAdminLockEnabled()Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_6

    .line 313
    .line 314
    const-string v2, "enable_ice_contact_list"

    .line 315
    .line 316
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    .line 318
    .line 319
    const-string v2, "enable_emergency_medical_info"

    .line 320
    .line 321
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    .line 323
    .line 324
    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    new-instance v2, Landroid/os/UserHandle;

    .line 333
    .line 334
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 342
    .line 343
    .line 344
    :cond_7
    :goto_2
    return-void
.end method
