.class public final Lcom/android/keyguard/ResetDeviceUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field public mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 8
    .line 9
    const-string v0, "ResetDeviceUtils"

    .line 10
    .line 11
    const-string v1, "ResetDeviceUtils()"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final removeSubUser(I)V
    .locals 2

    .line 1
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->clearFailedUnlockAttempts(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 14
    .line 15
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-string/jumbo v0, "user"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Landroid/os/UserManager;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    const-string p0, "ResetDeviceUtils"

    .line 46
    .line 47
    const-string p1, "KeyguardHostView - exception in removeSubuser"

    .line 48
    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public final wipeOut(II)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "wipeOut() attemptsCount = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " userType = "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "ResetDeviceUtils"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const-string/jumbo v2, "user"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/os/UserManager;

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    if-ne p2, v3, :cond_8

    .line 42
    .line 43
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_a

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isFactoryResetAllowed()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v6, "isFactoryResetAllowed = "

    .line 60
    .line 61
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-static {v1, v5}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    if-nez v4, :cond_0

    .line 75
    .line 76
    const-string p0, "Factory Reset is not allowed"

    .line 77
    .line 78
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    if-eqz v2, :cond_1

    .line 83
    .line 84
    const-string/jumbo v4, "no_factory_reset"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    const-string p0, "Factory Reset is not allowed DISALLOW_FACTORY_RESET"

    .line 94
    .line 95
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded()Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string/jumbo v4, "wipeExcludeExternalStorage = "

    .line 110
    .line 111
    .line 112
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v2, "findSDCard ()"

    .line 126
    .line 127
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/android/keyguard/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 131
    .line 132
    if-nez v2, :cond_2

    .line 133
    .line 134
    const-string/jumbo v2, "storage"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Landroid/os/storage/StorageManager;

    .line 142
    .line 143
    iput-object v2, p0, Lcom/android/keyguard/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 144
    .line 145
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    if-eqz v2, :cond_4

    .line 149
    .line 150
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    array-length v5, v2

    .line 155
    move v6, v4

    .line 156
    :goto_0
    if-ge v6, v5, :cond_4

    .line 157
    .line 158
    aget-object v7, v2, v6

    .line 159
    .line 160
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-eqz v7, :cond_3

    .line 165
    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v7, "findSDCard ( storageVolumes = "

    .line 169
    .line 170
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    aget-object v7, v2, v6

    .line 174
    .line 175
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v7, " )"

    .line 179
    .line 180
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    aget-object v2, v2, v6

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_4
    const-string v2, "findSDCard ( null )"

    .line 197
    .line 198
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    const/4 v2, 0x0

    .line 202
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 203
    .line 204
    if-nez v5, :cond_5

    .line 205
    .line 206
    new-instance v5, Landroid/app/ProgressDialog;

    .line 207
    .line 208
    const/4 v6, 0x5

    .line 209
    invoke-direct {v5, v0, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 210
    .line 211
    .line 212
    iput-object v5, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 213
    .line 214
    invoke-virtual {v5, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 215
    .line 216
    .line 217
    iget-object v5, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 218
    .line 219
    invoke-virtual {v5, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 220
    .line 221
    .line 222
    iget-object v4, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 223
    .line 224
    const v5, 0x7f1307c0

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    iget-object v4, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 235
    .line 236
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    const/16 v5, 0x7d9

    .line 241
    .line 242
    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 243
    .line 244
    .line 245
    :cond_5
    iget-object p0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 246
    .line 247
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    .line 248
    .line 249
    .line 250
    const/high16 p0, 0x1000000

    .line 251
    .line 252
    const/high16 v4, 0x10000000

    .line 253
    .line 254
    const-string v5, "android.intent.action.FACTORY_RESET"

    .line 255
    .line 256
    const-string v6, "android.intent.extra.REASON"

    .line 257
    .line 258
    if-eqz v2, :cond_6

    .line 259
    .line 260
    if-nez p2, :cond_6

    .line 261
    .line 262
    const-string/jumbo p2, "wipeOut ACTION_FACTORY_RESET/EXTRA_WIPE_EXTERNAL_STORAGE=true)"

    .line 263
    .line 264
    .line 265
    invoke-static {v1, p2}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string v1, "ResetDeviceUtils_EXTERNAL_STORAGE, attemptsCount = "

    .line 271
    .line 272
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    new-instance p2, Landroid/content/Intent;

    .line 283
    .line 284
    invoke-direct {p2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    .line 292
    .line 293
    const-string p1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    .line 294
    .line 295
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_6
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_FACTORY_RESET_WITHOUT_UI:Z

    .line 300
    .line 301
    if-eqz p2, :cond_7

    .line 302
    .line 303
    const-string/jumbo p2, "wipeOut ( send SEC_FACTORY_RESET_WITHOUT_FACTORY_UI )"

    .line 304
    .line 305
    .line 306
    invoke-static {v1, p2}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    new-instance p2, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v1, "ResetDeviceUtils_WITHOUT_FACTORY_UI, attemptsCount = "

    .line 312
    .line 313
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    new-instance p2, Landroid/content/Intent;

    .line 324
    .line 325
    const-string v1, "com.samsung.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    .line 326
    .line 327
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    .line 335
    .line 336
    goto :goto_2

    .line 337
    :cond_7
    const-string/jumbo p2, "wipeOut ( send ACTION_FACTORY_RESET )"

    .line 338
    .line 339
    .line 340
    invoke-static {v1, p2}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    new-instance p2, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    const-string v1, "ResetDeviceUtils_FACTORY_RESET, attemptsCount = "

    .line 346
    .line 347
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    new-instance p2, Landroid/content/Intent;

    .line 358
    .line 359
    invoke-direct {p2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    .line 367
    .line 368
    :goto_2
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 372
    .line 373
    .line 374
    goto :goto_3

    .line 375
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string/jumbo v0, "wipeOut() removeSubUser userType : "

    .line 378
    .line 379
    .line 380
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 394
    .line 395
    .line 396
    move-result p1

    .line 397
    const/4 v0, 0x2

    .line 398
    if-ne p2, v0, :cond_9

    .line 399
    .line 400
    iget-object p2, p0, Lcom/android/keyguard/ResetDeviceUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 401
    .line 402
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 403
    .line 404
    .line 405
    move-result-object p2

    .line 406
    invoke-virtual {p2, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    .line 407
    .line 408
    .line 409
    move-result p1

    .line 410
    invoke-virtual {p0, p1}, Lcom/android/keyguard/ResetDeviceUtils;->removeSubUser(I)V

    .line 411
    .line 412
    .line 413
    goto :goto_3

    .line 414
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/keyguard/ResetDeviceUtils;->removeSubUser(I)V

    .line 415
    .line 416
    .line 417
    :cond_a
    :goto_3
    return-void
.end method
