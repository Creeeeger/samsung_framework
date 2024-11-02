.class public final enum Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

.field public static final enum TYPE_GESTURE_HANDLE_HINT:Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

.field public static final enum TYPE_GESTURE_HINT:Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

.field public static final enum TYPE_GESTURE_HINT_VI:Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v1, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const-string v2, "TYPE_BACK"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 11
    .line 12
    move-object v1, v2

    .line 13
    const-string v3, "TYPE_BACK_LAND"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 20
    .line 21
    move-object v2, v3

    .line 22
    const-string v4, "TYPE_BACK_ALT"

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    new-instance v4, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 29
    .line 30
    move-object v3, v4

    .line 31
    const-string v5, "TYPE_BACK_ALT_LAND"

    .line 32
    .line 33
    const/4 v6, 0x3

    .line 34
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    new-instance v5, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 38
    .line 39
    move-object v4, v5

    .line 40
    const-string v6, "TYPE_HOME"

    .line 41
    .line 42
    const/4 v7, 0x4

    .line 43
    invoke-direct {v5, v6, v7}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    new-instance v6, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 47
    .line 48
    move-object v5, v6

    .line 49
    const-string v7, "TYPE_RECENT"

    .line 50
    .line 51
    const/4 v8, 0x5

    .line 52
    invoke-direct {v6, v7, v8}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    new-instance v7, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 56
    .line 57
    move-object v6, v7

    .line 58
    const-string v8, "TYPE_DOCKED"

    .line 59
    .line 60
    const/4 v9, 0x6

    .line 61
    invoke-direct {v7, v8, v9}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    new-instance v8, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 65
    .line 66
    move-object v7, v8

    .line 67
    const-string v9, "TYPE_IME"

    .line 68
    .line 69
    const/4 v10, 0x7

    .line 70
    invoke-direct {v8, v9, v10}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    new-instance v9, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 74
    .line 75
    move-object v8, v9

    .line 76
    const-string v10, "TYPE_MENU"

    .line 77
    .line 78
    const/16 v11, 0x8

    .line 79
    .line 80
    invoke-direct {v9, v10, v11}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    new-instance v10, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 84
    .line 85
    move-object v9, v10

    .line 86
    const-string v11, "TYPE_SHOW_PIN"

    .line 87
    .line 88
    const/16 v12, 0x9

    .line 89
    .line 90
    invoke-direct {v10, v11, v12}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    new-instance v11, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 94
    .line 95
    move-object v10, v11

    .line 96
    const-string v12, "TYPE_HIDE_PIN"

    .line 97
    .line 98
    const/16 v13, 0xa

    .line 99
    .line 100
    invoke-direct {v11, v12, v13}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    new-instance v12, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 104
    .line 105
    move-object v11, v12

    .line 106
    const-string v13, "TYPE_A11Y"

    .line 107
    .line 108
    const/16 v14, 0xb

    .line 109
    .line 110
    invoke-direct {v12, v13, v14}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    new-instance v13, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 114
    .line 115
    move-object v12, v13

    .line 116
    const-string v14, "TYPE_BACK_CAR"

    .line 117
    .line 118
    const/16 v15, 0xc

    .line 119
    .line 120
    invoke-direct {v13, v14, v15}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    new-instance v14, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 124
    .line 125
    move-object v13, v14

    .line 126
    const-string v15, "TYPE_BACK_LAND_CAR"

    .line 127
    .line 128
    move-object/from16 v21, v0

    .line 129
    .line 130
    const/16 v0, 0xd

    .line 131
    .line 132
    invoke-direct {v14, v15, v0}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 136
    .line 137
    move-object v14, v0

    .line 138
    const-string v15, "TYPE_BACK_ALT_CAR"

    .line 139
    .line 140
    move-object/from16 v22, v1

    .line 141
    .line 142
    const/16 v1, 0xe

    .line 143
    .line 144
    invoke-direct {v0, v15, v1}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    new-instance v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 148
    .line 149
    move-object v15, v0

    .line 150
    const-string v1, "TYPE_BACK_ALT_LAND_CAR"

    .line 151
    .line 152
    move-object/from16 v23, v2

    .line 153
    .line 154
    const/16 v2, 0xf

    .line 155
    .line 156
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 160
    .line 161
    move-object/from16 v16, v0

    .line 162
    .line 163
    const-string v1, "TYPE_HOME_CAR"

    .line 164
    .line 165
    const/16 v2, 0x10

    .line 166
    .line 167
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    new-instance v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 171
    .line 172
    move-object/from16 v17, v0

    .line 173
    .line 174
    const-string v1, "TYPE_GESTURE_HINT"

    .line 175
    .line 176
    const/16 v2, 0x11

    .line 177
    .line 178
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    sput-object v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;->TYPE_GESTURE_HINT:Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 182
    .line 183
    new-instance v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 184
    .line 185
    move-object/from16 v18, v0

    .line 186
    .line 187
    const-string v1, "TYPE_GESTURE_HINT_VI"

    .line 188
    .line 189
    const/16 v2, 0x12

    .line 190
    .line 191
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    sput-object v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;->TYPE_GESTURE_HINT_VI:Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 195
    .line 196
    new-instance v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 197
    .line 198
    move-object/from16 v19, v0

    .line 199
    .line 200
    const-string v1, "TYPE_GESTURE_HANDLE_HINT"

    .line 201
    .line 202
    const/16 v2, 0x13

    .line 203
    .line 204
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 205
    .line 206
    .line 207
    sput-object v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 208
    .line 209
    new-instance v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 210
    .line 211
    move-object/from16 v20, v0

    .line 212
    .line 213
    const-string v1, "TYPE_SECONDARY_HOME_HANDLE"

    .line 214
    .line 215
    const/16 v2, 0x14

    .line 216
    .line 217
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;-><init>(Ljava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    move-object/from16 v0, v21

    .line 221
    .line 222
    move-object/from16 v1, v22

    .line 223
    .line 224
    move-object/from16 v2, v23

    .line 225
    .line 226
    filled-new-array/range {v0 .. v20}, [Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    sput-object v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;->$VALUES:[Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 231
    .line 232
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;->$VALUES:[Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;

    .line 8
    .line 9
    return-object v0
.end method
