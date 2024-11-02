.class public final enum Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_BIO_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_BIO_WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_CARRIER:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_COVER_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_EDIT_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_EXTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_FACE_WIDGET:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_FMM:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_FOLD_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_GUTS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_INTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_KEYBOARD:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_KNOX_GUARD:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_NOTIFICATION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_PENDING_INTENT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_PLUGIN_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_QUICK_TILE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_REMOTE_INPUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_RMM:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_SHELL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_SPEN_DETACHED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_SWIPE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;


# direct methods
.method public static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const-string v2, "TRIGGER_UNKNOWN"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    sput-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 11
    .line 12
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    const-string v3, "TRIGGER_EXTERNAL"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sput-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_EXTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 22
    .line 23
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 24
    .line 25
    move-object v2, v3

    .line 26
    const-string v4, "TRIGGER_INTERNAL"

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    sput-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_INTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 33
    .line 34
    new-instance v4, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 35
    .line 36
    move-object v3, v4

    .line 37
    const-string v5, "TRIGGER_BIO_UNLOCK"

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    sput-object v4, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_BIO_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 44
    .line 45
    new-instance v5, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 46
    .line 47
    move-object v4, v5

    .line 48
    const-string v6, "TRIGGER_BIO_WAKE_AND_UNLOCK"

    .line 49
    .line 50
    const/4 v7, 0x4

    .line 51
    invoke-direct {v5, v6, v7}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    sput-object v5, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_BIO_WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 55
    .line 56
    new-instance v6, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 57
    .line 58
    move-object v5, v6

    .line 59
    const-string v7, "TRIGGER_SWIPE"

    .line 60
    .line 61
    const/4 v8, 0x5

    .line 62
    invoke-direct {v6, v7, v8}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v6, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SWIPE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 66
    .line 67
    new-instance v7, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 68
    .line 69
    move-object v6, v7

    .line 70
    const-string v8, "TRIGGER_SHELL"

    .line 71
    .line 72
    const/4 v9, 0x6

    .line 73
    invoke-direct {v7, v8, v9}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    sput-object v7, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SHELL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 77
    .line 78
    new-instance v8, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 79
    .line 80
    move-object v7, v8

    .line 81
    const-string v9, "TRIGGER_NOTIFICATION"

    .line 82
    .line 83
    const/4 v10, 0x7

    .line 84
    invoke-direct {v8, v9, v10}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v8, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_NOTIFICATION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 88
    .line 89
    new-instance v9, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 90
    .line 91
    move-object v8, v9

    .line 92
    const-string v10, "TRIGGER_AOD_NOTIFICATION"

    .line 93
    .line 94
    const/16 v11, 0x8

    .line 95
    .line 96
    invoke-direct {v9, v10, v11}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    new-instance v10, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 100
    .line 101
    move-object v9, v10

    .line 102
    const-string v11, "TRIGGER_QUICK_TILE"

    .line 103
    .line 104
    const/16 v12, 0x9

    .line 105
    .line 106
    invoke-direct {v10, v11, v12}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v10, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_QUICK_TILE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 110
    .line 111
    new-instance v11, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 112
    .line 113
    move-object v10, v11

    .line 114
    const-string v12, "TRIGGER_SHORTCUT"

    .line 115
    .line 116
    const/16 v13, 0xa

    .line 117
    .line 118
    invoke-direct {v11, v12, v13}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    sput-object v11, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 122
    .line 123
    new-instance v12, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 124
    .line 125
    move-object v11, v12

    .line 126
    const-string v13, "TRIGGER_FACE_WIDGET"

    .line 127
    .line 128
    const/16 v14, 0xb

    .line 129
    .line 130
    invoke-direct {v12, v13, v14}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    sput-object v12, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FACE_WIDGET:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 134
    .line 135
    new-instance v13, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 136
    .line 137
    move-object v12, v13

    .line 138
    const-string v14, "TRIGGER_KEYBOARD"

    .line 139
    .line 140
    const/16 v15, 0xc

    .line 141
    .line 142
    invoke-direct {v13, v14, v15}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    sput-object v13, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_KEYBOARD:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 146
    .line 147
    new-instance v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 148
    .line 149
    move-object v13, v14

    .line 150
    const-string v15, "TRIGGER_PENDING_INTENT"

    .line 151
    .line 152
    move-object/from16 v26, v0

    .line 153
    .line 154
    const/16 v0, 0xd

    .line 155
    .line 156
    invoke-direct {v14, v15, v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    sput-object v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_PENDING_INTENT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 160
    .line 161
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 162
    .line 163
    move-object v14, v0

    .line 164
    const-string v15, "TRIGGER_PLUGIN_LOCK"

    .line 165
    .line 166
    move-object/from16 v27, v1

    .line 167
    .line 168
    const/16 v1, 0xe

    .line 169
    .line 170
    invoke-direct {v0, v15, v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_PLUGIN_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 174
    .line 175
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 176
    .line 177
    move-object v15, v0

    .line 178
    const-string v1, "TRIGGER_FOLD_OPENED"

    .line 179
    .line 180
    move-object/from16 v28, v2

    .line 181
    .line 182
    const/16 v2, 0xf

    .line 183
    .line 184
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 185
    .line 186
    .line 187
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FOLD_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 188
    .line 189
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 190
    .line 191
    move-object/from16 v16, v0

    .line 192
    .line 193
    const-string v1, "TRIGGER_COVER_OPENED"

    .line 194
    .line 195
    const/16 v2, 0x10

    .line 196
    .line 197
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_COVER_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 201
    .line 202
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 203
    .line 204
    move-object/from16 v17, v0

    .line 205
    .line 206
    const-string v1, "TRIGGER_FMM"

    .line 207
    .line 208
    const/16 v2, 0x11

    .line 209
    .line 210
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 211
    .line 212
    .line 213
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FMM:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 214
    .line 215
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 216
    .line 217
    move-object/from16 v18, v0

    .line 218
    .line 219
    const-string v1, "TRIGGER_RMM"

    .line 220
    .line 221
    const/16 v2, 0x12

    .line 222
    .line 223
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_RMM:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 227
    .line 228
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 229
    .line 230
    move-object/from16 v19, v0

    .line 231
    .line 232
    const-string v1, "TRIGGER_CARRIER"

    .line 233
    .line 234
    const/16 v2, 0x13

    .line 235
    .line 236
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_CARRIER:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 240
    .line 241
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 242
    .line 243
    move-object/from16 v20, v0

    .line 244
    .line 245
    const-string v1, "TRIGGER_KNOX_GUARD"

    .line 246
    .line 247
    const/16 v2, 0x14

    .line 248
    .line 249
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 250
    .line 251
    .line 252
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_KNOX_GUARD:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 253
    .line 254
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 255
    .line 256
    move-object/from16 v21, v0

    .line 257
    .line 258
    const-string v1, "TRIGGER_PENDING_WAKE_UP_ACTION"

    .line 259
    .line 260
    const/16 v2, 0x15

    .line 261
    .line 262
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 263
    .line 264
    .line 265
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 266
    .line 267
    move-object/from16 v22, v0

    .line 268
    .line 269
    const-string v1, "TRIGGER_GUTS"

    .line 270
    .line 271
    const/16 v2, 0x16

    .line 272
    .line 273
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 274
    .line 275
    .line 276
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_GUTS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 277
    .line 278
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 279
    .line 280
    move-object/from16 v23, v0

    .line 281
    .line 282
    const-string v1, "TRIGGER_REMOTE_INPUT"

    .line 283
    .line 284
    const/16 v2, 0x17

    .line 285
    .line 286
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 287
    .line 288
    .line 289
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_REMOTE_INPUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 290
    .line 291
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 292
    .line 293
    move-object/from16 v24, v0

    .line 294
    .line 295
    const-string v1, "TRIGGER_SPEN_DETACHED"

    .line 296
    .line 297
    const/16 v2, 0x18

    .line 298
    .line 299
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 300
    .line 301
    .line 302
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SPEN_DETACHED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 303
    .line 304
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 305
    .line 306
    move-object/from16 v25, v0

    .line 307
    .line 308
    const-string v1, "TRIGGER_EDIT_MODE"

    .line 309
    .line 310
    const/16 v2, 0x19

    .line 311
    .line 312
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    .line 313
    .line 314
    .line 315
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_EDIT_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 316
    .line 317
    move-object/from16 v0, v26

    .line 318
    .line 319
    move-object/from16 v1, v27

    .line 320
    .line 321
    move-object/from16 v2, v28

    .line 322
    .line 323
    filled-new-array/range {v0 .. v25}, [Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->$VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 328
    .line 329
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->$VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 8
    .line 9
    return-object v0
.end method
