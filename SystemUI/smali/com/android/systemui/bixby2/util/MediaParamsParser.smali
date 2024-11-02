.class public Lcom/android/systemui/bixby2/util/MediaParamsParser;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final FOCUSED_APP:Ljava/lang/String; = "focusedApp"

.field private static final MEDIA_ACTIVE:Ljava/lang/String; = "media_control"

.field private static final MUSIC_ACTIVE:Ljava/lang/String; = "music_active"

.field private static final TAG:Ljava/lang/String; = "MediaParamsParser"

.field private static final TIME_INFO:Ljava/lang/String; = "time"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;
    .locals 15

    .line 1
    const-string/jumbo v0, "time"

    .line 2
    .line 3
    .line 4
    const-string v1, "focusedApp"

    .line 5
    .line 6
    const-string/jumbo v2, "media_control"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "music_active"

    .line 10
    .line 11
    .line 12
    const-string v4, "MediaParamsParser"

    .line 13
    .line 14
    const-string v5, ""

    .line 15
    .line 16
    const-wide/16 v6, -0x1

    .line 17
    .line 18
    :try_start_0
    new-instance v8, Lorg/json/JSONArray;

    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v8, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v11, 0x0

    .line 34
    :goto_0
    if-ge v9, p0, :cond_4

    .line 35
    .line 36
    :try_start_1
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v12

    .line 40
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v13
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    const-string/jumbo v14, "true"

    .line 45
    .line 46
    .line 47
    if-eqz v13, :cond_0

    .line 48
    .line 49
    :try_start_2
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v13

    .line 66
    if-eqz v13, :cond_1

    .line 67
    .line 68
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v12

    .line 76
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v13

    .line 85
    if-eqz v13, :cond_2

    .line 86
    .line 87
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-eqz v13, :cond_3

    .line 101
    .line 102
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 114
    const-wide/16 v12, 0x3e8

    .line 115
    .line 116
    mul-long/2addr v6, v12

    .line 117
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catch_0
    move-exception p0

    .line 121
    goto :goto_2

    .line 122
    :catch_1
    move-exception p0

    .line 123
    const/4 v0, 0x0

    .line 124
    const/4 v1, 0x0

    .line 125
    move v10, v0

    .line 126
    move v11, v1

    .line 127
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v1, "JSONException: "

    .line 130
    .line 131
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :cond_4
    new-instance p0, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;

    .line 149
    .line 150
    invoke-direct {p0}, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;-><init>()V

    .line 151
    .line 152
    .line 153
    if-nez v11, :cond_6

    .line 154
    .line 155
    if-eqz v10, :cond_5

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_5
    const/4 v0, 0x0

    .line 159
    goto :goto_4

    .line 160
    :cond_6
    :goto_3
    const/4 v0, 0x1

    .line 161
    :goto_4
    iput-boolean v0, p0, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;->isMediaActive:Z

    .line 162
    .line 163
    iput-object v5, p0, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;->focusedApp:Ljava/lang/String;

    .line 164
    .line 165
    iput-wide v6, p0, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;->time:J

    .line 166
    .line 167
    const-string v0, "isMediaActive "

    .line 168
    .line 169
    invoke-static {v0, v11, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-object p0
.end method
