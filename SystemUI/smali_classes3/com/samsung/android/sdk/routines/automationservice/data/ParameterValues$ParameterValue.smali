.class public final Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$Companion;


# instance fields
.field private mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TYPE"
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "VALUE"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    .line 10
    sget-object p1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->NUMBER:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    .line 16
    sget-object p1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->STRING:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->BOOLEAN:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Boolean;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    .line 7
    sget-object p1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->LIST_BOOLEAN:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Float;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    .line 13
    sget-object p1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->LIST_NUMBER:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    .line 19
    sget-object p1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->LIST_STRING:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public static final synthetic access$getMValueType$p(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;)Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setMValueType$p(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setValue$p(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getValueType()Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    return-object p0
.end method

.method public final toJsonString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "TYPE"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    move-object v2, v3

    .line 14
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->getMName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v3, v1

    .line 27
    :goto_0
    sget-object v1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    aget v1, v1, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const-string v3, "VALUE"

    .line 37
    .line 38
    packed-switch v1, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    :try_start_1
    new-instance v1, Ljava/lang/Throwable;

    .line 42
    .line 43
    goto :goto_4

    .line 44
    :pswitch_0
    new-instance v1, Lorg/json/JSONArray;

    .line 45
    .line 46
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, [Ljava/lang/Object;

    .line 52
    .line 53
    array-length v4, p0

    .line 54
    :goto_1
    if-ge v2, v4, :cond_2

    .line 55
    .line 56
    aget-object v5, p0, v2

    .line 57
    .line 58
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 59
    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    goto :goto_5

    .line 68
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    goto :goto_5

    .line 74
    :pswitch_2
    new-instance v1, Lorg/json/JSONArray;

    .line 75
    .line 76
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p0, [Ljava/lang/Object;

    .line 82
    .line 83
    array-length v4, p0

    .line 84
    :goto_2
    if-ge v2, v4, :cond_3

    .line 85
    .line 86
    aget-object v5, p0, v2

    .line 87
    .line 88
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 93
    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    goto :goto_5

    .line 102
    :pswitch_3
    new-instance v1, Lorg/json/JSONArray;

    .line 103
    .line 104
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p0, [Ljava/lang/Object;

    .line 110
    .line 111
    array-length v4, p0

    .line 112
    :goto_3
    if-ge v2, v4, :cond_4

    .line 113
    .line 114
    aget-object v5, p0, v2

    .line 115
    .line 116
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 121
    .line 122
    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_4
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    .line 131
    .line 132
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :goto_4
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    .line 147
    .line 148
    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    .line 150
    .line 151
    goto :goto_5

    .line 152
    :catch_0
    move-exception p0

    .line 153
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 154
    .line 155
    .line 156
    :goto_5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    return-object p0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
