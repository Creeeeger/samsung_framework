.class public final Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBody:Lorg/json/JSONObject;

.field public final mMethod:Ljava/lang/String;

.field public final mURLConnection:Ljava/net/HttpURLConnection;

.field public final response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    const-string v1, "application/json"

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 14
    iput-object v2, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 15
    :try_start_0
    new-instance v2, Ljava/net/URL;

    sget-object v3, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->DEVICE_KEY:Ljava/lang/String;

    const-string v3, "https://diagmon-serviceapi.samsungdm.com"

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance p3, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    invoke-direct {p3}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;-><init>()V

    iput-object p3, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    .line 17
    iput-object p4, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mMethod:Ljava/lang/String;

    .line 18
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;

    iput-object p3, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 19
    invoke-virtual {p3, p4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p0, "Content-Type"

    .line 20
    invoke-virtual {p3, p0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Accept"

    .line 21
    invoke-virtual {p3, p0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Authorization"

    const-string v1, "JWT_TOKEN"

    .line 22
    invoke-static {p1, v1, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAuth(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p5, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->makeAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 24
    invoke-static {p1, p2, p5, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->makeAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p3, p0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x7d0

    .line 26
    invoke-virtual {p3, p0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 27
    invoke-virtual {p3, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string p0, "GET"

    .line 28
    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p3, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p3, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, " constructor?"

    .line 31
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "application/json"

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 34
    :try_start_0
    new-instance v1, Ljava/net/URL;

    sget-object v2, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->DEVICE_KEY:Ljava/lang/String;

    const-string v2, "https://diagmon-serviceapi.samsungdm.com"

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v2, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    invoke-direct {v2}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;-><init>()V

    iput-object v2, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    .line 36
    iput-object p5, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mBody:Lorg/json/JSONObject;

    .line 37
    iput-object p3, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mMethod:Ljava/lang/String;

    .line 38
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 39
    invoke-virtual {v1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p0, "Content-Type"

    .line 40
    invoke-virtual {v1, p0, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Accept"

    .line 41
    invoke-virtual {v1, p0, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Authorization"

    .line 42
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "JWT_TOKEN"

    const-string v2, ""

    .line 43
    invoke-static {p1, v0, v2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAuth(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p4, p5, v0}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->makeAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 45
    invoke-static {p1, p2, p4, p5, v0}, Lcom/sec/android/diagmonagent/log/ged/util/RestUtils;->makeAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {v1, p0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x7d0

    .line 47
    invoke-virtual {v1, p0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 48
    invoke-virtual {v1, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string p0, "GET"

    .line 49
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " constructor?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "URL : "

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    invoke-direct {p1}, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;-><init>()V

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    .line 6
    iput-object p2, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mMethod:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 8
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p0, 0x7d0

    .line 9
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 10
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p0, 0x1

    .line 11
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    sget-object p1, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "constructor?"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final execute()Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Client - execute()"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mMethod:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v2, "GET"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-string v5, "JSON = "

    .line 20
    .line 21
    const-string v6, "bufferedReader end"

    .line 22
    .line 23
    const-string v7, "bufferedReader start"

    .line 24
    .line 25
    const-string v8, "in is null"

    .line 26
    .line 27
    const/16 v9, 0xc8

    .line 28
    .line 29
    const-string v10, "UTF-8"

    .line 30
    .line 31
    const-string v11, " failed to getInputStream()"

    .line 32
    .line 33
    const/4 v12, 0x0

    .line 34
    const/16 v13, 0x80

    .line 35
    .line 36
    const-string v14, "failed to close()"

    .line 37
    .line 38
    iget-object v15, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->response:Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;

    .line 39
    .line 40
    iget-object v4, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 41
    .line 42
    if-nez v2, :cond_d

    .line 43
    .line 44
    const-string v2, "POST"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_c

    .line 51
    .line 52
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, " bufferedWriter start"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 73
    .line 74
    .line 75
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 76
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    .line 77
    .line 78
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 79
    .line 80
    invoke-direct {v3, v1, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 84
    .line 85
    .line 86
    :try_start_2
    iget-object v0, v0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/client/DiagmonClient;->mBody:Lorg/json/JSONObject;

    .line 87
    .line 88
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 96
    .line 97
    .line 98
    const-string v0, "bufferedWriter end"

    .line 99
    .line 100
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iput v0, v15, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-ne v0, v9, :cond_0

    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 127
    .line 128
    .line 129
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 130
    :goto_0
    move-object v3, v0

    .line 131
    if-eqz v3, :cond_2

    .line 132
    .line 133
    :try_start_3
    invoke-static {v7}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-array v0, v13, [C

    .line 137
    .line 138
    new-instance v7, Ljava/lang/StringBuffer;

    .line 139
    .line 140
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .line 142
    .line 143
    new-instance v8, Ljava/io/BufferedReader;

    .line 144
    .line 145
    new-instance v9, Ljava/io/InputStreamReader;

    .line 146
    .line 147
    invoke-direct {v9, v3, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    .line 152
    .line 153
    :goto_1
    :try_start_4
    invoke-virtual {v8, v0, v12, v13}, Ljava/io/BufferedReader;->read([CII)I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    const/4 v10, -0x1

    .line 158
    if-eq v9, v10, :cond_1

    .line 159
    .line 160
    invoke-virtual {v7, v0, v12, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_1
    invoke-static {v6}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iput-object v0, v15, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 172
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v5, v15, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 191
    .line 192
    .line 193
    move-object/from16 v16, v8

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :catchall_0
    move-exception v0

    .line 197
    move-object v4, v8

    .line 198
    goto/16 :goto_d

    .line 199
    .line 200
    :catch_0
    move-exception v0

    .line 201
    move-object/from16 v16, v8

    .line 202
    .line 203
    goto :goto_9

    .line 204
    :cond_2
    :try_start_5
    invoke-static {v8}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 205
    .line 206
    .line 207
    const/16 v16, 0x0

    .line 208
    .line 209
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 210
    .line 211
    .line 212
    if-eqz v1, :cond_3

    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 215
    .line 216
    .line 217
    :cond_3
    if-eqz v16, :cond_4

    .line 218
    .line 219
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 220
    .line 221
    .line 222
    :cond_4
    if-eqz v3, :cond_13

    .line 223
    .line 224
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 225
    .line 226
    .line 227
    goto/16 :goto_19

    .line 228
    .line 229
    :catch_1
    move-exception v0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    goto :goto_c

    .line 236
    :catchall_1
    move-exception v0

    .line 237
    goto :goto_3

    .line 238
    :catch_2
    move-exception v0

    .line 239
    goto :goto_8

    .line 240
    :catchall_2
    move-exception v0

    .line 241
    const/4 v3, 0x0

    .line 242
    :goto_3
    const/4 v4, 0x0

    .line 243
    goto :goto_d

    .line 244
    :catch_3
    move-exception v0

    .line 245
    goto :goto_7

    .line 246
    :catchall_3
    move-exception v0

    .line 247
    goto :goto_4

    .line 248
    :catch_4
    move-exception v0

    .line 249
    goto :goto_6

    .line 250
    :catchall_4
    move-exception v0

    .line 251
    const/4 v1, 0x0

    .line 252
    :goto_4
    const/4 v3, 0x0

    .line 253
    const/4 v4, 0x0

    .line 254
    const/16 v16, 0x0

    .line 255
    .line 256
    :goto_5
    move-object/from16 v17, v1

    .line 257
    .line 258
    move-object v1, v0

    .line 259
    move-object/from16 v0, v17

    .line 260
    .line 261
    goto :goto_e

    .line 262
    :catch_5
    move-exception v0

    .line 263
    const/4 v1, 0x0

    .line 264
    :goto_6
    const/4 v2, 0x0

    .line 265
    :goto_7
    const/4 v3, 0x0

    .line 266
    :goto_8
    const/16 v16, 0x0

    .line 267
    .line 268
    :goto_9
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-static {v11}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 287
    .line 288
    .line 289
    if-eqz v2, :cond_5

    .line 290
    .line 291
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 292
    .line 293
    .line 294
    goto :goto_a

    .line 295
    :catch_6
    move-exception v0

    .line 296
    goto :goto_b

    .line 297
    :cond_5
    :goto_a
    if-eqz v1, :cond_6

    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 300
    .line 301
    .line 302
    :cond_6
    if-eqz v16, :cond_7

    .line 303
    .line 304
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 305
    .line 306
    .line 307
    :cond_7
    if-eqz v3, :cond_13

    .line 308
    .line 309
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 310
    .line 311
    .line 312
    goto/16 :goto_19

    .line 313
    .line 314
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    :goto_c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_19

    .line 333
    .line 334
    :catchall_5
    move-exception v0

    .line 335
    move-object/from16 v4, v16

    .line 336
    .line 337
    :goto_d
    move-object/from16 v16, v4

    .line 338
    .line 339
    move-object v4, v2

    .line 340
    goto :goto_5

    .line 341
    :goto_e
    if-eqz v4, :cond_8

    .line 342
    .line 343
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 344
    .line 345
    .line 346
    goto :goto_f

    .line 347
    :catch_7
    move-exception v0

    .line 348
    goto :goto_10

    .line 349
    :cond_8
    :goto_f
    if-eqz v0, :cond_9

    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 352
    .line 353
    .line 354
    :cond_9
    if-eqz v16, :cond_a

    .line 355
    .line 356
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 357
    .line 358
    .line 359
    :cond_a
    if-eqz v3, :cond_b

    .line 360
    .line 361
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 362
    .line 363
    .line 364
    goto :goto_11

    .line 365
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    :cond_b
    :goto_11
    throw v1

    .line 384
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 385
    .line 386
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 387
    .line 388
    .line 389
    throw v0

    .line 390
    :cond_d
    :try_start_a
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    iput v0, v15, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->code:I

    .line 401
    .line 402
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-ne v0, v9, :cond_e

    .line 407
    .line 408
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    goto :goto_12

    .line 413
    :cond_e
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 414
    .line 415
    .line 416
    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 417
    :goto_12
    move-object v1, v0

    .line 418
    if-eqz v1, :cond_10

    .line 419
    .line 420
    :try_start_b
    invoke-static {v7}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    new-array v0, v13, [C

    .line 424
    .line 425
    new-instance v2, Ljava/lang/StringBuffer;

    .line 426
    .line 427
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 428
    .line 429
    .line 430
    new-instance v3, Ljava/io/BufferedReader;

    .line 431
    .line 432
    new-instance v7, Ljava/io/InputStreamReader;

    .line 433
    .line 434
    invoke-direct {v7, v1, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 438
    .line 439
    .line 440
    :goto_13
    :try_start_c
    invoke-virtual {v3, v0, v12, v13}, Ljava/io/BufferedReader;->read([CII)I

    .line 441
    .line 442
    .line 443
    move-result v7

    .line 444
    const/4 v8, -0x1

    .line 445
    if-eq v7, v8, :cond_f

    .line 446
    .line 447
    invoke-virtual {v2, v0, v12, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 448
    .line 449
    .line 450
    goto :goto_13

    .line 451
    :cond_f
    invoke-static {v6}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    iput-object v0, v15, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 459
    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    iget-object v2, v15, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/Response;->body:Ljava/lang/String;

    .line 469
    .line 470
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 478
    .line 479
    .line 480
    move-object/from16 v16, v3

    .line 481
    .line 482
    goto :goto_14

    .line 483
    :catchall_6
    move-exception v0

    .line 484
    move-object v4, v3

    .line 485
    goto :goto_1a

    .line 486
    :catch_8
    move-exception v0

    .line 487
    move-object/from16 v16, v3

    .line 488
    .line 489
    goto :goto_17

    .line 490
    :cond_10
    :try_start_d
    invoke-static {v8}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 491
    .line 492
    .line 493
    const/16 v16, 0x0

    .line 494
    .line 495
    :goto_14
    if-eqz v16, :cond_11

    .line 496
    .line 497
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 498
    .line 499
    .line 500
    :cond_11
    if-eqz v1, :cond_13

    .line 501
    .line 502
    goto :goto_18

    .line 503
    :catchall_7
    move-exception v0

    .line 504
    goto :goto_15

    .line 505
    :catch_9
    move-exception v0

    .line 506
    goto :goto_16

    .line 507
    :catchall_8
    move-exception v0

    .line 508
    const/4 v1, 0x0

    .line 509
    :goto_15
    const/4 v4, 0x0

    .line 510
    goto :goto_1a

    .line 511
    :catch_a
    move-exception v0

    .line 512
    const/4 v1, 0x0

    .line 513
    :goto_16
    const/16 v16, 0x0

    .line 514
    .line 515
    :goto_17
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 531
    .line 532
    .line 533
    if-eqz v16, :cond_12

    .line 534
    .line 535
    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 536
    .line 537
    .line 538
    :cond_12
    if-eqz v1, :cond_13

    .line 539
    .line 540
    :goto_18
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 541
    .line 542
    .line 543
    goto :goto_19

    .line 544
    :catch_b
    invoke-static {v14}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    :cond_13
    :goto_19
    if-eqz v4, :cond_14

    .line 548
    .line 549
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 550
    .line 551
    .line 552
    :cond_14
    return-object v15

    .line 553
    :catchall_9
    move-exception v0

    .line 554
    move-object/from16 v4, v16

    .line 555
    .line 556
    :goto_1a
    if-eqz v4, :cond_15

    .line 557
    .line 558
    :try_start_11
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 559
    .line 560
    .line 561
    :cond_15
    if-eqz v1, :cond_16

    .line 562
    .line 563
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    .line 564
    .line 565
    .line 566
    goto :goto_1b

    .line 567
    :catch_c
    invoke-static {v14}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->e(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    :cond_16
    :goto_1b
    throw v0
.end method
