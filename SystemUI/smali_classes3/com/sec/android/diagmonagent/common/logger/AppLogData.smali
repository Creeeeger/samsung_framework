.class public final Lcom/sec/android/diagmonagent/common/logger/AppLogData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mDate:Ljava/util/Date;

.field public mFileHandler:Ljava/util/logging/FileHandler;

.field public final mFormatter:Ljava/text/SimpleDateFormat;

.field public mLogger:Ljava/util/logging/Logger;

.field public mMessagePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Date;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/sec/android/diagmonagent/common/logger/AppLogData;->mDate:Ljava/util/Date;

    .line 10
    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    const-string v1, "MM/dd HH:mm:ss.SSS"

    .line 14
    .line 15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/sec/android/diagmonagent/common/logger/AppLogData;->mFormatter:Ljava/text/SimpleDateFormat;

    .line 23
    .line 24
    const-string v0, "DIAGMON_SDK"

    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lcom/sec/android/diagmonagent/common/logger/AppLogData;->mLogger:Ljava/util/logging/Logger;

    .line 31
    .line 32
    sget-object v2, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/sec/android/diagmonagent/common/logger/AppLogData;->mLogger:Ljava/util/logging/Logger;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Ljava/io/File;

    .line 44
    .line 45
    const-string v3, "log"

    .line 46
    .line 47
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_0

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, "DIAGMON_SDK.log"

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    new-instance v1, Ljava/util/logging/FileHandler;

    .line 98
    .line 99
    const v2, 0x493e0

    .line 100
    .line 101
    .line 102
    const/4 v3, 0x1

    .line 103
    invoke-direct {v1, p1, v2, v3, v3}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    .line 104
    .line 105
    .line 106
    iput-object v1, p0, Lcom/sec/android/diagmonagent/common/logger/AppLogData;->mFileHandler:Ljava/util/logging/FileHandler;

    .line 107
    .line 108
    new-instance p1, Lcom/sec/android/diagmonagent/common/logger/AppLogData$1;

    .line 109
    .line 110
    invoke-direct {p1, p0}, Lcom/sec/android/diagmonagent/common/logger/AppLogData$1;-><init>(Lcom/sec/android/diagmonagent/common/logger/AppLogData;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, p1}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/sec/android/diagmonagent/common/logger/AppLogData;->mLogger:Ljava/util/logging/Logger;

    .line 117
    .line 118
    iget-object p0, p0, Lcom/sec/android/diagmonagent/common/logger/AppLogData;->mFileHandler:Ljava/util/logging/FileHandler;

    .line 119
    .line 120
    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catch_0
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    :goto_0
    return-void
.end method


# virtual methods
.method public final makeAdditionalData(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "[605033]["

    .line 2
    .line 3
    const-string v1, "] "

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/sec/android/diagmonagent/common/logger/AppLogData;->mMessagePrefix:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public final printToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/diagmonagent/common/logger/AppLogData;->mLogger:Ljava/util/logging/Logger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/sec/android/diagmonagent/common/logger/AppLogData;->mDate:Ljava/util/Date;

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/sec/android/diagmonagent/common/logger/AppLogData;->mLogger:Ljava/util/logging/Logger;

    .line 15
    .line 16
    const-string v2, " "

    .line 17
    .line 18
    invoke-static {p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p0, p0, Lcom/sec/android/diagmonagent/common/logger/AppLogData;->mFormatter:Ljava/text/SimpleDateFormat;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p0, ":"

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method
