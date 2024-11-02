.class public final Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService;


# static fields
.field public static final Companion:Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;


# instance fields
.field public final contentHandler:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->Companion:Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->contentHandler:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;

    .line 5
    .line 6
    return-void
.end method

.method public static createContentValue(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->parameterValueMap:Ljava/util/Map;

    .line 6
    .line 7
    check-cast v1, Ljava/util/HashMap;

    .line 8
    .line 9
    const-string v2, "v2IntentParam"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v1, v0

    .line 33
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-lez v2, :cond_1

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v2, 0x0

    .line 42
    :goto_1
    if-eqz v2, :cond_2

    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_2
    if-eqz p0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->toJsonString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_3
    return-object v0
.end method

.method public static getParameterValues(Landroid/database/Cursor;)Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;
    .locals 9

    .line 1
    const-string v0, "intent_param"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string p0, "AutomationServiceImpl@SDK"

    .line 19
    .line 20
    const-string v0, "getParameterValues(parameter is null) - "

    .line 21
    .line 22
    invoke-static {p0, v0}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$Companion;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;-><init>()V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$Companion;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v1, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v2, 0x0

    .line 56
    :goto_0
    const/4 v3, 0x0

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    new-instance v2, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 60
    .line 61
    invoke-direct {v2, v1, v3}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 66
    .line 67
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_4

    .line 79
    .line 80
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Ljava/lang/String;

    .line 85
    .line 86
    sget-object v6, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$Companion;

    .line 87
    .line 88
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    new-instance v6, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;

    .line 96
    .line 97
    invoke-direct {v6, v3}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 98
    .line 99
    .line 100
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    .line 101
    .line 102
    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v8}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$Companion;->parseType(Lorg/json/JSONObject;)Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-static {v6, v7}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->access$setMValueType$p(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v6}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->access$getMValueType$p(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;)Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    if-nez v7, :cond_3

    .line 117
    .line 118
    move-object v7, v3

    .line 119
    :cond_3
    invoke-static {v8, v7}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$Companion;->parseValue(Lorg/json/JSONObject;Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-static {v6, v7}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->access$setValue$p(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catch_0
    move-exception v7

    .line 128
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :catch_1
    move-exception v7

    .line 133
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 134
    .line 135
    .line 136
    :goto_2
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catch_2
    move-exception v2

    .line 141
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    :cond_4
    new-instance v2, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 145
    .line 146
    invoke-direct {v2, v1, v3}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    .line 148
    .line 149
    :goto_3
    iget-object v1, v2, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->parameterValueMap:Ljava/util/Map;

    .line 150
    .line 151
    check-cast v1, Ljava/util/HashMap;

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-eqz v3, :cond_5

    .line 158
    .line 159
    const-string v3, "is_negative"

    .line 160
    .line 161
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    int-to-float p0, p0

    .line 170
    new-instance v3, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;

    .line 171
    .line 172
    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;-><init>(F)V

    .line 173
    .line 174
    .line 175
    const-string p0, "v2IsNegative"

    .line 176
    .line 177
    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    const-string p0, "v2IntentParam"

    .line 181
    .line 182
    invoke-virtual {v2, p0, v0}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_5
    move-object p0, v2

    .line 186
    :goto_4
    return-object p0
.end method
