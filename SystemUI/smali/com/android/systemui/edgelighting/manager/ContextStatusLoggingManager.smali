.class public final Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static mInstance:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mLastUpdateTime:J


# direct methods
.method public static -$$Nest$msendEdgeLightingStatusLogging(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "edge_lighting_color_type"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, -0x2

    .line 12
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/2addr v0, v2

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "EL13"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static {v1, v0, v4}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v5, "edge_lighting_transparency"

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-static {v1, v5, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v5, "EL14"

    .line 44
    .line 45
    invoke-static {v5, v1, v4}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const-string v7, "edge_lighting_thickness"

    .line 54
    .line 55
    invoke-static {v5, v7, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    add-int/2addr v3, v2

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const-string v5, "EL15"

    .line 65
    .line 66
    invoke-static {v5, v3, v4}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-static {v5}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;)I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const-string v6, "EL20"

    .line 83
    .line 84
    invoke-static {v6, v5, v4}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-virtual {v7, v8}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v6, v7}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getPreloadIndex(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    add-int/2addr v6, v2

    .line 109
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const-string v6, "EL21"

    .line 114
    .line 115
    invoke-static {v6, v2, v4}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-virtual {v6, v7}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    const-string v7, "EL22"

    .line 132
    .line 133
    invoke-static {v7, v6, v4}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ContextStatusLoggingManager"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mLastUpdateTime:J

    .line 11
    .line 12
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mInstance:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mInstance:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mInstance:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 13
    .line 14
    return-object v0
.end method

.method public static makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "app_id"

    .line 7
    .line 8
    const-string v2, "com.samsung.android.app.cocktailbarservice"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "feature"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-string p0, "extra"

    .line 21
    .line 22
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    if-eqz p2, :cond_1

    .line 26
    .line 27
    const-string/jumbo p0, "value"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_CONTEXTSERVICE_ENABLE_SURVEY:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p1, "sendContextServiceLog -  servey mode feature not enabled"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 15
    .line 16
    const-string/jumbo v1, "sendStatusContextLogging: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p0, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    new-instance p0, Landroid/content/Intent;

    .line 33
    .line 34
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v0, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const-string v0, "data"

    .line 43
    .line 44
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    const-string p2, "com.samsung.android.providers.context"

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final updateStatusLoggingItem(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mLastUpdateTime:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/32 v4, 0xf731400

    .line 10
    .line 11
    .line 12
    cmp-long v2, v2, v4

    .line 13
    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v3, "updateStatusLoggingItem: on "

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iput-wide v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->mLastUpdateTime:J

    .line 37
    .line 38
    new-instance v0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;-><init>(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    filled-new-array {p0, p0, p0}, [Ljava/lang/Void;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method
