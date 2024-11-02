.class public final Lcom/android/systemui/edgelighting/backup/Encryption;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static mCipher:Ljavax/crypto/Cipher;

.field public static mSalt:[B

.field public static secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field public static securityPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(ILjava/lang/String;)Ljava/io/File;
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/decrypt_cocktailbar.xml"

    .line 4
    .line 5
    invoke-static {p1, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    const-string v2, "/encrypt_cocktailbar.xml"

    .line 15
    .line 16
    invoke-static {p1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    const-wide/16 v4, 0x0

    .line 45
    .line 46
    cmp-long v2, v2, v4

    .line 47
    .line 48
    if-lez v2, :cond_3

    .line 49
    .line 50
    new-instance v2, Ljava/io/FileInputStream;

    .line 51
    .line 52
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 53
    .line 54
    .line 55
    :try_start_1
    invoke-static {v2, p0}, Lcom/android/systemui/edgelighting/backup/Encryption;->decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    .line 60
    .line 61
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    .line 64
    const/16 p1, 0x400

    .line 65
    .line 66
    :try_start_3
    new-array v3, p1, [B

    .line 67
    .line 68
    :goto_0
    const/4 v4, 0x0

    .line 69
    invoke-virtual {p0, v3, v4, p1}, Ljava/io/InputStream;->read([BII)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    const/4 v6, -0x1

    .line 74
    if-eq v5, v6, :cond_2

    .line 75
    .line 76
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move-object p1, p0

    .line 81
    goto :goto_1

    .line 82
    :catch_0
    move-exception p1

    .line 83
    goto :goto_2

    .line 84
    :catch_1
    move-exception p1

    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :catchall_0
    move-exception v0

    .line 88
    move-object v1, p1

    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :catch_2
    move-exception v1

    .line 92
    move-object v7, v1

    .line 93
    move-object v1, p1

    .line 94
    move-object p1, v7

    .line 95
    goto :goto_2

    .line 96
    :catch_3
    move-exception v1

    .line 97
    move-object v7, v1

    .line 98
    move-object v1, p1

    .line 99
    move-object p1, v7

    .line 100
    goto :goto_3

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    move-object v1, p1

    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :catch_4
    move-exception p0

    .line 106
    move-object v1, p1

    .line 107
    move-object p1, p0

    .line 108
    move-object p0, v1

    .line 109
    goto :goto_2

    .line 110
    :catch_5
    move-exception p0

    .line 111
    move-object v1, p1

    .line 112
    move-object p1, p0

    .line 113
    move-object p0, v1

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    move-object v1, p1

    .line 116
    move-object v2, v1

    .line 117
    :goto_1
    if-eqz p1, :cond_4

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 120
    .line 121
    .line 122
    :cond_4
    if-eqz v1, :cond_5

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 125
    .line 126
    .line 127
    :cond_5
    if-eqz v2, :cond_a

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :catchall_2
    move-exception p0

    .line 131
    move-object v0, p0

    .line 132
    move-object v1, p1

    .line 133
    move-object v2, v1

    .line 134
    goto :goto_6

    .line 135
    :catch_6
    move-exception p0

    .line 136
    move-object v1, p1

    .line 137
    move-object v2, v1

    .line 138
    move-object p1, p0

    .line 139
    move-object p0, v2

    .line 140
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 141
    .line 142
    .line 143
    if-eqz p0, :cond_6

    .line 144
    .line 145
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 146
    .line 147
    .line 148
    :cond_6
    if-eqz v1, :cond_7

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 151
    .line 152
    .line 153
    :cond_7
    if-eqz v2, :cond_a

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :catch_7
    move-exception p0

    .line 157
    move-object v1, p1

    .line 158
    move-object v2, v1

    .line 159
    move-object p1, p0

    .line 160
    move-object p0, v2

    .line 161
    :goto_3
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 162
    .line 163
    .line 164
    if-eqz p0, :cond_8

    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 167
    .line 168
    .line 169
    :cond_8
    if-eqz v1, :cond_9

    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 172
    .line 173
    .line 174
    :cond_9
    if-eqz v2, :cond_a

    .line 175
    .line 176
    :goto_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 177
    .line 178
    .line 179
    :cond_a
    return-object v0

    .line 180
    :catchall_3
    move-exception p1

    .line 181
    move-object v0, p1

    .line 182
    :goto_5
    move-object p1, p0

    .line 183
    :goto_6
    if-eqz p1, :cond_b

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 186
    .line 187
    .line 188
    :cond_b
    if-eqz v1, :cond_c

    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 191
    .line 192
    .line 193
    :cond_c
    if-eqz v2, :cond_d

    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 196
    .line 197
    .line 198
    :cond_d
    throw v0
.end method

.method public static decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 7

    .line 1
    sget-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->mCipher:Ljavax/crypto/Cipher;

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
    const-string v2, "AES"

    .line 19
    .line 20
    const/16 v3, 0x10

    .line 21
    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    .line 24
    new-array p1, v3, [B

    .line 25
    .line 26
    sput-object p1, Lcom/android/systemui/edgelighting/backup/Encryption;->mSalt:[B

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 29
    .line 30
    .line 31
    sget-object p1, Lcom/android/systemui/edgelighting/backup/Encryption;->securityPassword:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "PBKDF2WithHmacSHA1"

    .line 38
    .line 39
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    .line 44
    .line 45
    sget-object v4, Lcom/android/systemui/edgelighting/backup/Encryption;->mSalt:[B

    .line 46
    .line 47
    const/16 v5, 0x3e8

    .line 48
    .line 49
    const/16 v6, 0x100

    .line 50
    .line 51
    invoke-direct {v3, p1, v4, v5, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 59
    .line 60
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v0, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const-string p1, "SHA-256"

    .line 71
    .line 72
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->securityPassword:Ljava/lang/String;

    .line 77
    .line 78
    const-string v4, "UTF-8"

    .line 79
    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 85
    .line 86
    .line 87
    new-array v0, v3, [B

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const/4 v4, 0x0

    .line 94
    invoke-static {p1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    .line 96
    .line 97
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 98
    .line 99
    invoke-direct {p1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sput-object p1, Lcom/android/systemui/edgelighting/backup/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 103
    .line 104
    :goto_0
    sget-object p1, Lcom/android/systemui/edgelighting/backup/Encryption;->mCipher:Ljavax/crypto/Cipher;

    .line 105
    .line 106
    sget-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 107
    .line 108
    const/4 v2, 0x2

    .line 109
    invoke-virtual {p1, v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 110
    .line 111
    .line 112
    new-instance p1, Ljavax/crypto/CipherInputStream;

    .line 113
    .line 114
    sget-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->mCipher:Ljavax/crypto/Cipher;

    .line 115
    .line 116
    invoke-direct {p1, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 117
    .line 118
    .line 119
    return-object p1
.end method

.method public static streamCrypt(Ljava/lang/String;)V
    .locals 3

    .line 1
    sput-object p0, Lcom/android/systemui/edgelighting/backup/Encryption;->securityPassword:Ljava/lang/String;

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
    sget-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->securityPassword:Ljava/lang/String;

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
    sput-object p0, Lcom/android/systemui/edgelighting/backup/Encryption;->mCipher:Ljavax/crypto/Cipher;

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
    sput-object p0, Lcom/android/systemui/edgelighting/backup/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 48
    .line 49
    return-void
.end method
