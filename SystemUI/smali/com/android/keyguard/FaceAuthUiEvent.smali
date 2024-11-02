.class public enum Lcom/android/keyguard/FaceAuthUiEvent;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/FaceAuthUiEvent$FACE_AUTH_UPDATED_STARTED_WAKING_UP;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/FaceAuthUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_NON_STRONG_BIOMETRIC_ALLOWED_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STARTED_LOCK_EDIT_MODE_FINISHED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_DREAM_STARTED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_FACE_CANCEL_NOT_RECEIVED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_FACE_ERROR:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_FACE_FAILED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_FINISHED_GOING_TO_SLEEP:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_KEYGUARD_GOING_AWAY:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_PREV_CREDENTIAL_VIEW:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_SESSION_CLOSE:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_TRUST_ENABLED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_ALL_AUTHENTICATORS_REGISTERED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_DURING_CANCELLATION:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_ENROLLMENTS_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_NOTIFICATION_PANEL_CLICKED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_OCCLUDING_APP_REQUESTED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_ON_REACH_GESTURE_ON_AOD:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_PICK_UP_GESTURE_TRIGGERED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_QS_EXPANDED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_RETRY_AFTER_HW_UNAVAILABLE:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_RETRY_BUTTON_CLICKED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_SWIPE_UP_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_TRUST_DISABLED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_UDFPS_POINTER_DOWN:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_ASSISTANT_VISIBILITY_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_BIOMETRIC_ENABLED_ON_KEYGUARD:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_BIOMETRIC_LOCKOUT_DEADLINE:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_CAMERA_LAUNCHED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_COCKTAIL_BAR_SHOWING_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_COVER_STATE_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_DYNAMIC_LOCK:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_FOLDER_STATE_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_FP_AUTHENTICATED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_FULL_SCREEN_FACE_WIDGET:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_GOING_TO_SLEEP:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_KEYGUARD_OCCLUSION_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_KEYGUARD_RESET:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_KEYGUARD_UNLOCKING:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_KEYGUARD_VISIBILITY_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_LOCKOUT_DEADLINE:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_LOCK_ICON_PRESSED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_NOTI_STAR_STATE_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_ON_FACE_AUTHENTICATED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_POSTURE_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN_OR_WILL_BE_SHOWN:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_QS_FULLY_EXPANDED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_SECURE_STATE_UNLOCK_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_STARTED_WAKING_UP:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_STRONG_AUTH_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_SUB_SCREEN:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_USER_SWITCHING:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_WINDOW_FOCUS_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;


# instance fields
.field private extraInfo:I

.field private final id:I

.field private final reason:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 94

    .line 1
    new-instance v9, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 2
    .line 3
    move-object v8, v9

    .line 4
    const-string v1, "FACE_AUTH_TRIGGERED_OCCLUDING_APP_REQUESTED"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/16 v3, 0x47a

    .line 8
    .line 9
    const-string v4, "Face auth due to request from occluding app."

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x4

    .line 13
    const/4 v7, 0x0

    .line 14
    move-object v0, v9

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    sput-object v9, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_OCCLUDING_APP_REQUESTED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 19
    .line 20
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 21
    .line 22
    move-object v9, v0

    .line 23
    const-string v11, "FACE_AUTH_TRIGGERED_UDFPS_POINTER_DOWN"

    .line 24
    .line 25
    const/4 v12, 0x1

    .line 26
    const/16 v13, 0x47b

    .line 27
    .line 28
    const-string v14, "Face auth triggered due to finger down on UDFPS"

    .line 29
    .line 30
    const/16 v21, 0x0

    .line 31
    .line 32
    const/16 v22, 0x4

    .line 33
    .line 34
    const/16 v23, 0x0

    .line 35
    .line 36
    const/4 v15, 0x0

    .line 37
    const/16 v16, 0x4

    .line 38
    .line 39
    const/16 v17, 0x0

    .line 40
    .line 41
    move-object v10, v0

    .line 42
    invoke-direct/range {v10 .. v17}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_UDFPS_POINTER_DOWN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 46
    .line 47
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 48
    .line 49
    move-object v10, v0

    .line 50
    const-string v25, "FACE_AUTH_TRIGGERED_SWIPE_UP_ON_BOUNCER"

    .line 51
    .line 52
    const/16 v26, 0x2

    .line 53
    .line 54
    const/16 v27, 0x47c

    .line 55
    .line 56
    const-string v28, "Face auth due to swipe up on bouncer"

    .line 57
    .line 58
    const/16 v34, 0x0

    .line 59
    .line 60
    const/16 v35, 0x4

    .line 61
    .line 62
    const/16 v36, 0x0

    .line 63
    .line 64
    const/16 v29, 0x0

    .line 65
    .line 66
    const/16 v30, 0x4

    .line 67
    .line 68
    const/16 v31, 0x0

    .line 69
    .line 70
    move-object/from16 v24, v0

    .line 71
    .line 72
    invoke-direct/range {v24 .. v31}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 73
    .line 74
    .line 75
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_SWIPE_UP_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 76
    .line 77
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 78
    .line 79
    move-object v11, v0

    .line 80
    const-string v13, "FACE_AUTH_TRIGGERED_ON_REACH_GESTURE_ON_AOD"

    .line 81
    .line 82
    const/4 v14, 0x3

    .line 83
    const/16 v15, 0x47d

    .line 84
    .line 85
    const-string v16, "Face auth requested when user reaches for the device on AoD."

    .line 86
    .line 87
    const/16 v17, 0x0

    .line 88
    .line 89
    const/16 v18, 0x4

    .line 90
    .line 91
    const/16 v19, 0x0

    .line 92
    .line 93
    move-object v12, v0

    .line 94
    invoke-direct/range {v12 .. v19}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    .line 96
    .line 97
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_ON_REACH_GESTURE_ON_AOD:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 98
    .line 99
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 100
    .line 101
    move-object v12, v0

    .line 102
    const-string v25, "FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET"

    .line 103
    .line 104
    const/16 v26, 0x4

    .line 105
    .line 106
    const/16 v27, 0x47e

    .line 107
    .line 108
    const-string v28, "Face auth due to face lockout reset."

    .line 109
    .line 110
    move-object/from16 v24, v0

    .line 111
    .line 112
    invoke-direct/range {v24 .. v31}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    .line 114
    .line 115
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 116
    .line 117
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 118
    .line 119
    move-object v13, v0

    .line 120
    const-string v38, "FACE_AUTH_TRIGGERED_QS_EXPANDED"

    .line 121
    .line 122
    const/16 v39, 0x5

    .line 123
    .line 124
    const/16 v40, 0x47f

    .line 125
    .line 126
    const-string v41, "Face auth due to QS expansion."

    .line 127
    .line 128
    const/16 v42, 0x0

    .line 129
    .line 130
    const/16 v43, 0x4

    .line 131
    .line 132
    const/16 v44, 0x0

    .line 133
    .line 134
    move-object/from16 v37, v0

    .line 135
    .line 136
    invoke-direct/range {v37 .. v44}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    .line 138
    .line 139
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_QS_EXPANDED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 140
    .line 141
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 142
    .line 143
    move-object v14, v0

    .line 144
    const-string v25, "FACE_AUTH_TRIGGERED_NOTIFICATION_PANEL_CLICKED"

    .line 145
    .line 146
    const/16 v26, 0x6

    .line 147
    .line 148
    const/16 v27, 0x480

    .line 149
    .line 150
    const-string v28, "Face auth due to notification panel click."

    .line 151
    .line 152
    move-object/from16 v24, v0

    .line 153
    .line 154
    invoke-direct/range {v24 .. v31}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 155
    .line 156
    .line 157
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_NOTIFICATION_PANEL_CLICKED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 158
    .line 159
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 160
    .line 161
    move-object v15, v0

    .line 162
    const-string v17, "FACE_AUTH_TRIGGERED_PICK_UP_GESTURE_TRIGGERED"

    .line 163
    .line 164
    const/16 v18, 0x7

    .line 165
    .line 166
    const/16 v19, 0x481

    .line 167
    .line 168
    const-string v20, "Face auth due to pickup gesture triggered when the device is awake and not from AOD."

    .line 169
    .line 170
    move-object/from16 v16, v0

    .line 171
    .line 172
    invoke-direct/range {v16 .. v23}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 173
    .line 174
    .line 175
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_PICK_UP_GESTURE_TRIGGERED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 176
    .line 177
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 178
    .line 179
    move-object/from16 v16, v0

    .line 180
    .line 181
    const-string v30, "FACE_AUTH_TRIGGERED_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN"

    .line 182
    .line 183
    const/16 v31, 0x8

    .line 184
    .line 185
    const/16 v32, 0x482

    .line 186
    .line 187
    const-string v33, "Face auth due to alternate bouncer shown."

    .line 188
    .line 189
    move-object/from16 v29, v0

    .line 190
    .line 191
    invoke-direct/range {v29 .. v36}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 192
    .line 193
    .line 194
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 195
    .line 196
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 197
    .line 198
    move-object/from16 v17, v0

    .line 199
    .line 200
    const-string v19, "FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN"

    .line 201
    .line 202
    const/16 v20, 0x9

    .line 203
    .line 204
    const/16 v21, 0x483

    .line 205
    .line 206
    const-string v22, "Face auth started/stopped due to primary bouncer shown."

    .line 207
    .line 208
    const/16 v23, 0x0

    .line 209
    .line 210
    const/16 v24, 0x4

    .line 211
    .line 212
    const/16 v25, 0x0

    .line 213
    .line 214
    move-object/from16 v18, v0

    .line 215
    .line 216
    invoke-direct/range {v18 .. v25}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 217
    .line 218
    .line 219
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 220
    .line 221
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 222
    .line 223
    move-object/from16 v18, v0

    .line 224
    .line 225
    const-string v27, "FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN_OR_WILL_BE_SHOWN"

    .line 226
    .line 227
    const/16 v28, 0xa

    .line 228
    .line 229
    const/16 v29, 0x4ad

    .line 230
    .line 231
    const-string v30, "Face auth started/stopped due to bouncer being shown or will be shown."

    .line 232
    .line 233
    const/16 v36, 0x0

    .line 234
    .line 235
    const/16 v37, 0x4

    .line 236
    .line 237
    const/16 v38, 0x0

    .line 238
    .line 239
    const/16 v31, 0x0

    .line 240
    .line 241
    const/16 v32, 0x4

    .line 242
    .line 243
    const/16 v33, 0x0

    .line 244
    .line 245
    move-object/from16 v26, v0

    .line 246
    .line 247
    invoke-direct/range {v26 .. v33}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 248
    .line 249
    .line 250
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN_OR_WILL_BE_SHOWN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 251
    .line 252
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 253
    .line 254
    move-object/from16 v19, v0

    .line 255
    .line 256
    const-string v40, "FACE_AUTH_TRIGGERED_RETRY_AFTER_HW_UNAVAILABLE"

    .line 257
    .line 258
    const/16 v41, 0xb

    .line 259
    .line 260
    const/16 v42, 0x484

    .line 261
    .line 262
    const-string v43, "Face auth due to retry after hardware unavailable."

    .line 263
    .line 264
    const/16 v29, 0x0

    .line 265
    .line 266
    const/16 v30, 0x4

    .line 267
    .line 268
    const/16 v31, 0x0

    .line 269
    .line 270
    const/16 v44, 0x0

    .line 271
    .line 272
    const/16 v45, 0x4

    .line 273
    .line 274
    const/16 v46, 0x0

    .line 275
    .line 276
    move-object/from16 v39, v0

    .line 277
    .line 278
    invoke-direct/range {v39 .. v46}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 279
    .line 280
    .line 281
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_RETRY_AFTER_HW_UNAVAILABLE:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 282
    .line 283
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 284
    .line 285
    move-object/from16 v20, v0

    .line 286
    .line 287
    const-string v22, "FACE_AUTH_TRIGGERED_TRUST_DISABLED"

    .line 288
    .line 289
    const/16 v23, 0xc

    .line 290
    .line 291
    const/16 v24, 0x486

    .line 292
    .line 293
    const-string v25, "Face auth started due to trust disabled."

    .line 294
    .line 295
    const/16 v26, 0x0

    .line 296
    .line 297
    const/16 v27, 0x4

    .line 298
    .line 299
    const/16 v28, 0x0

    .line 300
    .line 301
    move-object/from16 v21, v0

    .line 302
    .line 303
    invoke-direct/range {v21 .. v28}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 304
    .line 305
    .line 306
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_TRUST_DISABLED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 307
    .line 308
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 309
    .line 310
    move-object/from16 v21, v0

    .line 311
    .line 312
    const-string v40, "FACE_AUTH_STOPPED_TRUST_ENABLED"

    .line 313
    .line 314
    const/16 v41, 0xd

    .line 315
    .line 316
    const/16 v42, 0x495

    .line 317
    .line 318
    const-string v43, "Face auth stopped due to trust enabled."

    .line 319
    .line 320
    move-object/from16 v39, v0

    .line 321
    .line 322
    invoke-direct/range {v39 .. v46}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 323
    .line 324
    .line 325
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_TRUST_ENABLED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 326
    .line 327
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 328
    .line 329
    move-object/from16 v22, v0

    .line 330
    .line 331
    const-string v48, "FACE_AUTH_UPDATED_KEYGUARD_OCCLUSION_CHANGED"

    .line 332
    .line 333
    const/16 v49, 0xe

    .line 334
    .line 335
    const/16 v50, 0x487

    .line 336
    .line 337
    const-string v51, "Face auth started/stopped due to keyguard occlusion change."

    .line 338
    .line 339
    const/16 v52, 0x0

    .line 340
    .line 341
    const/16 v53, 0x4

    .line 342
    .line 343
    const/16 v54, 0x0

    .line 344
    .line 345
    move-object/from16 v47, v0

    .line 346
    .line 347
    invoke-direct/range {v47 .. v54}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 348
    .line 349
    .line 350
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_OCCLUSION_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 351
    .line 352
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 353
    .line 354
    move-object/from16 v23, v0

    .line 355
    .line 356
    const-string v25, "FACE_AUTH_UPDATED_ASSISTANT_VISIBILITY_CHANGED"

    .line 357
    .line 358
    const/16 v26, 0xf

    .line 359
    .line 360
    const/16 v27, 0x488

    .line 361
    .line 362
    const-string v28, "Face auth started/stopped due to assistant visibility change."

    .line 363
    .line 364
    move-object/from16 v24, v0

    .line 365
    .line 366
    invoke-direct/range {v24 .. v31}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 367
    .line 368
    .line 369
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_ASSISTANT_VISIBILITY_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 370
    .line 371
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent$FACE_AUTH_UPDATED_STARTED_WAKING_UP;

    .line 372
    .line 373
    move-object/from16 v24, v0

    .line 374
    .line 375
    const-string v1, "FACE_AUTH_UPDATED_STARTED_WAKING_UP"

    .line 376
    .line 377
    const/16 v2, 0x10

    .line 378
    .line 379
    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent$FACE_AUTH_UPDATED_STARTED_WAKING_UP;-><init>(Ljava/lang/String;I)V

    .line 380
    .line 381
    .line 382
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_STARTED_WAKING_UP:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 383
    .line 384
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 385
    .line 386
    move-object/from16 v25, v0

    .line 387
    .line 388
    const-string v32, "FACE_AUTH_UPDATED_POSTURE_CHANGED"

    .line 389
    .line 390
    const/16 v33, 0x11

    .line 391
    .line 392
    const/16 v34, 0x4f1

    .line 393
    .line 394
    const-string v35, "Face auth started/stopped due to device posture changed."

    .line 395
    .line 396
    move-object/from16 v31, v0

    .line 397
    .line 398
    invoke-direct/range {v31 .. v38}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 399
    .line 400
    .line 401
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_POSTURE_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 402
    .line 403
    new-instance v39, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 404
    .line 405
    move-object/from16 v26, v39

    .line 406
    .line 407
    const-string v40, "FACE_AUTH_TRIGGERED_DREAM_STOPPED"

    .line 408
    .line 409
    const/16 v41, 0x12

    .line 410
    .line 411
    const/16 v42, 0x48a

    .line 412
    .line 413
    const-string v43, "Face auth due to dream stopped."

    .line 414
    .line 415
    invoke-direct/range {v39 .. v46}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 416
    .line 417
    .line 418
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 419
    .line 420
    move-object/from16 v27, v0

    .line 421
    .line 422
    const-string v29, "FACE_AUTH_TRIGGERED_ALL_AUTHENTICATORS_REGISTERED"

    .line 423
    .line 424
    const/16 v30, 0x13

    .line 425
    .line 426
    const/16 v31, 0x48b

    .line 427
    .line 428
    const-string v32, "Face auth due to all authenticators registered."

    .line 429
    .line 430
    const/16 v39, 0x0

    .line 431
    .line 432
    const/16 v40, 0x4

    .line 433
    .line 434
    const/16 v41, 0x0

    .line 435
    .line 436
    const/16 v33, 0x0

    .line 437
    .line 438
    const/16 v34, 0x4

    .line 439
    .line 440
    const/16 v35, 0x0

    .line 441
    .line 442
    move-object/from16 v28, v0

    .line 443
    .line 444
    invoke-direct/range {v28 .. v35}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 445
    .line 446
    .line 447
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_ALL_AUTHENTICATORS_REGISTERED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 448
    .line 449
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 450
    .line 451
    move-object/from16 v28, v0

    .line 452
    .line 453
    const-string v43, "FACE_AUTH_TRIGGERED_ENROLLMENTS_CHANGED"

    .line 454
    .line 455
    const/16 v44, 0x14

    .line 456
    .line 457
    const/16 v45, 0x48c

    .line 458
    .line 459
    const-string v46, "Face auth due to enrolments changed."

    .line 460
    .line 461
    const/16 v47, 0x0

    .line 462
    .line 463
    const/16 v48, 0x4

    .line 464
    .line 465
    const/16 v49, 0x0

    .line 466
    .line 467
    move-object/from16 v42, v0

    .line 468
    .line 469
    invoke-direct/range {v42 .. v49}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 470
    .line 471
    .line 472
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_ENROLLMENTS_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 473
    .line 474
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 475
    .line 476
    move-object/from16 v29, v0

    .line 477
    .line 478
    const-string v31, "FACE_AUTH_UPDATED_KEYGUARD_VISIBILITY_CHANGED"

    .line 479
    .line 480
    const/16 v32, 0x15

    .line 481
    .line 482
    const/16 v33, 0x48d

    .line 483
    .line 484
    const-string v34, "Face auth stopped or started due to keyguard visibility changed."

    .line 485
    .line 486
    const/16 v35, 0x0

    .line 487
    .line 488
    const/16 v36, 0x4

    .line 489
    .line 490
    const/16 v37, 0x0

    .line 491
    .line 492
    move-object/from16 v30, v0

    .line 493
    .line 494
    invoke-direct/range {v30 .. v37}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 495
    .line 496
    .line 497
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_VISIBILITY_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 498
    .line 499
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 500
    .line 501
    move-object/from16 v30, v0

    .line 502
    .line 503
    const-string v43, "FACE_AUTH_STOPPED_FACE_CANCEL_NOT_RECEIVED"

    .line 504
    .line 505
    const/16 v44, 0x16

    .line 506
    .line 507
    const/16 v45, 0x496

    .line 508
    .line 509
    const-string v46, "Face auth stopped due to face cancel signal not received."

    .line 510
    .line 511
    move-object/from16 v42, v0

    .line 512
    .line 513
    invoke-direct/range {v42 .. v49}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 514
    .line 515
    .line 516
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FACE_CANCEL_NOT_RECEIVED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 517
    .line 518
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 519
    .line 520
    move-object/from16 v31, v0

    .line 521
    .line 522
    const-string v51, "FACE_AUTH_TRIGGERED_DURING_CANCELLATION"

    .line 523
    .line 524
    const/16 v52, 0x17

    .line 525
    .line 526
    const/16 v53, 0x497

    .line 527
    .line 528
    const-string v54, "Another request to start face auth received while cancelling face auth"

    .line 529
    .line 530
    const/16 v55, 0x0

    .line 531
    .line 532
    const/16 v56, 0x4

    .line 533
    .line 534
    const/16 v57, 0x0

    .line 535
    .line 536
    move-object/from16 v50, v0

    .line 537
    .line 538
    invoke-direct/range {v50 .. v57}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 539
    .line 540
    .line 541
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_DURING_CANCELLATION:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 542
    .line 543
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 544
    .line 545
    move-object/from16 v32, v0

    .line 546
    .line 547
    const-string v43, "FACE_AUTH_STOPPED_DREAM_STARTED"

    .line 548
    .line 549
    const/16 v44, 0x18

    .line 550
    .line 551
    const/16 v45, 0x498

    .line 552
    .line 553
    const-string v46, "Face auth stopped because dreaming started"

    .line 554
    .line 555
    move-object/from16 v42, v0

    .line 556
    .line 557
    invoke-direct/range {v42 .. v49}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 558
    .line 559
    .line 560
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_DREAM_STARTED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 561
    .line 562
    new-instance v34, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 563
    .line 564
    move-object/from16 v33, v34

    .line 565
    .line 566
    const-string v35, "FACE_AUTH_STOPPED_FP_LOCKED_OUT"

    .line 567
    .line 568
    const/16 v36, 0x19

    .line 569
    .line 570
    const/16 v37, 0x499

    .line 571
    .line 572
    const-string v38, "Face auth stopped because fp locked out"

    .line 573
    .line 574
    invoke-direct/range {v34 .. v41}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 575
    .line 576
    .line 577
    new-instance v35, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 578
    .line 579
    move-object/from16 v34, v35

    .line 580
    .line 581
    const-string v1, "FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER"

    .line 582
    .line 583
    const/16 v2, 0x1a

    .line 584
    .line 585
    const/16 v3, 0x49a

    .line 586
    .line 587
    const-string v4, "Face auth stopped because user started typing password/pin"

    .line 588
    .line 589
    move-object/from16 v0, v35

    .line 590
    .line 591
    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 592
    .line 593
    .line 594
    sput-object v35, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 595
    .line 596
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 597
    .line 598
    move-object/from16 v35, v0

    .line 599
    .line 600
    const-string v37, "FACE_AUTH_STOPPED_KEYGUARD_GOING_AWAY"

    .line 601
    .line 602
    const/16 v38, 0x1b

    .line 603
    .line 604
    const/16 v39, 0x49b

    .line 605
    .line 606
    const-string v40, "Face auth stopped because keyguard going away"

    .line 607
    .line 608
    const/16 v49, 0x0

    .line 609
    .line 610
    const/16 v50, 0x4

    .line 611
    .line 612
    const/16 v51, 0x0

    .line 613
    .line 614
    const/16 v41, 0x0

    .line 615
    .line 616
    const/16 v42, 0x4

    .line 617
    .line 618
    const/16 v43, 0x0

    .line 619
    .line 620
    move-object/from16 v36, v0

    .line 621
    .line 622
    invoke-direct/range {v36 .. v43}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 623
    .line 624
    .line 625
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_KEYGUARD_GOING_AWAY:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 626
    .line 627
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 628
    .line 629
    move-object/from16 v36, v0

    .line 630
    .line 631
    const-string v53, "FACE_AUTH_UPDATED_CAMERA_LAUNCHED"

    .line 632
    .line 633
    const/16 v54, 0x1c

    .line 634
    .line 635
    const/16 v55, 0x49c

    .line 636
    .line 637
    const-string v56, "Face auth started/stopped because camera launched"

    .line 638
    .line 639
    const/16 v62, 0x0

    .line 640
    .line 641
    const/16 v63, 0x4

    .line 642
    .line 643
    const/16 v64, 0x0

    .line 644
    .line 645
    const/16 v57, 0x0

    .line 646
    .line 647
    const/16 v58, 0x4

    .line 648
    .line 649
    const/16 v59, 0x0

    .line 650
    .line 651
    move-object/from16 v52, v0

    .line 652
    .line 653
    invoke-direct/range {v52 .. v59}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 654
    .line 655
    .line 656
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_CAMERA_LAUNCHED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 657
    .line 658
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 659
    .line 660
    move-object/from16 v37, v0

    .line 661
    .line 662
    const-string v39, "FACE_AUTH_UPDATED_FP_AUTHENTICATED"

    .line 663
    .line 664
    const/16 v40, 0x1d

    .line 665
    .line 666
    const/16 v41, 0x49d

    .line 667
    .line 668
    const-string v42, "Face auth started/stopped because fingerprint launched"

    .line 669
    .line 670
    const/16 v43, 0x0

    .line 671
    .line 672
    const/16 v44, 0x4

    .line 673
    .line 674
    const/16 v45, 0x0

    .line 675
    .line 676
    move-object/from16 v38, v0

    .line 677
    .line 678
    invoke-direct/range {v38 .. v45}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 679
    .line 680
    .line 681
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_FP_AUTHENTICATED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 682
    .line 683
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 684
    .line 685
    move-object/from16 v38, v0

    .line 686
    .line 687
    const-string v53, "FACE_AUTH_UPDATED_GOING_TO_SLEEP"

    .line 688
    .line 689
    const/16 v54, 0x1e

    .line 690
    .line 691
    const/16 v55, 0x49e

    .line 692
    .line 693
    const-string v56, "Face auth started/stopped because going to sleep"

    .line 694
    .line 695
    move-object/from16 v52, v0

    .line 696
    .line 697
    invoke-direct/range {v52 .. v59}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 698
    .line 699
    .line 700
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_GOING_TO_SLEEP:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 701
    .line 702
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 703
    .line 704
    move-object/from16 v39, v0

    .line 705
    .line 706
    const-string v41, "FACE_AUTH_STOPPED_FINISHED_GOING_TO_SLEEP"

    .line 707
    .line 708
    const/16 v42, 0x1f

    .line 709
    .line 710
    const/16 v43, 0x49f

    .line 711
    .line 712
    const-string v44, "Face auth stopped because finished going to sleep"

    .line 713
    .line 714
    const/16 v45, 0x0

    .line 715
    .line 716
    const/16 v46, 0x4

    .line 717
    .line 718
    const/16 v47, 0x0

    .line 719
    .line 720
    move-object/from16 v40, v0

    .line 721
    .line 722
    invoke-direct/range {v40 .. v47}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 723
    .line 724
    .line 725
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FINISHED_GOING_TO_SLEEP:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 726
    .line 727
    new-instance v52, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 728
    .line 729
    move-object/from16 v40, v52

    .line 730
    .line 731
    const-string v53, "FACE_AUTH_UPDATED_ON_KEYGUARD_INIT"

    .line 732
    .line 733
    const/16 v54, 0x20

    .line 734
    .line 735
    const/16 v55, 0x4a5

    .line 736
    .line 737
    const-string v56, "Face auth started/stopped because Keyguard is initialized"

    .line 738
    .line 739
    invoke-direct/range {v52 .. v59}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 740
    .line 741
    .line 742
    new-instance v42, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 743
    .line 744
    move-object/from16 v41, v42

    .line 745
    .line 746
    const-string v1, "FACE_AUTH_UPDATED_KEYGUARD_RESET"

    .line 747
    .line 748
    const/16 v2, 0x21

    .line 749
    .line 750
    const/16 v3, 0x4a1

    .line 751
    .line 752
    const-string v4, "Face auth started/stopped because Keyguard is reset"

    .line 753
    .line 754
    move-object/from16 v0, v42

    .line 755
    .line 756
    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 757
    .line 758
    .line 759
    sput-object v42, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_RESET:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 760
    .line 761
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 762
    .line 763
    move-object/from16 v42, v0

    .line 764
    .line 765
    const-string v58, "FACE_AUTH_UPDATED_USER_SWITCHING"

    .line 766
    .line 767
    const/16 v59, 0x22

    .line 768
    .line 769
    const/16 v60, 0x4a2

    .line 770
    .line 771
    const-string v61, "Face auth started/stopped because user is switching"

    .line 772
    .line 773
    move-object/from16 v57, v0

    .line 774
    .line 775
    invoke-direct/range {v57 .. v64}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 776
    .line 777
    .line 778
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_USER_SWITCHING:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 779
    .line 780
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 781
    .line 782
    move-object/from16 v43, v0

    .line 783
    .line 784
    const-string v45, "FACE_AUTH_UPDATED_ON_FACE_AUTHENTICATED"

    .line 785
    .line 786
    const/16 v46, 0x23

    .line 787
    .line 788
    const/16 v47, 0x4a3

    .line 789
    .line 790
    const-string v48, "Face auth started/stopped because face is authenticated"

    .line 791
    .line 792
    move-object/from16 v44, v0

    .line 793
    .line 794
    invoke-direct/range {v44 .. v51}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 795
    .line 796
    .line 797
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_ON_FACE_AUTHENTICATED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 798
    .line 799
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 800
    .line 801
    move-object/from16 v44, v0

    .line 802
    .line 803
    const-string v53, "FACE_AUTH_UPDATED_BIOMETRIC_ENABLED_ON_KEYGUARD"

    .line 804
    .line 805
    const/16 v54, 0x24

    .line 806
    .line 807
    const/16 v55, 0x4a4

    .line 808
    .line 809
    const-string v56, "Face auth started/stopped because biometric is enabled on keyguard"

    .line 810
    .line 811
    const/16 v57, 0x0

    .line 812
    .line 813
    const/16 v58, 0x4

    .line 814
    .line 815
    const/16 v59, 0x0

    .line 816
    .line 817
    move-object/from16 v52, v0

    .line 818
    .line 819
    invoke-direct/range {v52 .. v59}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 820
    .line 821
    .line 822
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_BIOMETRIC_ENABLED_ON_KEYGUARD:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 823
    .line 824
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 825
    .line 826
    move-object/from16 v45, v0

    .line 827
    .line 828
    const-string v66, "FACE_AUTH_UPDATED_STRONG_AUTH_CHANGED"

    .line 829
    .line 830
    const/16 v67, 0x25

    .line 831
    .line 832
    const/16 v68, 0x4e7

    .line 833
    .line 834
    const-string v69, "Face auth stopped because strong auth allowed changed"

    .line 835
    .line 836
    const/16 v70, 0x0

    .line 837
    .line 838
    const/16 v71, 0x4

    .line 839
    .line 840
    const/16 v72, 0x0

    .line 841
    .line 842
    move-object/from16 v65, v0

    .line 843
    .line 844
    invoke-direct/range {v65 .. v72}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 845
    .line 846
    .line 847
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_STRONG_AUTH_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 848
    .line 849
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 850
    .line 851
    move-object/from16 v46, v0

    .line 852
    .line 853
    const-string v48, "FACE_AUTH_NON_STRONG_BIOMETRIC_ALLOWED_CHANGED"

    .line 854
    .line 855
    const/16 v49, 0x26

    .line 856
    .line 857
    const/16 v50, 0x4e8

    .line 858
    .line 859
    const-string v51, "Face auth stopped because non strong biometric allowed changed"

    .line 860
    .line 861
    const/16 v52, 0x0

    .line 862
    .line 863
    const/16 v53, 0x4

    .line 864
    .line 865
    const/16 v54, 0x0

    .line 866
    .line 867
    move-object/from16 v47, v0

    .line 868
    .line 869
    invoke-direct/range {v47 .. v54}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 870
    .line 871
    .line 872
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_NON_STRONG_BIOMETRIC_ALLOWED_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 873
    .line 874
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 875
    .line 876
    move-object/from16 v47, v0

    .line 877
    .line 878
    const-string v66, "FACE_AUTH_TRIGGERED_RETRY_BUTTON_CLICKED"

    .line 879
    .line 880
    const/16 v67, 0x27

    .line 881
    .line 882
    const/16 v68, 0x1389

    .line 883
    .line 884
    const-string v69, "Face auth triggered due to retry button click."

    .line 885
    .line 886
    move-object/from16 v65, v0

    .line 887
    .line 888
    invoke-direct/range {v65 .. v72}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 889
    .line 890
    .line 891
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_RETRY_BUTTON_CLICKED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 892
    .line 893
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 894
    .line 895
    move-object/from16 v48, v0

    .line 896
    .line 897
    const-string v50, "FACE_AUTH_UPDATED_QS_FULLY_EXPANDED"

    .line 898
    .line 899
    const/16 v51, 0x28

    .line 900
    .line 901
    const/16 v52, 0x138a

    .line 902
    .line 903
    const-string v53, "Face auth because qs is fully expanded"

    .line 904
    .line 905
    const/16 v54, 0x0

    .line 906
    .line 907
    const/16 v55, 0x4

    .line 908
    .line 909
    const/16 v56, 0x0

    .line 910
    .line 911
    move-object/from16 v49, v0

    .line 912
    .line 913
    invoke-direct/range {v49 .. v56}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 914
    .line 915
    .line 916
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_QS_FULLY_EXPANDED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 917
    .line 918
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 919
    .line 920
    move-object/from16 v49, v0

    .line 921
    .line 922
    const-string v66, "FACE_AUTH_UPDATED_LOCKOUT_DEADLINE"

    .line 923
    .line 924
    const/16 v67, 0x29

    .line 925
    .line 926
    const/16 v68, 0x138b

    .line 927
    .line 928
    const-string v69, "Face auth started/stopped because PPP lockout deadline is set"

    .line 929
    .line 930
    move-object/from16 v65, v0

    .line 931
    .line 932
    invoke-direct/range {v65 .. v72}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 933
    .line 934
    .line 935
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_LOCKOUT_DEADLINE:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 936
    .line 937
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 938
    .line 939
    move-object/from16 v50, v0

    .line 940
    .line 941
    const-string v74, "FACE_AUTH_UPDATED_BIOMETRIC_LOCKOUT_DEADLINE"

    .line 942
    .line 943
    const/16 v75, 0x2a

    .line 944
    .line 945
    const/16 v76, 0x138c

    .line 946
    .line 947
    const-string v77, "Face auth started/stopped because biometric lockout deadline is set"

    .line 948
    .line 949
    const/16 v78, 0x0

    .line 950
    .line 951
    const/16 v79, 0x4

    .line 952
    .line 953
    const/16 v80, 0x0

    .line 954
    .line 955
    move-object/from16 v73, v0

    .line 956
    .line 957
    invoke-direct/range {v73 .. v80}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 958
    .line 959
    .line 960
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_BIOMETRIC_LOCKOUT_DEADLINE:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 961
    .line 962
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 963
    .line 964
    move-object/from16 v51, v0

    .line 965
    .line 966
    const-string v53, "FACE_AUTH_UPDATED_COCKTAIL_BAR_SHOWING_CHANGED"

    .line 967
    .line 968
    const/16 v54, 0x2b

    .line 969
    .line 970
    const/16 v55, 0x138d

    .line 971
    .line 972
    const-string v56, "Face auth started/stopped because cocktail bar showing state is changed"

    .line 973
    .line 974
    move-object/from16 v52, v0

    .line 975
    .line 976
    invoke-direct/range {v52 .. v59}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 977
    .line 978
    .line 979
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_COCKTAIL_BAR_SHOWING_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 980
    .line 981
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 982
    .line 983
    move-object/from16 v52, v0

    .line 984
    .line 985
    const-string v58, "FACE_AUTH_UPDATED_SECURE_STATE_UNLOCK_CHANGED"

    .line 986
    .line 987
    const/16 v59, 0x2c

    .line 988
    .line 989
    const/16 v60, 0x138e

    .line 990
    .line 991
    const-string v61, "Face auth started/stopped because secure state unlock is changed"

    .line 992
    .line 993
    move-object/from16 v57, v0

    .line 994
    .line 995
    invoke-direct/range {v57 .. v64}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 996
    .line 997
    .line 998
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_SECURE_STATE_UNLOCK_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 999
    .line 1000
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1001
    .line 1002
    move-object/from16 v53, v0

    .line 1003
    .line 1004
    const-string v66, "FACE_AUTH_UPDATED_SUB_SCREEN"

    .line 1005
    .line 1006
    const/16 v67, 0x2d

    .line 1007
    .line 1008
    const/16 v68, 0x138f

    .line 1009
    .line 1010
    const-string v69, "Face auth started/stopped because sub screen requests biometrics"

    .line 1011
    .line 1012
    const/16 v75, 0x0

    .line 1013
    .line 1014
    const/16 v76, 0x4

    .line 1015
    .line 1016
    const/16 v77, 0x0

    .line 1017
    .line 1018
    move-object/from16 v65, v0

    .line 1019
    .line 1020
    invoke-direct/range {v65 .. v72}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1021
    .line 1022
    .line 1023
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_SUB_SCREEN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1024
    .line 1025
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1026
    .line 1027
    move-object/from16 v54, v0

    .line 1028
    .line 1029
    const-string v56, "FACE_AUTH_UPDATED_KEYGUARD_UNLOCKING"

    .line 1030
    .line 1031
    const/16 v57, 0x2e

    .line 1032
    .line 1033
    const/16 v58, 0x1390

    .line 1034
    .line 1035
    const-string v59, "Face auth started/stopped because keyguard is unlocking"

    .line 1036
    .line 1037
    const/16 v66, 0x0

    .line 1038
    .line 1039
    const/16 v67, 0x4

    .line 1040
    .line 1041
    const/16 v68, 0x0

    .line 1042
    .line 1043
    const/16 v60, 0x0

    .line 1044
    .line 1045
    const/16 v61, 0x4

    .line 1046
    .line 1047
    const/16 v62, 0x0

    .line 1048
    .line 1049
    move-object/from16 v55, v0

    .line 1050
    .line 1051
    invoke-direct/range {v55 .. v62}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1052
    .line 1053
    .line 1054
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_UNLOCKING:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1055
    .line 1056
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1057
    .line 1058
    move-object/from16 v55, v0

    .line 1059
    .line 1060
    const-string v79, "FACE_AUTH_STOPPED_SESSION_CLOSE"

    .line 1061
    .line 1062
    const/16 v80, 0x2f

    .line 1063
    .line 1064
    const/16 v81, 0x1391

    .line 1065
    .line 1066
    const-string v82, "Face auth stopped because face manager session is closed"

    .line 1067
    .line 1068
    const/16 v83, 0x0

    .line 1069
    .line 1070
    const/16 v84, 0x4

    .line 1071
    .line 1072
    const/16 v85, 0x0

    .line 1073
    .line 1074
    move-object/from16 v78, v0

    .line 1075
    .line 1076
    invoke-direct/range {v78 .. v85}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1077
    .line 1078
    .line 1079
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_SESSION_CLOSE:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1080
    .line 1081
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1082
    .line 1083
    move-object/from16 v56, v0

    .line 1084
    .line 1085
    const-string v58, "FACE_AUTH_UPDATED_WINDOW_FOCUS_CHANGED"

    .line 1086
    .line 1087
    const/16 v59, 0x30

    .line 1088
    .line 1089
    const/16 v60, 0x1392

    .line 1090
    .line 1091
    const-string v61, "Face auth started/stopped because window focus is changed"

    .line 1092
    .line 1093
    const/16 v62, 0x0

    .line 1094
    .line 1095
    move-object/from16 v57, v0

    .line 1096
    .line 1097
    invoke-direct/range {v57 .. v64}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1098
    .line 1099
    .line 1100
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_WINDOW_FOCUS_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1101
    .line 1102
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1103
    .line 1104
    move-object/from16 v57, v0

    .line 1105
    .line 1106
    const-string v79, "FACE_AUTH_STOPPED_FACE_ERROR"

    .line 1107
    .line 1108
    const/16 v80, 0x31

    .line 1109
    .line 1110
    const/16 v81, 0x1393

    .line 1111
    .line 1112
    const-string v82, "Face auth stopped due to face recognition error"

    .line 1113
    .line 1114
    move-object/from16 v78, v0

    .line 1115
    .line 1116
    invoke-direct/range {v78 .. v85}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1117
    .line 1118
    .line 1119
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FACE_ERROR:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1120
    .line 1121
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1122
    .line 1123
    move-object/from16 v58, v0

    .line 1124
    .line 1125
    const-string v87, "FACE_AUTH_STOPPED_FACE_FAILED"

    .line 1126
    .line 1127
    const/16 v88, 0x32

    .line 1128
    .line 1129
    const/16 v89, 0x1394

    .line 1130
    .line 1131
    const-string v90, "Face auth stopped due to face recognition failed"

    .line 1132
    .line 1133
    const/16 v91, 0x0

    .line 1134
    .line 1135
    const/16 v92, 0x4

    .line 1136
    .line 1137
    const/16 v93, 0x0

    .line 1138
    .line 1139
    move-object/from16 v86, v0

    .line 1140
    .line 1141
    invoke-direct/range {v86 .. v93}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1142
    .line 1143
    .line 1144
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FACE_FAILED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1145
    .line 1146
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1147
    .line 1148
    move-object/from16 v59, v0

    .line 1149
    .line 1150
    const-string v79, "FACE_AUTH_UPDATED_COVER_STATE_CHANGED"

    .line 1151
    .line 1152
    const/16 v80, 0x33

    .line 1153
    .line 1154
    const/16 v81, 0x1395

    .line 1155
    .line 1156
    const-string v82, "Face auth started/stopped because cover state is changed"

    .line 1157
    .line 1158
    move-object/from16 v78, v0

    .line 1159
    .line 1160
    invoke-direct/range {v78 .. v85}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1161
    .line 1162
    .line 1163
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_COVER_STATE_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1164
    .line 1165
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1166
    .line 1167
    move-object/from16 v60, v0

    .line 1168
    .line 1169
    const-string v62, "FACE_AUTH_UPDATED_FULL_SCREEN_FACE_WIDGET"

    .line 1170
    .line 1171
    const/16 v63, 0x34

    .line 1172
    .line 1173
    const/16 v64, 0x1396

    .line 1174
    .line 1175
    const-string v65, "Face auth started/stopped because full screen face widget is changed"

    .line 1176
    .line 1177
    move-object/from16 v61, v0

    .line 1178
    .line 1179
    invoke-direct/range {v61 .. v68}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1180
    .line 1181
    .line 1182
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_FULL_SCREEN_FACE_WIDGET:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1183
    .line 1184
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1185
    .line 1186
    move-object/from16 v61, v0

    .line 1187
    .line 1188
    const-string v71, "FACE_AUTH_UPDATED_DYNAMIC_LOCK"

    .line 1189
    .line 1190
    const/16 v72, 0x35

    .line 1191
    .line 1192
    const/16 v73, 0x1397

    .line 1193
    .line 1194
    const-string v74, "Face auth started/stopped because dynamic lock screen is changed"

    .line 1195
    .line 1196
    move-object/from16 v70, v0

    .line 1197
    .line 1198
    invoke-direct/range {v70 .. v77}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1199
    .line 1200
    .line 1201
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_DYNAMIC_LOCK:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1202
    .line 1203
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1204
    .line 1205
    move-object/from16 v62, v0

    .line 1206
    .line 1207
    const-string v64, "FACE_AUTH_UPDATED_NOTI_STAR_STATE_CHANGED"

    .line 1208
    .line 1209
    const/16 v65, 0x36

    .line 1210
    .line 1211
    const/16 v66, 0x1398

    .line 1212
    .line 1213
    const-string v67, "Face auth started/stopped because noti star state is changed"

    .line 1214
    .line 1215
    const/16 v73, 0x0

    .line 1216
    .line 1217
    const/16 v74, 0x4

    .line 1218
    .line 1219
    const/16 v75, 0x0

    .line 1220
    .line 1221
    const/16 v68, 0x0

    .line 1222
    .line 1223
    const/16 v69, 0x4

    .line 1224
    .line 1225
    const/16 v70, 0x0

    .line 1226
    .line 1227
    move-object/from16 v63, v0

    .line 1228
    .line 1229
    invoke-direct/range {v63 .. v70}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1230
    .line 1231
    .line 1232
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_NOTI_STAR_STATE_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1233
    .line 1234
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1235
    .line 1236
    move-object/from16 v63, v0

    .line 1237
    .line 1238
    const-string v77, "FACE_AUTH_UPDATED_LOCK_ICON_PRESSED"

    .line 1239
    .line 1240
    const/16 v78, 0x37

    .line 1241
    .line 1242
    const/16 v79, 0x1399

    .line 1243
    .line 1244
    const-string v80, "Face auth started/stopped because lock icon is pressed"

    .line 1245
    .line 1246
    const/16 v86, 0x0

    .line 1247
    .line 1248
    const/16 v87, 0x4

    .line 1249
    .line 1250
    const/16 v88, 0x0

    .line 1251
    .line 1252
    const/16 v81, 0x0

    .line 1253
    .line 1254
    const/16 v82, 0x4

    .line 1255
    .line 1256
    const/16 v83, 0x0

    .line 1257
    .line 1258
    move-object/from16 v76, v0

    .line 1259
    .line 1260
    invoke-direct/range {v76 .. v83}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1261
    .line 1262
    .line 1263
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_LOCK_ICON_PRESSED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1264
    .line 1265
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1266
    .line 1267
    move-object/from16 v64, v0

    .line 1268
    .line 1269
    const-string v66, "FACE_AUTH_UPDATED_FOLDER_STATE_CHANGED"

    .line 1270
    .line 1271
    const/16 v67, 0x38

    .line 1272
    .line 1273
    const/16 v68, 0x139a

    .line 1274
    .line 1275
    const-string v69, "Face auth started/stopped because folder state is changed"

    .line 1276
    .line 1277
    const/16 v70, 0x0

    .line 1278
    .line 1279
    const/16 v71, 0x4

    .line 1280
    .line 1281
    const/16 v72, 0x0

    .line 1282
    .line 1283
    move-object/from16 v65, v0

    .line 1284
    .line 1285
    invoke-direct/range {v65 .. v72}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1286
    .line 1287
    .line 1288
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_FOLDER_STATE_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1289
    .line 1290
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1291
    .line 1292
    move-object/from16 v65, v0

    .line 1293
    .line 1294
    const-string v82, "FACE_AUTH_STOPPED_PREV_CREDENTIAL_VIEW"

    .line 1295
    .line 1296
    const/16 v83, 0x39

    .line 1297
    .line 1298
    const/16 v84, 0x139b

    .line 1299
    .line 1300
    const-string v85, "Face auth stopped because showing prev credential view is changed"

    .line 1301
    .line 1302
    move-object/from16 v81, v0

    .line 1303
    .line 1304
    invoke-direct/range {v81 .. v88}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1305
    .line 1306
    .line 1307
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_PREV_CREDENTIAL_VIEW:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1308
    .line 1309
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1310
    .line 1311
    move-object/from16 v66, v0

    .line 1312
    .line 1313
    const-string v69, "FACE_AUTH_STARTED_LOCK_EDIT_MODE_FINISHED"

    .line 1314
    .line 1315
    const/16 v70, 0x3a

    .line 1316
    .line 1317
    const/16 v71, 0x139c

    .line 1318
    .line 1319
    const-string v72, "Face auth started because lock edit mode is finished."

    .line 1320
    .line 1321
    move-object/from16 v68, v0

    .line 1322
    .line 1323
    invoke-direct/range {v68 .. v75}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1324
    .line 1325
    .line 1326
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STARTED_LOCK_EDIT_MODE_FINISHED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1327
    .line 1328
    filled-new-array/range {v8 .. v66}, [Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v0

    .line 1332
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->$VALUES:[Lcom/android/keyguard/FaceAuthUiEvent;

    .line 1333
    .line 1334
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/android/keyguard/FaceAuthUiEvent;->id:I

    iput-object p4, p0, Lcom/android/keyguard/FaceAuthUiEvent;->reason:Ljava/lang/String;

    iput p5, p0, Lcom/android/keyguard/FaceAuthUiEvent;->extraInfo:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/FaceAuthUiEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/FaceAuthUiEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->$VALUES:[Lcom/android/keyguard/FaceAuthUiEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/keyguard/FaceAuthUiEvent;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public extraInfoToString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtraInfo()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/FaceAuthUiEvent;->extraInfo:I

    .line 2
    .line 3
    return p0
.end method

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/FaceAuthUiEvent;->id:I

    .line 2
    .line 3
    return p0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/FaceAuthUiEvent;->reason:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setExtraInfo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/FaceAuthUiEvent;->extraInfo:I

    .line 2
    .line 3
    return-void
.end method
