.class public final Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;
.super Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPatternChecked(IIZZ)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "KeyguardSecPatternViewController"

    .line 29
    .line 30
    const-string v5, "!@onPatternChecked matched=%b timeoutMs=%d userId=%d"

    .line 31
    .line 32
    invoke-static {v4, v5, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz p3, :cond_4

    .line 42
    .line 43
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 44
    .line 45
    iget-object p2, p2, Lcom/android/keyguard/KeyguardSecPatternViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 46
    .line 47
    invoke-virtual {p2, v1}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 51
    .line 52
    iget-object p2, p2, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 53
    .line 54
    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 67
    .line 68
    iget-object p3, p3, Lcom/android/keyguard/KeyguardPatternViewController;->mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 69
    .line 70
    invoke-interface {p2, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->setPrevCredential(Lcom/android/internal/widget/LockscreenCredential;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-interface {p2, p1, v2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    .line 80
    .line 81
    .line 82
    if-eqz v0, :cond_b

    .line 83
    .line 84
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 85
    .line 86
    iget-boolean p3, p2, Lcom/android/keyguard/KeyguardSecPatternViewController;->mGoingToSleep:Z

    .line 87
    .line 88
    if-nez p3, :cond_3

    .line 89
    .line 90
    iget-object p3, p2, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 91
    .line 92
    iget-boolean p3, p3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 93
    .line 94
    if-nez p3, :cond_2

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    iget-object p2, p2, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 98
    .line 99
    sget-object p3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 100
    .line 101
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 107
    .line 108
    invoke-interface {v3, p1, p0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_4

    .line 112
    .line 113
    :cond_3
    :goto_1
    return-void

    .line 114
    :cond_4
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 115
    .line 116
    iget-object p3, p3, Lcom/android/keyguard/KeyguardSecPatternViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 117
    .line 118
    const/16 v0, 0x72

    .line 119
    .line 120
    invoke-virtual {p3, v0}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    .line 121
    .line 122
    .line 123
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 124
    .line 125
    iget-object p3, p3, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 126
    .line 127
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 128
    .line 129
    invoke-virtual {p3, v0}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 130
    .line 131
    .line 132
    const/4 p3, 0x2

    .line 133
    if-eqz p4, :cond_9

    .line 134
    .line 135
    invoke-interface {v3, p1, p2, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    .line 136
    .line 137
    .line 138
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 139
    .line 140
    iget-object p4, p4, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 141
    .line 142
    check-cast p4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 143
    .line 144
    invoke-virtual {p4}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    .line 145
    .line 146
    .line 147
    move-result p4

    .line 148
    if-nez p4, :cond_8

    .line 149
    .line 150
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 151
    .line 152
    iget-object p4, p4, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 153
    .line 154
    check-cast p4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 155
    .line 156
    invoke-virtual {p4}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDisableDeviceByMultifactor()V

    .line 157
    .line 158
    .line 159
    const/16 p4, 0x8

    .line 160
    .line 161
    if-nez p2, :cond_5

    .line 162
    .line 163
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_9

    .line 170
    .line 171
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 172
    .line 173
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-ne p1, p4, :cond_9

    .line 180
    .line 181
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 182
    .line 183
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 184
    .line 185
    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_3

    .line 189
    .line 190
    :cond_5
    if-lez p2, :cond_9

    .line 191
    .line 192
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 193
    .line 194
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 195
    .line 196
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isPermanentLock()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_9

    .line 201
    .line 202
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText()Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_6

    .line 209
    .line 210
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 211
    .line 212
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 213
    .line 214
    invoke-virtual {v0, p4}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 215
    .line 216
    .line 217
    :cond_6
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 218
    .line 219
    invoke-virtual {p4, v1}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 220
    .line 221
    .line 222
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 223
    .line 224
    iget-object p4, p4, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 225
    .line 226
    invoke-interface {p4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    .line 227
    .line 228
    .line 229
    move-result p4

    .line 230
    if-eqz p4, :cond_7

    .line 231
    .line 232
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWeaverDevice()Z

    .line 233
    .line 234
    .line 235
    move-result p4

    .line 236
    if-nez p4, :cond_7

    .line 237
    .line 238
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 239
    .line 240
    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 241
    .line 242
    invoke-interface {p1, v2, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setLockoutAttemptDeadline(II)J

    .line 243
    .line 244
    .line 245
    move-result-wide v0

    .line 246
    goto :goto_2

    .line 247
    :cond_7
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 248
    .line 249
    iget-object p4, p4, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 250
    .line 251
    invoke-interface {p4, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setLockoutAttemptDeadline(II)J

    .line 252
    .line 253
    .line 254
    move-result-wide v0

    .line 255
    :goto_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 256
    .line 257
    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->handleAttemptLockout(J)V

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 261
    .line 262
    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 263
    .line 264
    sget-object p4, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_STRONG_AUTH_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 265
    .line 266
    invoke-virtual {p1, p3, p4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_8
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 271
    .line 272
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    const/4 v3, 0x5

    .line 276
    const/4 v4, 0x1

    .line 277
    const/4 v5, 0x1

    .line 278
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    const-class p4, Lcom/android/keyguard/KeyguardPatternView;

    .line 283
    .line 284
    const-string v7, "KeyguardPatternView"

    .line 285
    .line 286
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object p4

    .line 290
    filled-new-array {p4}, [Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object p4

    .line 294
    const-string v0, "User %d has exceeded number of authentication failure limit when using pattern authentication"

    .line 295
    .line 296
    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v8

    .line 300
    move v9, p1

    .line 301
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 302
    .line 303
    .line 304
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 305
    .line 306
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->disableDevicePermanently()V

    .line 307
    .line 308
    .line 309
    :cond_9
    :goto_3
    if-nez p2, :cond_b

    .line 310
    .line 311
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 312
    .line 313
    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 314
    .line 315
    .line 316
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 317
    .line 318
    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 319
    .line 320
    invoke-interface {p1, p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttempt(I)I

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 325
    .line 326
    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    const p3, 0x7f130872

    .line 331
    .line 332
    .line 333
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    if-lez p1, :cond_a

    .line 338
    .line 339
    const-string p3, " ("

    .line 340
    .line 341
    invoke-static {p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    move-result-object p2

    .line 345
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 346
    .line 347
    invoke-virtual {p3}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 348
    .line 349
    .line 350
    move-result-object p3

    .line 351
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object p4

    .line 355
    filled-new-array {p4}, [Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object p4

    .line 359
    const v0, 0x7f110006

    .line 360
    .line 361
    .line 362
    invoke-virtual {p3, v0, p1, p4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    const-string p3, ")"

    .line 367
    .line 368
    invoke-static {p2, p1, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    :cond_a
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 373
    .line 374
    iget-object p1, p1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 375
    .line 376
    invoke-virtual {p1, p2, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 377
    .line 378
    .line 379
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 380
    .line 381
    iget-object p1, p1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 382
    .line 383
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 384
    .line 385
    .line 386
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 387
    .line 388
    iget-object p1, p1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 389
    .line 390
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    .line 391
    .line 392
    .line 393
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 394
    .line 395
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 396
    .line 397
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCancelPatternRunnable:Lcom/android/keyguard/KeyguardPatternViewController$2;

    .line 398
    .line 399
    const-wide/16 p2, 0x7d0

    .line 400
    .line 401
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 402
    .line 403
    .line 404
    :cond_b
    :goto_4
    return-void
.end method

.method public final onPatternDetected(Ljava/util/List;)V
    .locals 6

    .line 1
    const-string v0, "KeyguardSecPatternViewController"

    .line 2
    .line 3
    const-string/jumbo v1, "onPatternDetected"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDualDarDeviceOwner(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 30
    .line 31
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDualDarInnerLayerUnlocked(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_4

    .line 42
    .line 43
    const-string v1, "KeyguardSecPatternViewController.DDAR"

    .line 44
    .line 45
    const-string v2, "Pattern detected from DualDAR DO"

    .line 46
    .line 47
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCredentialAttempted()V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    const/4 v4, 0x1

    .line 83
    const/4 v5, 0x4

    .line 84
    if-ge v3, v5, :cond_2

    .line 85
    .line 86
    const-string v3, "!@Password too short!"

    .line 87
    .line 88
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-ne p1, v4, :cond_1

    .line 96
    .line 97
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 100
    .line 101
    const-class v0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v3, "empty pattern input"

    .line 108
    .line 109
    const-wide v4, 0x3fe6666666666666L    # 0.7

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    invoke-static {v4, v5, v0, v3}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->falsed(DLjava/lang/String;Ljava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast p1, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateFalseConfidence(Lcom/android/systemui/classifier/FalsingClassifier$Result;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 124
    .line 125
    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->onPatternChecked(IIZZ)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 137
    .line 138
    const/4 v2, 0x3

    .line 139
    invoke-virtual {v0, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 143
    .line 144
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 145
    .line 146
    invoke-virtual {v0, v5}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 150
    .line 151
    iget-object v2, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 152
    .line 153
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    new-instance v5, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;

    .line 158
    .line 159
    invoke-direct {v5, p0, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;I)V

    .line 160
    .line 161
    .line 162
    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;)Landroid/os/AsyncTask;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 167
    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    const/4 v0, 0x2

    .line 173
    if-le p1, v0, :cond_3

    .line 174
    .line 175
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 182
    .line 183
    .line 184
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onUserInput()V

    .line 191
    .line 192
    .line 193
    :cond_3
    return-void

    .line 194
    :cond_4
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public final onPatternStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->onPatternStart()V

    .line 2
    .line 3
    .line 4
    const-string v0, "KeyguardSecPatternViewController"

    .line 5
    .line 6
    const-string/jumbo v1, "onPatternStart"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->setSubSecurityMessage(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
