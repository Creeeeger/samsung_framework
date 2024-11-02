.class public Lcom/samsung/android/knox/ddar/DualDARManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final DEBUG:Z

.field public static final DUALDAR_AGENT:Ljava/lang/String; = "KNOXCORE_PROXY_AGENT"

.field public static final DUALDAR_MGR_SERVICE:Ljava/lang/String; = "DUALDAR_MGR_SERVICE"

.field private static final DUAL_DAR_CLIENT:Ljava/lang/String; = "DUAL_DAR_CLIENT"

.field public static final FETCH_DUMPSTATE_REQUEST:Ljava/lang/String; = "FETCH_DUMPSTATE_REQUEST"

.field public static final GET_CLIENT_VERSION_REQUEST:Ljava/lang/String; = "GET_CLIENT_VERSION_REQUEST"

.field public static final GET_DUALDAR_USERS_REQUEST:Ljava/lang/String; = "GET_DUALDAR_USERS_REQUEST"

.field public static final INSTALL_CLIENT_LIBRARY_REQUEST:Ljava/lang/String; = "INSTALL_CLIENT_LIBRARY_REQUEST"

.field private static final LOAD_RETRY_COUNT:I = 0x5

.field public static final ON_AGENT_RECONNECTED:Ljava/lang/String; = "ON_AGENT_RECONNECTED"

.field public static final PUSH_SECRET_REQUEST:Ljava/lang/String; = "PUSH_SECRET_REQUEST"

.field private static final TAG:Ljava/lang/String; = "DualDarManager"

.field private static mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSecureClientOutAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "eng"

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private declared-synchronized fetchDumpState(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "FS Log File fd="

    .line 2
    .line 3
    const-string v1, "Exception at fetchDumpState - "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromPathForWrite(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-eqz v3, :cond_7

    .line 13
    .line 14
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_0
    sget-boolean p1, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const-string v4, "DualDarManager"

    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v4, "FSLOG_FILE_INFO"

    .line 52
    .line 53
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    .line 55
    .line 56
    const-string v4, "FETCH_DUMPSTATE_REQUEST"

    .line 57
    .line 58
    invoke-direct {p0, v4, v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v4, 0x1

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    const-string v5, "dual_dar_response"

    .line 66
    .line 67
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    move v0, v4

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move v0, v2

    .line 76
    :goto_0
    if-nez v0, :cond_4

    .line 77
    .line 78
    const-string p1, "DualDarManager"

    .line 79
    .line 80
    const-string v0, "Fetch DumpState failed !!"

    .line 81
    .line 82
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    :try_start_1
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_0
    move-exception p1

    .line 94
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_1
    monitor-exit p0

    .line 98
    return v2

    .line 99
    :cond_4
    if-eqz p1, :cond_5

    .line 100
    .line 101
    :try_start_4
    const-string p1, "DualDarManager"

    .line 102
    .line 103
    const-string v0, "Fetch DumpState Success"

    .line 104
    .line 105
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    .line 107
    .line 108
    :cond_5
    :try_start_5
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 109
    .line 110
    if-eqz p1, :cond_6

    .line 111
    .line 112
    :try_start_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catch_1
    move-exception p1

    .line 117
    :try_start_7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 118
    .line 119
    .line 120
    :cond_6
    :goto_2
    monitor-exit p0

    .line 121
    return v4

    .line 122
    :cond_7
    :goto_3
    :try_start_8
    const-string p1, "DualDarManager"

    .line 123
    .line 124
    const-string v0, "Error: Not able to open the Log files"

    .line 125
    .line 126
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 127
    .line 128
    .line 129
    if-eqz v3, :cond_8

    .line 130
    .line 131
    :try_start_9
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 132
    .line 133
    if-eqz p1, :cond_8

    .line 134
    .line 135
    :try_start_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :catch_2
    move-exception p1

    .line 140
    :try_start_b
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 141
    .line 142
    .line 143
    :cond_8
    :goto_4
    monitor-exit p0

    .line 144
    return v2

    .line 145
    :catchall_0
    move-exception p1

    .line 146
    goto :goto_6

    .line 147
    :catch_3
    move-exception p1

    .line 148
    :try_start_c
    const-string v0, "DualDarManager"

    .line 149
    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 170
    .line 171
    .line 172
    if-eqz v3, :cond_9

    .line 173
    .line 174
    :try_start_d
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 175
    .line 176
    if-eqz p1, :cond_9

    .line 177
    .line 178
    :try_start_e
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :catch_4
    move-exception p1

    .line 183
    :try_start_f
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 184
    .line 185
    .line 186
    :cond_9
    :goto_5
    monitor-exit p0

    .line 187
    return v2

    .line 188
    :goto_6
    if-eqz v3, :cond_a

    .line 189
    .line 190
    :try_start_10
    iget-object v0, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 191
    .line 192
    if-eqz v0, :cond_a

    .line 193
    .line 194
    :try_start_11
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 195
    .line 196
    .line 197
    goto :goto_7

    .line 198
    :catch_5
    move-exception v0

    .line 199
    :try_start_12
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    .line 201
    .line 202
    :cond_a
    :goto_7
    throw p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 203
    :catchall_1
    move-exception p1

    .line 204
    monitor-exit p0

    .line 205
    throw p1
.end method

.method private getFdFromAsset(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;
    .locals 11

    .line 1
    const-string v0, "DualDarManager"

    .line 2
    .line 3
    const-string v1, "Found FSRelay file: "

    .line 4
    .line 5
    const-string v2, "FileName: "

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    return-object v3

    .line 17
    :cond_0
    :try_start_0
    sget-boolean v4, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_2
    if-nez p0, :cond_3

    .line 58
    .line 59
    return-object v3

    .line 60
    :cond_3
    new-instance v1, Lcom/samsung/android/knox/ddar/FileInfo;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 67
    .line 68
    .line 69
    move-result-wide v7

    .line 70
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 71
    .line 72
    .line 73
    move-result-wide v9

    .line 74
    move-object v4, v1

    .line 75
    move-object v5, p1

    .line 76
    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/knox/ddar/FileInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :catch_0
    move-exception p0

    .line 81
    const-string p1, "general exception"

    .line 82
    .line 83
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    return-object v3

    .line 90
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, "FSRelay file not found: "

    .line 93
    .line 94
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    return-object v3
.end method

.method private getFdFromPath(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;
    .locals 9

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/high16 v1, 0x10000000

    .line 16
    .line 17
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/16 v1, 0x2f

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-instance p1, Lcom/samsung/android/knox/ddar/FileInfo;

    .line 34
    .line 35
    const-wide/16 v5, 0x0

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    move-object v2, p1

    .line 42
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/ddar/FileInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    throw p0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-object p0
.end method

.method private getFdFromPathForWrite(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;
    .locals 9

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/high16 v1, 0x20000000

    .line 16
    .line 17
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/16 v1, 0x2f

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-instance p1, Lcom/samsung/android/knox/ddar/FileInfo;

    .line 34
    .line 35
    const-wide/16 v5, 0x0

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    move-object v2, p1

    .line 42
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/ddar/FileInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    throw p0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/knox/ddar/DualDARManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/ddar/DualDARManager;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ddar/DualDARManager;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method

.method private declared-synchronized installLibraryInternal(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    const-string v0, "FSRelay fd="

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromAsset(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromPath(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :goto_0
    if-nez v3, :cond_3

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    :try_start_2
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    :try_start_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Lcom/samsung/android/knox/ddar/FileInfo;

    .line 59
    .line 60
    iget-object p2, p2, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catch_1
    move-exception p1

    .line 67
    :try_start_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 68
    .line 69
    .line 70
    :cond_2
    monitor-exit p0

    .line 71
    return v2

    .line 72
    :cond_3
    :try_start_7
    iget-object v4, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 73
    .line 74
    if-eqz v4, :cond_13

    .line 75
    .line 76
    iget-wide v4, v3, Lcom/samsung/android/knox/ddar/FileInfo;->offset:J

    .line 77
    .line 78
    const-wide/16 v6, 0x0

    .line 79
    .line 80
    cmp-long v4, v4, v6

    .line 81
    .line 82
    if-ltz v4, :cond_13

    .line 83
    .line 84
    iget-wide v4, v3, Lcom/samsung/android/knox/ddar/FileInfo;->len:J

    .line 85
    .line 86
    cmp-long v4, v4, v6

    .line 87
    .line 88
    if-gez v4, :cond_4

    .line 89
    .line 90
    goto/16 :goto_b

    .line 91
    .line 92
    :cond_4
    sget-boolean v4, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    .line 93
    .line 94
    if-eqz v4, :cond_5

    .line 95
    .line 96
    const-string v4, "DualDarManager"

    .line 97
    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, " offset="

    .line 113
    .line 114
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-wide v6, v3, Lcom/samsung/android/knox/ddar/FileInfo;->offset:J

    .line 118
    .line 119
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v0, " len="

    .line 123
    .line 124
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-wide v6, v3, Lcom/samsung/android/knox/ddar/FileInfo;->len:J

    .line 128
    .line 129
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :cond_5
    if-eqz p2, :cond_7

    .line 140
    .line 141
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_7

    .line 146
    .line 147
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Ljava/lang/String;

    .line 162
    .line 163
    if-eqz p3, :cond_6

    .line 164
    .line 165
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromAsset(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_6
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromPath(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    sget-boolean p2, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    .line 182
    .line 183
    if-eqz p2, :cond_8

    .line 184
    .line 185
    const-string p2, "DualDarManager"

    .line 186
    .line 187
    new-instance p3, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v0, "load FSRelay "

    .line 193
    .line 194
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string p1, " from app"

    .line 201
    .line 202
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    :cond_8
    move p1, v2

    .line 213
    move p2, p1

    .line 214
    :goto_4
    const/4 p3, 0x5

    .line 215
    const/4 v0, 0x1

    .line 216
    if-ge p1, p3, :cond_c

    .line 217
    .line 218
    new-instance p2, Landroid/os/Bundle;

    .line 219
    .line 220
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 221
    .line 222
    .line 223
    const-string p3, "RELAY_FILE_INFO"

    .line 224
    .line 225
    invoke-virtual {p2, p3, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 229
    .line 230
    .line 231
    move-result p3

    .line 232
    if-nez p3, :cond_9

    .line 233
    .line 234
    const-string p3, "CRYPTO_FILE_INFO"

    .line 235
    .line 236
    new-array v4, v2, [Lcom/samsung/android/knox/ddar/FileInfo;

    .line 237
    .line 238
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    check-cast v4, [Landroid/os/Parcelable;

    .line 243
    .line 244
    invoke-virtual {p2, p3, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 245
    .line 246
    .line 247
    :cond_9
    const-string p3, "INSTALL_CLIENT_LIBRARY_REQUEST"

    .line 248
    .line 249
    invoke-direct {p0, p3, p2}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    if-eqz p2, :cond_a

    .line 254
    .line 255
    const-string p3, "dual_dar_response"

    .line 256
    .line 257
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    if-eqz p2, :cond_a

    .line 262
    .line 263
    move p2, v0

    .line 264
    goto :goto_5

    .line 265
    :cond_a
    move p2, v2

    .line 266
    :goto_5
    if-eqz p2, :cond_b

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_b
    const-string p3, "DualDarManager"

    .line 270
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v4, "FSRelay loading failure: "

    .line 277
    .line 278
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    add-int/lit8 p1, p1, 0x1

    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_c
    :goto_6
    if-nez p2, :cond_f

    .line 295
    .line 296
    const-string p1, "DualDarManager"

    .line 297
    .line 298
    const-string p2, "FSRelay Load failed !!"

    .line 299
    .line 300
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 301
    .line 302
    .line 303
    :try_start_8
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 304
    .line 305
    if-eqz p1, :cond_d

    .line 306
    .line 307
    :try_start_9
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 308
    .line 309
    .line 310
    goto :goto_7

    .line 311
    :catch_2
    move-exception p1

    .line 312
    :try_start_a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 313
    .line 314
    .line 315
    :cond_d
    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 316
    .line 317
    .line 318
    move-result p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 319
    if-nez p1, :cond_e

    .line 320
    .line 321
    :try_start_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result p2

    .line 329
    if-eqz p2, :cond_e

    .line 330
    .line 331
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    check-cast p2, Lcom/samsung/android/knox/ddar/FileInfo;

    .line 336
    .line 337
    iget-object p2, p2, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 338
    .line 339
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 340
    .line 341
    .line 342
    goto :goto_8

    .line 343
    :catch_3
    move-exception p1

    .line 344
    :try_start_c
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 345
    .line 346
    .line 347
    :cond_e
    monitor-exit p0

    .line 348
    return v2

    .line 349
    :cond_f
    :try_start_d
    sget-boolean p1, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    .line 350
    .line 351
    if-eqz p1, :cond_10

    .line 352
    .line 353
    const-string p1, "DualDarManager"

    .line 354
    .line 355
    const-string p2, "FSRelay Loaded Successfully"

    .line 356
    .line 357
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 358
    .line 359
    .line 360
    :cond_10
    :try_start_e
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 361
    .line 362
    if-eqz p1, :cond_11

    .line 363
    .line 364
    :try_start_f
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 365
    .line 366
    .line 367
    goto :goto_9

    .line 368
    :catch_4
    move-exception p1

    .line 369
    :try_start_10
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 370
    .line 371
    .line 372
    :cond_11
    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 373
    .line 374
    .line 375
    move-result p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 376
    if-nez p1, :cond_12

    .line 377
    .line 378
    :try_start_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 383
    .line 384
    .line 385
    move-result p2

    .line 386
    if-eqz p2, :cond_12

    .line 387
    .line 388
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object p2

    .line 392
    check-cast p2, Lcom/samsung/android/knox/ddar/FileInfo;

    .line 393
    .line 394
    iget-object p2, p2, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 395
    .line 396
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 397
    .line 398
    .line 399
    goto :goto_a

    .line 400
    :catch_5
    move-exception p1

    .line 401
    :try_start_12
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 402
    .line 403
    .line 404
    :cond_12
    monitor-exit p0

    .line 405
    return v0

    .line 406
    :cond_13
    :goto_b
    :try_start_13
    const-string p1, "DualDarManager"

    .line 407
    .line 408
    const-string p2, "pfd is null"

    .line 409
    .line 410
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 411
    .line 412
    .line 413
    :try_start_14
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 414
    .line 415
    if-eqz p1, :cond_14

    .line 416
    .line 417
    :try_start_15
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 418
    .line 419
    .line 420
    goto :goto_c

    .line 421
    :catch_6
    move-exception p1

    .line 422
    :try_start_16
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 423
    .line 424
    .line 425
    :cond_14
    :goto_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 426
    .line 427
    .line 428
    move-result p1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 429
    if-nez p1, :cond_15

    .line 430
    .line 431
    :try_start_17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 436
    .line 437
    .line 438
    move-result p2

    .line 439
    if-eqz p2, :cond_15

    .line 440
    .line 441
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object p2

    .line 445
    check-cast p2, Lcom/samsung/android/knox/ddar/FileInfo;

    .line 446
    .line 447
    iget-object p2, p2, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 448
    .line 449
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 450
    .line 451
    .line 452
    goto :goto_d

    .line 453
    :catch_7
    move-exception p1

    .line 454
    :try_start_18
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 455
    .line 456
    .line 457
    :cond_15
    monitor-exit p0

    .line 458
    return v2

    .line 459
    :catchall_0
    move-exception p1

    .line 460
    goto :goto_10

    .line 461
    :catch_8
    move-exception p1

    .line 462
    :try_start_19
    const-string p2, "DualDarManager"

    .line 463
    .line 464
    new-instance p3, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .line 468
    .line 469
    const-string v0, "Exception at installLibrary - "

    .line 470
    .line 471
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object p3

    .line 485
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .line 487
    .line 488
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 489
    .line 490
    .line 491
    if-eqz v3, :cond_16

    .line 492
    .line 493
    :try_start_1a
    iget-object p1, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 494
    .line 495
    if-eqz p1, :cond_16

    .line 496
    .line 497
    :try_start_1b
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_9
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 498
    .line 499
    .line 500
    goto :goto_e

    .line 501
    :catch_9
    move-exception p1

    .line 502
    :try_start_1c
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 503
    .line 504
    .line 505
    :cond_16
    :goto_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 506
    .line 507
    .line 508
    move-result p1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 509
    if-nez p1, :cond_17

    .line 510
    .line 511
    :try_start_1d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 516
    .line 517
    .line 518
    move-result p2

    .line 519
    if-eqz p2, :cond_17

    .line 520
    .line 521
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object p2

    .line 525
    check-cast p2, Lcom/samsung/android/knox/ddar/FileInfo;

    .line 526
    .line 527
    iget-object p2, p2, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 528
    .line 529
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 530
    .line 531
    .line 532
    goto :goto_f

    .line 533
    :catch_a
    move-exception p1

    .line 534
    :try_start_1e
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 535
    .line 536
    .line 537
    :cond_17
    monitor-exit p0

    .line 538
    return v2

    .line 539
    :goto_10
    if-eqz v3, :cond_18

    .line 540
    .line 541
    :try_start_1f
    iget-object p2, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 542
    .line 543
    if-eqz p2, :cond_18

    .line 544
    .line 545
    :try_start_20
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_b
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 546
    .line 547
    .line 548
    goto :goto_11

    .line 549
    :catch_b
    move-exception p2

    .line 550
    :try_start_21
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 551
    .line 552
    .line 553
    :cond_18
    :goto_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 554
    .line 555
    .line 556
    move-result p2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    .line 557
    if-nez p2, :cond_19

    .line 558
    .line 559
    :try_start_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 560
    .line 561
    .line 562
    move-result-object p2

    .line 563
    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 564
    .line 565
    .line 566
    move-result p3

    .line 567
    if-eqz p3, :cond_19

    .line 568
    .line 569
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object p3

    .line 573
    check-cast p3, Lcom/samsung/android/knox/ddar/FileInfo;

    .line 574
    .line 575
    iget-object p3, p3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 576
    .line 577
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_c
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    .line 578
    .line 579
    .line 580
    goto :goto_12

    .line 581
    :catch_c
    move-exception p2

    .line 582
    :try_start_23
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 583
    .line 584
    .line 585
    :cond_19
    throw p1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    .line 586
    :catchall_1
    move-exception p1

    .line 587
    monitor-exit p0

    .line 588
    throw p1
.end method

.method private processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "KNOXCORE_PROXY_AGENT"

    .line 8
    .line 9
    const-string v1, "DUALDAR_MGR_SERVICE"

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->relayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private processCommandSecurely(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "KNOXCORE_PROXY_AGENT"

    .line 8
    .line 9
    const-string v3, "DUALDAR_MGR_SERVICE"

    .line 10
    .line 11
    iget-object v6, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mSecureClientOutAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    .line 12
    .line 13
    move-object v4, p1

    .line 14
    move-object v5, p2

    .line 15
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->relayMessageSecurely(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method


# virtual methods
.method public bindClient(Lcom/samsung/android/knox/ddar/IDualDARClient;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/samsung/android/knox/ddar/DualDarClientManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)Lcom/samsung/android/knox/ddar/DualDarClientManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public establishSecureSession()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "DUAL_DAR_CLIENT"

    .line 8
    .line 9
    const-string v2, "KNOXCORE_PROXY_AGENT"

    .line 10
    .line 11
    const-string v3, "DUALDAR_MGR_SERVICE"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->initializeSecureSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mSecureClientOutAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-string v0, "DualDarManager"

    .line 22
    .line 23
    const-string v1, "Failed to establish secure connection from SDK to KnoxCore"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public declared-synchronized getDualDARUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "GET_DUALDAR_USERS_REQUEST"

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "DualDarManager"

    .line 12
    .line 13
    const-string v2, "Failed to get service"

    .line 14
    .line 15
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object v1

    .line 20
    :cond_0
    :try_start_1
    const-string v1, "USERS"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method

.method public declared-synchronized getFileSystemLog(Ljava/lang/String;)Z
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDARManager;->fetchDumpState(Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method public getInstalledClientLibraryVersion()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "GET_CLIENT_VERSION_REQUEST"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string p0, "DualDarManager"

    .line 11
    .line 12
    const-string v0, "Failed to get service"

    .line 13
    .line 14
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    const-string v0, "CLIENT_VERSION"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public declared-synchronized installLibrary(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/ddar/DualDARManager;->installLibraryInternal(Ljava/lang/String;Ljava/util/List;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method public onAgentReconnected()V
    .locals 2

    .line 1
    const-string v0, "ON_AGENT_RECONNECTED"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public declared-synchronized setSecret(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/ddar/Secret;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "DualDarManager"

    .line 3
    .line 4
    const-string v1, "setSecret() "

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    .line 9
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/samsung/android/knox/ddar/Secret;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mSecureClientOutAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    .line 36
    .line 37
    const-string v5, "DUALDAR_MGR_SERVICE"

    .line 38
    .line 39
    iget-object v6, v3, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    .line 40
    .line 41
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->encryptMessageFor(Ljava/lang/String;[B)[B

    .line 42
    .line 43
    .line 44
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception v4

    .line 47
    :try_start_3
    const-string v5, "DualDarManager"

    .line 48
    .line 49
    const-string v6, "PUSH_SECRET_REQUEST failed to encrypt secrets"

    .line 50
    .line 51
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    :goto_1
    iget-object v5, v3, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    .line 59
    .line 60
    invoke-static {v5}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 61
    .line 62
    .line 63
    new-instance v5, Lcom/samsung/android/knox/ddar/Secret;

    .line 64
    .line 65
    iget-object v3, v3, Lcom/samsung/android/knox/ddar/Secret;->alias:Ljava/lang/String;

    .line 66
    .line 67
    invoke-direct {v5, v3, v4}, Lcom/samsung/android/knox/ddar/Secret;-><init>(Ljava/lang/String;[B)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 75
    .line 76
    .line 77
    const-string p2, "INNER_LAYER_SECRET"

    .line 78
    .line 79
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 80
    .line 81
    .line 82
    const-string p2, "user_id"

    .line 83
    .line 84
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    const-string p1, "PUSH_SECRET_REQUEST"

    .line 88
    .line 89
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommandSecurely(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lcom/samsung/android/knox/ddar/Secret;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    .line 110
    .line 111
    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 116
    .line 117
    .line 118
    if-eqz p1, :cond_2

    .line 119
    .line 120
    const-string p2, "dual_dar_response"

    .line 121
    .line 122
    const/4 v0, 0x1

    .line 123
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    goto :goto_3

    .line 128
    :cond_2
    const/4 p1, 0x0

    .line 129
    :goto_3
    const-string p2, "DualDarManager"

    .line 130
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v1, "PUSH_SECRET_REQUEST response: "

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :catchall_0
    move-exception p1

    .line 153
    goto :goto_5

    .line 154
    :catch_1
    move-exception p1

    .line 155
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    .line 157
    .line 158
    :goto_4
    monitor-exit p0

    .line 159
    return-void

    .line 160
    :goto_5
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 161
    :catchall_1
    move-exception p1

    .line 162
    monitor-exit p0

    .line 163
    throw p1
.end method

.method public teardownSecureSession()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mSecureClientOutAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    .line 8
    .line 9
    const-string v2, "KNOXCORE_PROXY_AGENT"

    .line 10
    .line 11
    const-string v3, "DUALDAR_MGR_SERVICE"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->terminateSecureSession(Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mSecureClientOutAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-string v0, "DualDarManager"

    .line 22
    .line 23
    const-string v1, "Failed to teardown secure connection from SDK to KnoxCore"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method
