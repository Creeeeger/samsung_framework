.class public final enum Lcom/android/systemui/statusbar/IndicationEventType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/IndicationEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BIOMETRICS_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BIOMETRICS_STOP:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum EMPTY_LOW:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum OWNER_INFO:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum TRUST_AGENT_ERROR:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum TRUST_AGENT_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;


# instance fields
.field private mPriority:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 2
    .line 3
    const-string v1, "EMPTY_LOW"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_LOW:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 11
    .line 12
    new-instance v1, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 13
    .line 14
    const-string v4, "LEGACY_DEFAULT"

    .line 15
    .line 16
    const/16 v5, 0x14

    .line 17
    .line 18
    invoke-direct {v1, v4, v3, v5}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 22
    .line 23
    const-string v4, "BATTERY_RESTING"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v4, v6, v5}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 30
    .line 31
    new-instance v4, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 32
    .line 33
    const-string v5, "RESTING"

    .line 34
    .line 35
    const/4 v6, 0x3

    .line 36
    const/16 v7, 0x19

    .line 37
    .line 38
    invoke-direct {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    new-instance v5, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 42
    .line 43
    const-string v6, "UNLOCK_GUIDE"

    .line 44
    .line 45
    const/4 v8, 0x4

    .line 46
    invoke-direct {v5, v6, v8, v7}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v5, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 50
    .line 51
    new-instance v6, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 52
    .line 53
    const/16 v7, 0x1e

    .line 54
    .line 55
    const-string v8, "OWNER_INFO"

    .line 56
    .line 57
    const/4 v9, 0x5

    .line 58
    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    sput-object v6, Lcom/android/systemui/statusbar/IndicationEventType;->OWNER_INFO:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 62
    .line 63
    new-instance v7, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 64
    .line 65
    const/16 v8, 0x23

    .line 66
    .line 67
    const-string v9, "TRUST_AGENT_HELP"

    .line 68
    .line 69
    const/4 v10, 0x6

    .line 70
    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    .line 71
    .line 72
    .line 73
    sput-object v7, Lcom/android/systemui/statusbar/IndicationEventType;->TRUST_AGENT_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 74
    .line 75
    new-instance v8, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 76
    .line 77
    const/16 v9, 0x28

    .line 78
    .line 79
    const-string v10, "BATTERY"

    .line 80
    .line 81
    const/4 v11, 0x7

    .line 82
    invoke-direct {v8, v10, v11, v9}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    .line 83
    .line 84
    .line 85
    sput-object v8, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 86
    .line 87
    new-instance v9, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 88
    .line 89
    const/16 v10, 0x2d

    .line 90
    .line 91
    const-string v11, "EMPTY_HIGH"

    .line 92
    .line 93
    const/16 v12, 0x8

    .line 94
    .line 95
    invoke-direct {v9, v11, v12, v10}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    .line 96
    .line 97
    .line 98
    sput-object v9, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 99
    .line 100
    new-instance v10, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 101
    .line 102
    const-string v11, "LEGACY_TRANSIENT"

    .line 103
    .line 104
    const/16 v12, 0x9

    .line 105
    .line 106
    invoke-direct {v10, v11, v12, v2}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    .line 107
    .line 108
    .line 109
    sput-object v10, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 110
    .line 111
    new-instance v11, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 112
    .line 113
    const/16 v2, 0x32

    .line 114
    .line 115
    const-string v12, "NOTI_GUIDE"

    .line 116
    .line 117
    const/16 v13, 0xa

    .line 118
    .line 119
    invoke-direct {v11, v12, v13, v2}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    .line 120
    .line 121
    .line 122
    new-instance v12, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 123
    .line 124
    const-string v2, "BIOMETRICS_HELP"

    .line 125
    .line 126
    const/16 v13, 0xb

    .line 127
    .line 128
    const/16 v14, 0x3c

    .line 129
    .line 130
    invoke-direct {v12, v2, v13, v14}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    .line 131
    .line 132
    .line 133
    sput-object v12, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 134
    .line 135
    new-instance v13, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 136
    .line 137
    const-string v2, "BIOMETRICS_STOP"

    .line 138
    .line 139
    const/16 v15, 0xc

    .line 140
    .line 141
    invoke-direct {v13, v2, v15, v14}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    .line 142
    .line 143
    .line 144
    sput-object v13, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_STOP:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 145
    .line 146
    new-instance v14, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 147
    .line 148
    const/16 v2, 0x46

    .line 149
    .line 150
    const-string v15, "TRUST_AGENT_ERROR"

    .line 151
    .line 152
    move-object/from16 v16, v13

    .line 153
    .line 154
    const/16 v13, 0xd

    .line 155
    .line 156
    invoke-direct {v14, v15, v13, v2}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    .line 157
    .line 158
    .line 159
    sput-object v14, Lcom/android/systemui/statusbar/IndicationEventType;->TRUST_AGENT_ERROR:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 160
    .line 161
    new-instance v15, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 162
    .line 163
    const/16 v2, 0x55

    .line 164
    .line 165
    const-string v13, "BIOMETRICS_COOLDOWN"

    .line 166
    .line 167
    move-object/from16 v17, v14

    .line 168
    .line 169
    const/16 v14, 0xe

    .line 170
    .line 171
    invoke-direct {v15, v13, v14, v2}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    .line 172
    .line 173
    .line 174
    sput-object v15, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 175
    .line 176
    new-instance v14, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 177
    .line 178
    const/16 v2, 0x5a

    .line 179
    .line 180
    const-string v13, "PPP_COOLDOWN"

    .line 181
    .line 182
    move-object/from16 v18, v15

    .line 183
    .line 184
    const/16 v15, 0xf

    .line 185
    .line 186
    invoke-direct {v14, v13, v15, v2}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    .line 187
    .line 188
    .line 189
    sput-object v14, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 190
    .line 191
    move-object v2, v3

    .line 192
    move-object v3, v4

    .line 193
    move-object v4, v5

    .line 194
    move-object v5, v6

    .line 195
    move-object v6, v7

    .line 196
    move-object v7, v8

    .line 197
    move-object v8, v9

    .line 198
    move-object v9, v10

    .line 199
    move-object v10, v11

    .line 200
    move-object v11, v12

    .line 201
    move-object/from16 v12, v16

    .line 202
    .line 203
    move-object/from16 v13, v17

    .line 204
    .line 205
    move-object v15, v14

    .line 206
    move-object/from16 v14, v18

    .line 207
    .line 208
    filled-new-array/range {v0 .. v15}, [Lcom/android/systemui/statusbar/IndicationEventType;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->$VALUES:[Lcom/android/systemui/statusbar/IndicationEventType;

    .line 213
    .line 214
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/android/systemui/statusbar/IndicationEventType;->mPriority:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/IndicationEventType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/IndicationEventType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/IndicationEventType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->$VALUES:[Lcom/android/systemui/statusbar/IndicationEventType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/IndicationEventType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/statusbar/IndicationEventType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getPriority()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/IndicationEventType;->mPriority:I

    .line 2
    .line 3
    return p0
.end method
