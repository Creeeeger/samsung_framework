.class public final Lcom/android/systemui/notification/NotificationBackupRestoreManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static mCipher:Ljavax/crypto/Cipher;

.field public static mSalt:[B

.field public static mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

.field public static mSecurityPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static createBackupFile(ILjava/lang/String;Ljava/util/List;)I
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "create backup file basePath="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "NotifBnRManager"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, "notification_policy.xml"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_0
    :goto_0
    const-string v0, "/encrypt_notification_policy.xml"

    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v3, "basePath="

    .line 61
    .line 62
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    new-instance v2, Ljava/io/File;

    .line 76
    .line 77
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_1

    .line 85
    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v4, ", folder created last"

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v4, "/notification_policy.xml"

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    new-instance v5, Ljava/io/File;

    .line 132
    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_2

    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 162
    .line 163
    .line 164
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :catch_1
    move-exception v2

    .line 169
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    :goto_1
    const-string v2, "copyBackupFile Exception!! fout:"

    .line 173
    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v6, "copyBackupFile path="

    .line 177
    .line 178
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    const-string v4, "notification"

    .line 192
    .line 193
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    const/4 v6, 0x0

    .line 202
    if-eqz p2, :cond_3

    .line 203
    .line 204
    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    if-lez v7, :cond_3

    .line 209
    .line 210
    invoke-interface {v4, p2}, Landroid/app/INotificationManager;->setRestoreBlockListForSS(Ljava/util/List;)V

    .line 211
    .line 212
    .line 213
    :cond_3
    invoke-interface {v4, v6}, Landroid/app/INotificationManager;->getBackupPayload(I)[B

    .line 214
    .line 215
    .line 216
    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 217
    const/4 v4, 0x0

    .line 218
    :try_start_3
    new-instance v7, Ljava/io/FileOutputStream;

    .line 219
    .line 220
    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 221
    .line 222
    .line 223
    :try_start_4
    invoke-virtual {v7, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    .line 225
    .line 226
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 227
    .line 228
    .line 229
    goto :goto_7

    .line 230
    :catch_2
    move-exception p2

    .line 231
    goto :goto_3

    .line 232
    :catchall_0
    move-exception p0

    .line 233
    goto :goto_5

    .line 234
    :catch_3
    move-exception p2

    .line 235
    move-object v4, v7

    .line 236
    goto :goto_2

    .line 237
    :catchall_1
    move-exception p0

    .line 238
    goto :goto_4

    .line 239
    :catch_4
    move-exception p2

    .line 240
    :goto_2
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 256
    .line 257
    .line 258
    if-eqz v4, :cond_5

    .line 259
    .line 260
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 261
    .line 262
    .line 263
    goto :goto_7

    .line 264
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    .line 266
    .line 267
    goto :goto_7

    .line 268
    :goto_4
    move-object v7, v4

    .line 269
    :goto_5
    if-eqz v7, :cond_4

    .line 270
    .line 271
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 272
    .line 273
    .line 274
    goto :goto_6

    .line 275
    :catch_5
    move-exception p1

    .line 276
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    .line 278
    .line 279
    :cond_4
    :goto_6
    throw p0

    .line 280
    :catch_6
    move-exception p2

    .line 281
    const-string v2, "copyBackupFile Failed"

    .line 282
    .line 283
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    .line 288
    .line 289
    :cond_5
    :goto_7
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 290
    .line 291
    .line 292
    move-result-wide v2

    .line 293
    const-wide/16 v7, 0x0

    .line 294
    .line 295
    cmp-long p2, v2, v7

    .line 296
    .line 297
    const/4 v2, 0x1

    .line 298
    if-gtz p2, :cond_6

    .line 299
    .line 300
    const-string p2, "Backup file size error"

    .line 301
    .line 302
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    move p2, v6

    .line 306
    goto :goto_8

    .line 307
    :cond_6
    move p2, v2

    .line 308
    :goto_8
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-static {v5, p1, p0}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->encrypt(Ljava/io/File;Ljava/lang/String;I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 327
    .line 328
    .line 329
    move-result p0

    .line 330
    if-eqz p0, :cond_7

    .line 331
    .line 332
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 333
    .line 334
    .line 335
    const-string p0, "file delete!!!"

    .line 336
    .line 337
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 338
    .line 339
    .line 340
    :cond_7
    move v6, p2

    .line 341
    goto :goto_9

    .line 342
    :catch_7
    move-exception p0

    .line 343
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 344
    .line 345
    .line 346
    :goto_9
    xor-int/lit8 p0, v6, 0x1

    .line 347
    .line 348
    return p0
.end method

.method public static decrypt(ILjava/lang/String;)Ljava/io/File;
    .locals 9

    .line 1
    const-string v0, "NotifBnRManager"

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    const-string v2, "/decrypt_notification_policy.xml"

    .line 6
    .line 7
    invoke-static {p1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/io/File;

    .line 15
    .line 16
    const-string v3, "/encrypt_notification_policy.xml"

    .line 17
    .line 18
    invoke-static {p1, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    const-string p0, "decrypt: file is not found.encrypt_notification_policy.xml"

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    const-wide/16 v5, 0x0

    .line 52
    .line 53
    cmp-long v3, v3, v5

    .line 54
    .line 55
    if-lez v3, :cond_3

    .line 56
    .line 57
    new-instance v3, Ljava/io/FileInputStream;

    .line 58
    .line 59
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 60
    .line 61
    .line 62
    :try_start_1
    invoke-static {v3, p0}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    .line 63
    .line 64
    .line 65
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    .line 67
    .line 68
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    .line 71
    const/16 p1, 0x400

    .line 72
    .line 73
    :try_start_3
    new-array v4, p1, [B

    .line 74
    .line 75
    :goto_0
    const/4 v5, 0x0

    .line 76
    invoke-virtual {p0, v4, v5, p1}, Ljava/io/InputStream;->read([BII)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    const/4 v7, -0x1

    .line 81
    if-eq v6, v7, :cond_2

    .line 82
    .line 83
    invoke-virtual {v2, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    move-object p1, p0

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception p1

    .line 90
    goto :goto_2

    .line 91
    :catch_1
    move-exception p1

    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :catchall_0
    move-exception v0

    .line 95
    move-object v2, p1

    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :catch_2
    move-exception v2

    .line 99
    move-object v8, v2

    .line 100
    move-object v2, p1

    .line 101
    move-object p1, v8

    .line 102
    goto :goto_2

    .line 103
    :catch_3
    move-exception v2

    .line 104
    move-object v8, v2

    .line 105
    move-object v2, p1

    .line 106
    move-object p1, v8

    .line 107
    goto :goto_3

    .line 108
    :catchall_1
    move-exception v0

    .line 109
    move-object v2, p1

    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :catch_4
    move-exception p0

    .line 113
    move-object v2, p1

    .line 114
    move-object p1, p0

    .line 115
    move-object p0, v2

    .line 116
    goto :goto_2

    .line 117
    :catch_5
    move-exception p0

    .line 118
    move-object v2, p1

    .line 119
    move-object p1, p0

    .line 120
    move-object p0, v2

    .line 121
    goto :goto_3

    .line 122
    :cond_3
    move-object v2, p1

    .line 123
    move-object v3, v2

    .line 124
    :goto_1
    if-eqz p1, :cond_4

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 127
    .line 128
    .line 129
    :cond_4
    if-eqz v2, :cond_5

    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 132
    .line 133
    .line 134
    :cond_5
    if-eqz v3, :cond_a

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :catchall_2
    move-exception p0

    .line 138
    move-object v0, p0

    .line 139
    move-object v2, p1

    .line 140
    move-object v3, v2

    .line 141
    goto :goto_6

    .line 142
    :catch_6
    move-exception p0

    .line 143
    move-object v2, p1

    .line 144
    move-object v3, v2

    .line 145
    move-object p1, p0

    .line 146
    move-object p0, v3

    .line 147
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 152
    .line 153
    .line 154
    if-eqz p0, :cond_6

    .line 155
    .line 156
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 157
    .line 158
    .line 159
    :cond_6
    if-eqz v2, :cond_7

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 162
    .line 163
    .line 164
    :cond_7
    if-eqz v3, :cond_a

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :catch_7
    move-exception p0

    .line 168
    move-object v2, p1

    .line 169
    move-object v3, v2

    .line 170
    move-object p1, p0

    .line 171
    move-object p0, v3

    .line 172
    :goto_3
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 177
    .line 178
    .line 179
    if-eqz p0, :cond_8

    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 182
    .line 183
    .line 184
    :cond_8
    if-eqz v2, :cond_9

    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 187
    .line 188
    .line 189
    :cond_9
    if-eqz v3, :cond_a

    .line 190
    .line 191
    :goto_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 192
    .line 193
    .line 194
    :cond_a
    return-object v1

    .line 195
    :catchall_3
    move-exception p1

    .line 196
    move-object v0, p1

    .line 197
    :goto_5
    move-object p1, p0

    .line 198
    :goto_6
    if-eqz p1, :cond_b

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 201
    .line 202
    .line 203
    :cond_b
    if-eqz v2, :cond_c

    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 206
    .line 207
    .line 208
    :cond_c
    if-eqz v3, :cond_d

    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 211
    .line 212
    .line 213
    :cond_d
    throw v0
.end method

.method public static decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mCipher:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    const/16 p1, 0x10

    .line 21
    .line 22
    new-array p1, p1, [B

    .line 23
    .line 24
    sput-object p1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSalt:[B

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sput-object p1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sput-object p1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 41
    .line 42
    :goto_0
    sget-object p1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mCipher:Ljavax/crypto/Cipher;

    .line 43
    .line 44
    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-virtual {p1, v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Ljavax/crypto/CipherInputStream;

    .line 51
    .line 52
    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mCipher:Ljavax/crypto/Cipher;

    .line 53
    .line 54
    invoke-direct {p1, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 55
    .line 56
    .line 57
    return-object p1
.end method

.method public static encrypt(Ljava/io/File;Ljava/lang/String;I)V
    .locals 7

    .line 1
    const-string v0, "NotifBnRManager"

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    if-lez v2, :cond_2

    .line 27
    .line 28
    new-instance v2, Ljava/io/FileInputStream;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 31
    .line 32
    .line 33
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    .line 34
    .line 35
    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    .line 37
    .line 38
    :try_start_2
    invoke-static {p0, p2}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/16 p2, 0x400

    .line 43
    .line 44
    new-array v1, p2, [B

    .line 45
    .line 46
    :goto_0
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v2, v1, v3, p2}, Ljava/io/InputStream;->read([BII)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/4 v5, -0x1

    .line 52
    if-eq v4, v5, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move-object p2, p0

    .line 59
    move-object p0, p1

    .line 60
    move-object p1, v2

    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p2

    .line 63
    goto/16 :goto_9

    .line 64
    .line 65
    :catch_0
    move-exception p2

    .line 66
    goto :goto_4

    .line 67
    :catch_1
    move-exception p2

    .line 68
    goto :goto_6

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    move-object p2, p0

    .line 71
    goto :goto_2

    .line 72
    :catch_2
    move-exception p0

    .line 73
    move-object p2, p0

    .line 74
    goto :goto_3

    .line 75
    :catch_3
    move-exception p0

    .line 76
    move-object p2, p0

    .line 77
    goto :goto_5

    .line 78
    :cond_2
    move-object p0, p1

    .line 79
    move-object p2, p0

    .line 80
    :goto_1
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 83
    .line 84
    .line 85
    :cond_3
    if-eqz p0, :cond_4

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 88
    .line 89
    .line 90
    :cond_4
    if-eqz p2, :cond_9

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 93
    .line 94
    .line 95
    goto :goto_8

    .line 96
    :catchall_2
    move-exception p0

    .line 97
    move-object p2, p0

    .line 98
    move-object v2, p1

    .line 99
    :goto_2
    move-object p0, p1

    .line 100
    goto :goto_9

    .line 101
    :catch_4
    move-exception p0

    .line 102
    move-object p2, p0

    .line 103
    move-object v2, p1

    .line 104
    :goto_3
    move-object p0, p1

    .line 105
    :goto_4
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 110
    .line 111
    .line 112
    if-eqz v2, :cond_5

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 115
    .line 116
    .line 117
    :cond_5
    if-eqz p1, :cond_6

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 120
    .line 121
    .line 122
    :cond_6
    if-eqz p0, :cond_9

    .line 123
    .line 124
    goto :goto_7

    .line 125
    :catch_5
    move-exception p0

    .line 126
    move-object p2, p0

    .line 127
    move-object v2, p1

    .line 128
    :goto_5
    move-object p0, p1

    .line 129
    :goto_6
    :try_start_4
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 134
    .line 135
    .line 136
    if-eqz v2, :cond_7

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 139
    .line 140
    .line 141
    :cond_7
    if-eqz p1, :cond_8

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 144
    .line 145
    .line 146
    :cond_8
    if-eqz p0, :cond_9

    .line 147
    .line 148
    :goto_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 149
    .line 150
    .line 151
    :cond_9
    :goto_8
    return-void

    .line 152
    :catchall_3
    move-exception p2

    .line 153
    move-object v6, p1

    .line 154
    move-object p1, p0

    .line 155
    move-object p0, v6

    .line 156
    move-object v6, p1

    .line 157
    move-object p1, p0

    .line 158
    move-object p0, v6

    .line 159
    :goto_9
    if-eqz v2, :cond_a

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 162
    .line 163
    .line 164
    :cond_a
    if-eqz p1, :cond_b

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 167
    .line 168
    .line 169
    :cond_b
    if-eqz p0, :cond_c

    .line 170
    .line 171
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 172
    .line 173
    .line 174
    :cond_c
    throw p2
.end method

.method public static encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mCipher:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    new-instance v1, Ljava/security/SecureRandom;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    new-instance p1, Ljava/security/SecureRandom;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    .line 31
    .line 32
    .line 33
    const/16 v2, 0x10

    .line 34
    .line 35
    new-array v2, v2, [B

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 38
    .line 39
    .line 40
    sput-object v2, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSalt:[B

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sput-object p1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sput-object p1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 57
    .line 58
    :goto_0
    sget-object p1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mCipher:Ljavax/crypto/Cipher;

    .line 59
    .line 60
    sget-object v2, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 61
    .line 62
    invoke-virtual {p1, v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljavax/crypto/CipherOutputStream;

    .line 66
    .line 67
    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mCipher:Ljavax/crypto/Cipher;

    .line 68
    .line 69
    invoke-direct {p1, p0, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 70
    .line 71
    .line 72
    return-object p1
.end method

.method public static generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 6

    .line 1
    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecurityPassword:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "PBKDF2WithHmacSHA1"

    .line 8
    .line 9
    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    .line 14
    .line 15
    sget-object v3, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSalt:[B

    .line 16
    .line 17
    const/16 v4, 0x3e8

    .line 18
    .line 19
    const/16 v5, 0x100

    .line 20
    .line 21
    invoke-direct {v2, v0, v3, v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 29
    .line 30
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v2, "AES"

    .line 35
    .line 36
    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v1
.end method

.method public static generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 4

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecurityPassword:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "UTF-8"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x10

    .line 19
    .line 20
    new-array v2, v1, [B

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 31
    .line 32
    const-string v1, "AES"

    .line 33
    .line 34
    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public static loadRestoreFile(Ljava/io/File;Ljava/util/List;)Z
    .locals 7

    .line 1
    const-string v0, "loadRestoreFile failed"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, " filename="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "NotifBnRManager"

    .line 18
    .line 19
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, " filename path="

    .line 25
    .line 26
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    .line 52
    .line 53
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    long-to-int p0, v4

    .line 58
    new-array v1, p0, [B

    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catch_0
    move-exception p0

    .line 68
    invoke-static {v2, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_5

    .line 74
    :catch_1
    move-exception p0

    .line 75
    move-object v6, v3

    .line 76
    move-object v3, v1

    .line 77
    move-object v1, v6

    .line 78
    goto :goto_0

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    goto :goto_4

    .line 81
    :catch_2
    move-exception p0

    .line 82
    move-object v3, v1

    .line 83
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    .line 85
    .line 86
    if-eqz v1, :cond_0

    .line 87
    .line 88
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catch_3
    move-exception p0

    .line 93
    invoke-static {v2, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .line 95
    .line 96
    :cond_0
    :goto_1
    move-object v1, v3

    .line 97
    :goto_2
    const-string p0, "notification"

    .line 98
    .line 99
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {p0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const/4 v0, 0x0

    .line 108
    if-eqz p1, :cond_1

    .line 109
    .line 110
    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-lez v2, :cond_1

    .line 115
    .line 116
    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->setRestoreBlockListForSS(Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    :cond_1
    invoke-interface {p0, v1, v0}, Landroid/app/INotificationManager;->applyRestore([BI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 120
    .line 121
    .line 122
    const/4 v0, 0x1

    .line 123
    goto :goto_3

    .line 124
    :catch_4
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    .line 127
    .line 128
    :goto_3
    return v0

    .line 129
    :goto_4
    move-object v3, v1

    .line 130
    :goto_5
    if-eqz v3, :cond_2

    .line 131
    .line 132
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 133
    .line 134
    .line 135
    goto :goto_6

    .line 136
    :catch_5
    move-exception p1

    .line 137
    invoke-static {v2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .line 139
    .line 140
    :cond_2
    :goto_6
    throw p0
.end method

.method public static sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, " action="

    .line 2
    .line 3
    const-string v1, " resultCode="

    .line 4
    .line 5
    const-string v2, " errorCode="

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " requiredSize=0"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "NotifBnRManager"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroid/content/Intent;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    const-string p1, "RESULT"

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string p1, "ERR_CODE"

    .line 42
    .line 43
    invoke-virtual {p3}, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->getValue()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const-string p1, "REQ_SIZE"

    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    const-string p1, "SOURCE"

    .line 57
    .line 58
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    if-eqz p5, :cond_0

    .line 62
    .line 63
    const-string p1, "EXPORT_SESSION_TIME"

    .line 64
    .line 65
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    :cond_0
    const-string p1, "com.wssnps.permission.COM_WSSNPS"

    .line 69
    .line 70
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string/jumbo p0, "sendBroadcast. "

    .line 74
    .line 75
    .line 76
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public static streamCrypt(Ljava/lang/String;)V
    .locals 3

    .line 1
    sput-object p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecurityPassword:Ljava/lang/String;

    .line 2
    .line 3
    const-string p0, "SHA-256"

    .line 4
    .line 5
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecurityPassword:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "UTF-8"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x10

    .line 21
    .line 22
    new-array v1, v0, [B

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    const-string p0, "AES/CBC/PKCS5Padding"

    .line 33
    .line 34
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sput-object p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mCipher:Ljavax/crypto/Cipher;

    .line 39
    .line 40
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    .line 41
    .line 42
    const-string v0, "AES"

    .line 43
    .line 44
    invoke-direct {p0, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p3

    .line 2
    const-string/jumbo v1, "resultCode="

    .line 3
    .line 4
    .line 5
    const-string/jumbo v2, "start backup basePath="

    .line 6
    .line 7
    .line 8
    const-string v3, " source="

    .line 9
    .line 10
    const-string v4, "NotifBnRManager"

    .line 11
    .line 12
    move-object v9, p4

    .line 13
    invoke-static {v2, p3, v3, p4, v4}, Lcom/android/systemui/keyguard/CustomizationProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    .line 17
    .line 18
    const-string v3, "/"

    .line 19
    .line 20
    invoke-static {p3, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :try_start_0
    invoke-static/range {p7 .. p7}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->streamCrypt(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move/from16 v3, p5

    .line 28
    .line 29
    move-object/from16 v5, p8

    .line 30
    .line 31
    invoke-static {v3, v0, v5}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->createBackupFile(ILjava/lang/String;Ljava/util/List;)I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    if-ne v7, v0, :cond_0

    .line 52
    .line 53
    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    .line 54
    .line 55
    move-object v8, v0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object v8, v2

    .line 58
    :goto_0
    move-object v5, p1

    .line 59
    move-object v6, p2

    .line 60
    move-object v9, p4

    .line 61
    move-object/from16 v10, p6

    .line 62
    .line 63
    invoke-static/range {v5 .. v10}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v6, "com.samsung.android.intent.action.RESPONSE_BACKUP_NOTIFICATION"

    .line 69
    .line 70
    const/4 v7, 0x1

    .line 71
    sget-object v8, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    .line 72
    .line 73
    move-object v5, p1

    .line 74
    move-object v9, p4

    .line 75
    move-object/from16 v10, p6

    .line 76
    .line 77
    invoke-static/range {v5 .. v10}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string/jumbo p0, "start restore basePath="

    .line 2
    .line 3
    .line 4
    const-string v0, " source="

    .line 5
    .line 6
    const-string v1, "NotifBnRManager"

    .line 7
    .line 8
    invoke-static {p0, p3, v0, p4, v1}, Lcom/android/systemui/keyguard/CustomizationProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    .line 12
    .line 13
    const-string v0, "/"

    .line 14
    .line 15
    invoke-static {p3, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    :try_start_0
    invoke-static {p6}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->streamCrypt(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p5, p3}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->decrypt(ILjava/lang/String;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-static {p3, p7}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->loadRestoreFile(Ljava/io/File;Ljava/util/List;)Z

    .line 27
    .line 28
    .line 29
    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    if-nez p3, :cond_0

    .line 31
    .line 32
    sget-object p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    .line 33
    .line 34
    const/4 p3, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p3, 0x0

    .line 37
    :goto_0
    move-object v3, p0

    .line 38
    move v2, p3

    .line 39
    const/4 v5, 0x0

    .line 40
    move-object v0, p1

    .line 41
    move-object v1, p2

    .line 42
    move-object v4, p4

    .line 43
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catch_0
    move-exception p0

    .line 48
    const-string v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_NOTIFICATION"

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    sget-object v3, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    move-object v0, p1

    .line 55
    move-object v4, p4

    .line 56
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    return-void
.end method
