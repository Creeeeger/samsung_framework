.class public final Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;
.super Ljava/lang/Thread;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final PERMISSIONS:[Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;

.field public final mIntent:Landroid/content/Intent;

.field public mLoopEnable:Z

.field public mOption:I

.field public mSecuritylevel:I

.field public mSessionKey:Ljava/lang/String;

.field public mSource:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    .line 2
    .line 3
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 4
    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->PERMISSIONS:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSessionKey:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSource:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mOption:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSecuritylevel:I

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mLoopEnable:Z

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mHandler:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    .line 22
    .line 23
    new-instance p1, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;-><init>(Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mHandler:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "EdgeLightingBRThread"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "intent is null"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v2, "SAVE_PATH"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    .line 20
    .line 21
    const-string v3, "ACTION"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    .line 29
    .line 30
    const-string v5, "SESSION_KEY"

    .line 31
    .line 32
    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iput-object v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSessionKey:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    .line 39
    .line 40
    const-string v5, "SOURCE"

    .line 41
    .line 42
    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iput-object v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSource:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    .line 49
    .line 50
    const-string v5, "SECURITY_LEVEL"

    .line 51
    .line 52
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iput v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSecuritylevel:I

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    .line 59
    .line 60
    const-string v5, "EXPORT_SESSION_TIME"

    .line 61
    .line 62
    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v5, "com.samsung.android.intent.action.REQUEST_RESTORE_EDGELIGHTING"

    .line 72
    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const/4 v5, 0x1

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    iput v5, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mOption:I

    .line 81
    .line 82
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    sget-object v6, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->PERMISSIONS:[Ljava/lang/String;

    .line 85
    .line 86
    aget-object v6, v6, v4

    .line 87
    .line 88
    invoke-virtual {v3, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_2

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    move v4, v5

    .line 96
    :goto_0
    if-nez v4, :cond_3

    .line 97
    .line 98
    const-string v0, "Permission fail"

    .line 99
    .line 100
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    const/4 v0, 0x4

    .line 104
    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(II)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_3
    invoke-static {v0}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mOption:I

    .line 122
    .line 123
    if-ne v1, v5, :cond_6

    .line 124
    .line 125
    if-nez v2, :cond_5

    .line 126
    .line 127
    iput-boolean v5, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mLoopEnable:Z

    .line 128
    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSessionKey:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v1}, Lcom/android/systemui/edgelighting/backup/Encryption;->streamCrypt(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSecuritylevel:I

    .line 135
    .line 136
    invoke-static {v1, v0}, Lcom/android/systemui/edgelighting/backup/Encryption;->decrypt(ILjava/lang/String;)Ljava/io/File;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mContext:Landroid/content/Context;

    .line 143
    .line 144
    invoke-static {v1}, Lcom/android/systemui/edgelighting/backup/BRUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/backup/BRUtils;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mLoopEnable:Z

    .line 149
    .line 150
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/edgelighting/backup/BRUtils;->restoreSettingValue(ZLjava/io/File;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    .line 153
    :cond_4
    new-instance v0, Landroid/os/Handler;

    .line 154
    .line 155
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 160
    .line 161
    .line 162
    new-instance v1, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;

    .line 163
    .line 164
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;-><init>(Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {p0, v5, v5}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(II)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :catch_1
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v5, v5}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(II)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_5
    const/4 v0, 0x3

    .line 188
    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(II)V

    .line 189
    .line 190
    .line 191
    :cond_6
    :goto_1
    return-void
.end method

.method public final sendResponse(II)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mOption:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const-string v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_EDGELIGHTING"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    :cond_0
    const-string v1, "RESULT"

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string p1, "ERR_CODE"

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const-string p1, "REQ_SIZE"

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string p1, "SOURCE"

    .line 33
    .line 34
    iget-object p2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSource:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    const-string p1, "com.wssnps.permission.COM_WSSNPS"

    .line 42
    .line 43
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
