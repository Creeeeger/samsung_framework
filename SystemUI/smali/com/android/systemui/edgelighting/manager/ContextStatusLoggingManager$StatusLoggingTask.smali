.class public final Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;
.super Landroid/os/AsyncTask;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mTaskContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->mTaskContext:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->mTaskContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->sendEdgeLightingSettingsLogging(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->mTaskContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->-$$Nest$msendEdgeLightingStatusLogging(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "ContextStatusLoggingManager.doInBackground() : "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :goto_0
    const/4 p0, 0x0

    .line 46
    return-object p0
.end method

.method public final sendEdgeLightingSettingsLogging(Landroid/content/Context;)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, "EL01"

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v2, "1000"

    .line 24
    .line 25
    invoke-static {v3, v1, v2}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v2, "0"

    .line 36
    .line 37
    invoke-static {v3, v1, v2}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 42
    .line 43
    invoke-virtual {v3, p1, v2}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    if-eqz v0, :cond_5

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    sget-boolean v3, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_AOD:Z

    .line 61
    .line 62
    const/4 v4, 0x1

    .line 63
    xor-int/2addr v3, v4

    .line 64
    const/4 v5, -0x2

    .line 65
    const-string v6, "edge_lighting_show_condition"

    .line 66
    .line 67
    invoke-static {v2, v6, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const-string v3, "EL02"

    .line 72
    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const-string v0, "Off"

    .line 81
    .line 82
    invoke-static {v3, v0, v1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    if-nez v2, :cond_3

    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    const-string v0, "Always"

    .line 95
    .line 96
    invoke-static {v3, v0, v1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    if-ne v2, v4, :cond_4

    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    const-string v0, "When screen is on"

    .line 109
    .line 110
    invoke-static {v3, v0, v1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    const/4 v0, 0x2

    .line 116
    if-ne v2, v0, :cond_5

    .line 117
    .line 118
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    const-string v0, "When screen is off"

    .line 124
    .line 125
    invoke-static {v3, v0, v1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    .line 130
    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    return-void
.end method
