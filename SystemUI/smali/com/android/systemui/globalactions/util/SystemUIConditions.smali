.class public final enum Lcom/android/systemui/globalactions/util/SystemUIConditions;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/util/SystemUIConditions;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CELLULAR_DATA_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CLEAR_CAMERA_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_DO_PROVISIONING_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_FUNCTION_KEY_SETTING_HIDE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_MINI_OPEN_COVER:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_MINI_SVIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_POWER_OFF_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_SAFE_MODE_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_SETTINGS_CHANGES_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum PWD_CHANGE_ENFORCED:Lcom/android/systemui/globalactions/util/SystemUIConditions;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const-string v2, "IS_CLEAR_COVER_CLOSED"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    sput-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 11
    .line 12
    new-instance v2, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    const-string v3, "IS_WHITE_THEME"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 22
    .line 23
    move-object v2, v3

    .line 24
    const-string v4, "IS_SETTINGS_CHANGES_ALLOWED"

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    sput-object v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SETTINGS_CHANGES_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 31
    .line 32
    new-instance v4, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 33
    .line 34
    move-object v3, v4

    .line 35
    const-string v5, "IS_POWER_OFF_ALLOWED"

    .line 36
    .line 37
    const/4 v6, 0x3

    .line 38
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    sput-object v4, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_POWER_OFF_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 42
    .line 43
    new-instance v5, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 44
    .line 45
    move-object v4, v5

    .line 46
    const-string v6, "IS_SAFE_MODE_ALLOWED"

    .line 47
    .line 48
    const/4 v7, 0x4

    .line 49
    invoke-direct {v5, v6, v7}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    sput-object v5, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SAFE_MODE_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 53
    .line 54
    new-instance v6, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 55
    .line 56
    move-object v5, v6

    .line 57
    const-string v7, "IS_ENABLE_USE_OF_PACKET_DATA"

    .line 58
    .line 59
    const/4 v8, 0x5

    .line 60
    invoke-direct {v6, v7, v8}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    new-instance v7, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 64
    .line 65
    move-object v6, v7

    .line 66
    const-string v8, "IS_DO_PROVISIONING_MODE"

    .line 67
    .line 68
    const/4 v9, 0x6

    .line 69
    invoke-direct {v7, v8, v9}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    sput-object v7, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_DO_PROVISIONING_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 73
    .line 74
    new-instance v8, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 75
    .line 76
    move-object v7, v8

    .line 77
    const-string v9, "IS_BIXBY_PACKAGE_ENABLED"

    .line 78
    .line 79
    const/4 v10, 0x7

    .line 80
    invoke-direct {v8, v9, v10}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    new-instance v9, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 84
    .line 85
    move-object v8, v9

    .line 86
    const-string v10, "PWD_CHANGE_ENFORCED"

    .line 87
    .line 88
    const/16 v11, 0x8

    .line 89
    .line 90
    invoke-direct {v9, v10, v11}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    sput-object v9, Lcom/android/systemui/globalactions/util/SystemUIConditions;->PWD_CHANGE_ENFORCED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 94
    .line 95
    new-instance v10, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 96
    .line 97
    move-object v9, v10

    .line 98
    const-string v11, "IS_CLEAR_SIDE_VIEW_COVER_CLOSED"

    .line 99
    .line 100
    const/16 v12, 0x9

    .line 101
    .line 102
    invoke-direct {v10, v11, v12}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    sput-object v10, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 106
    .line 107
    new-instance v11, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 108
    .line 109
    move-object v10, v11

    .line 110
    const-string v12, "IS_CLEAR_CAMERA_VIEW_COVER_CLOSED"

    .line 111
    .line 112
    const/16 v13, 0xa

    .line 113
    .line 114
    invoke-direct {v11, v12, v13}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    sput-object v11, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_CAMERA_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 118
    .line 119
    new-instance v12, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 120
    .line 121
    move-object v11, v12

    .line 122
    const-string v13, "IS_MINI_SVIEW_COVER_CLOSED"

    .line 123
    .line 124
    const/16 v14, 0xb

    .line 125
    .line 126
    invoke-direct {v12, v13, v14}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    sput-object v12, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_SVIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 130
    .line 131
    new-instance v13, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 132
    .line 133
    move-object v12, v13

    .line 134
    const-string v14, "IS_MINI_OPEN_COVER"

    .line 135
    .line 136
    const/16 v15, 0xc

    .line 137
    .line 138
    invoke-direct {v13, v14, v15}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    sput-object v13, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_OPEN_COVER:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 142
    .line 143
    new-instance v14, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 144
    .line 145
    move-object v13, v14

    .line 146
    const-string v15, "IS_CELLULAR_DATA_ALLOWED"

    .line 147
    .line 148
    move-object/from16 v20, v0

    .line 149
    .line 150
    const/16 v0, 0xd

    .line 151
    .line 152
    invoke-direct {v14, v15, v0}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    sput-object v14, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CELLULAR_DATA_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 156
    .line 157
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 158
    .line 159
    move-object v14, v0

    .line 160
    const-string v15, "IS_COM_CONTAINER_MODE"

    .line 161
    .line 162
    move-object/from16 v21, v1

    .line 163
    .line 164
    const/16 v1, 0xe

    .line 165
    .line 166
    invoke-direct {v0, v15, v1}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 170
    .line 171
    move-object v15, v0

    .line 172
    const-string v1, "GET_PROKIOSK_STATE"

    .line 173
    .line 174
    move-object/from16 v22, v2

    .line 175
    .line 176
    const/16 v2, 0xf

    .line 177
    .line 178
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 182
    .line 183
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 184
    .line 185
    move-object/from16 v16, v0

    .line 186
    .line 187
    const-string v1, "GET_POWER_DIALOG_CUSTOM_ITEMS_STATE"

    .line 188
    .line 189
    const/16 v2, 0x10

    .line 190
    .line 191
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 195
    .line 196
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 197
    .line 198
    move-object/from16 v17, v0

    .line 199
    .line 200
    const-string v1, "IS_ALLOWED_SHOW_ACTIONS"

    .line 201
    .line 202
    const/16 v2, 0x11

    .line 203
    .line 204
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 205
    .line 206
    .line 207
    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 208
    .line 209
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 210
    .line 211
    move-object/from16 v18, v0

    .line 212
    .line 213
    const-string v1, "IS_KIOSK_MODE"

    .line 214
    .line 215
    const/16 v2, 0x12

    .line 216
    .line 217
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 221
    .line 222
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 223
    .line 224
    move-object/from16 v19, v0

    .line 225
    .line 226
    const-string v1, "IS_FUNCTION_KEY_SETTING_HIDE"

    .line 227
    .line 228
    const/16 v2, 0x13

    .line 229
    .line 230
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_FUNCTION_KEY_SETTING_HIDE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 234
    .line 235
    move-object/from16 v0, v20

    .line 236
    .line 237
    move-object/from16 v1, v21

    .line 238
    .line 239
    move-object/from16 v2, v22

    .line 240
    .line 241
    filled-new-array/range {v0 .. v19}, [Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->$VALUES:[Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 246
    .line 247
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/util/SystemUIConditions;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/globalactions/util/SystemUIConditions;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->$VALUES:[Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/util/SystemUIConditions;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 8
    .line 9
    return-object v0
.end method
