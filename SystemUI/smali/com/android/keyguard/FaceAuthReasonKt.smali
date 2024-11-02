.class public abstract Lcom/android/keyguard/FaceAuthReasonKt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final apiRequestReasonToUiEvent:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    .line 1
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_SWIPE_UP_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 2
    .line 3
    new-instance v1, Lkotlin/Pair;

    .line 4
    .line 5
    const-string v2, "Face auth due to swipe up on bouncer"

    .line 6
    .line 7
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_UDFPS_POINTER_DOWN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 11
    .line 12
    new-instance v2, Lkotlin/Pair;

    .line 13
    .line 14
    const-string v3, "Face auth triggered due to finger down on UDFPS"

    .line 15
    .line 16
    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_NOTIFICATION_PANEL_CLICKED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 20
    .line 21
    new-instance v3, Lkotlin/Pair;

    .line 22
    .line 23
    const-string v4, "Face auth due to notification panel click."

    .line 24
    .line 25
    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_QS_EXPANDED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 29
    .line 30
    new-instance v4, Lkotlin/Pair;

    .line 31
    .line 32
    const-string v5, "Face auth due to QS expansion."

    .line 33
    .line 34
    invoke-direct {v4, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_PICK_UP_GESTURE_TRIGGERED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 38
    .line 39
    new-instance v5, Lkotlin/Pair;

    .line 40
    .line 41
    const-string v6, "Face auth due to pickup gesture triggered when the device is awake and not from AOD."

    .line 42
    .line 43
    invoke-direct {v5, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_RETRY_BUTTON_CLICKED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 47
    .line 48
    new-instance v6, Lkotlin/Pair;

    .line 49
    .line 50
    const-string v7, "Face auth triggered due to retry button click."

    .line 51
    .line 52
    invoke-direct {v6, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_QS_FULLY_EXPANDED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 56
    .line 57
    new-instance v7, Lkotlin/Pair;

    .line 58
    .line 59
    const-string v8, "Face auth because qs is fully expanded"

    .line 60
    .line 61
    invoke-direct {v7, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_LOCKOUT_DEADLINE:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 65
    .line 66
    new-instance v8, Lkotlin/Pair;

    .line 67
    .line 68
    const-string v9, "Face auth started/stopped because PPP lockout deadline is set"

    .line 69
    .line 70
    invoke-direct {v8, v9, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_BIOMETRIC_LOCKOUT_DEADLINE:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 74
    .line 75
    new-instance v9, Lkotlin/Pair;

    .line 76
    .line 77
    const-string v10, "Face auth started/stopped because biometric lockout deadline is set"

    .line 78
    .line 79
    invoke-direct {v9, v10, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_COCKTAIL_BAR_SHOWING_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 83
    .line 84
    new-instance v10, Lkotlin/Pair;

    .line 85
    .line 86
    const-string v11, "Face auth started/stopped because cocktail bar showing state is changed"

    .line 87
    .line 88
    invoke-direct {v10, v11, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_SECURE_STATE_UNLOCK_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 92
    .line 93
    new-instance v11, Lkotlin/Pair;

    .line 94
    .line 95
    const-string v12, "Face auth started/stopped because secure state unlock is changed"

    .line 96
    .line 97
    invoke-direct {v11, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_SUB_SCREEN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 101
    .line 102
    new-instance v12, Lkotlin/Pair;

    .line 103
    .line 104
    const-string v13, "Face auth started/stopped because sub screen requests biometrics"

    .line 105
    .line 106
    invoke-direct {v12, v13, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_UNLOCKING:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 110
    .line 111
    new-instance v13, Lkotlin/Pair;

    .line 112
    .line 113
    const-string v14, "Face auth started/stopped because keyguard is unlocking"

    .line 114
    .line 115
    invoke-direct {v13, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_SESSION_CLOSE:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 119
    .line 120
    new-instance v14, Lkotlin/Pair;

    .line 121
    .line 122
    const-string v15, "Face auth stopped because face manager session is closed"

    .line 123
    .line 124
    invoke-direct {v14, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_WINDOW_FOCUS_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 128
    .line 129
    new-instance v15, Lkotlin/Pair;

    .line 130
    .line 131
    move-object/from16 v16, v14

    .line 132
    .line 133
    const-string v14, "Face auth started/stopped because window focus is changed"

    .line 134
    .line 135
    invoke-direct {v15, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FACE_ERROR:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 139
    .line 140
    new-instance v14, Lkotlin/Pair;

    .line 141
    .line 142
    move-object/from16 v17, v15

    .line 143
    .line 144
    const-string v15, "Face auth stopped due to face recognition error"

    .line 145
    .line 146
    invoke-direct {v14, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FACE_FAILED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 150
    .line 151
    new-instance v15, Lkotlin/Pair;

    .line 152
    .line 153
    move-object/from16 v18, v14

    .line 154
    .line 155
    const-string v14, "Face auth stopped due to face recognition failed"

    .line 156
    .line 157
    invoke-direct {v15, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_COVER_STATE_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 161
    .line 162
    new-instance v14, Lkotlin/Pair;

    .line 163
    .line 164
    move-object/from16 v19, v15

    .line 165
    .line 166
    const-string v15, "Face auth started/stopped because cover state is changed"

    .line 167
    .line 168
    invoke-direct {v14, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_FULL_SCREEN_FACE_WIDGET:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 172
    .line 173
    new-instance v15, Lkotlin/Pair;

    .line 174
    .line 175
    move-object/from16 v20, v14

    .line 176
    .line 177
    const-string v14, "Face auth started/stopped because full screen face widget is changed"

    .line 178
    .line 179
    invoke-direct {v15, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_DYNAMIC_LOCK:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 183
    .line 184
    new-instance v14, Lkotlin/Pair;

    .line 185
    .line 186
    move-object/from16 v21, v15

    .line 187
    .line 188
    const-string v15, "Face auth started/stopped because dynamic lock screen is changed"

    .line 189
    .line 190
    invoke-direct {v14, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_NOTI_STAR_STATE_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 194
    .line 195
    new-instance v15, Lkotlin/Pair;

    .line 196
    .line 197
    move-object/from16 v22, v14

    .line 198
    .line 199
    const-string v14, "Face auth started/stopped because noti star state is changed"

    .line 200
    .line 201
    invoke-direct {v15, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_LOCK_ICON_PRESSED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 205
    .line 206
    new-instance v14, Lkotlin/Pair;

    .line 207
    .line 208
    move-object/from16 v23, v15

    .line 209
    .line 210
    const-string v15, "Face auth started/stopped because lock icon is pressed"

    .line 211
    .line 212
    invoke-direct {v14, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_FOLDER_STATE_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 216
    .line 217
    new-instance v15, Lkotlin/Pair;

    .line 218
    .line 219
    move-object/from16 v24, v14

    .line 220
    .line 221
    const-string v14, "Face auth started/stopped because folder state is changed"

    .line 222
    .line 223
    invoke-direct {v15, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_PREV_CREDENTIAL_VIEW:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 227
    .line 228
    new-instance v14, Lkotlin/Pair;

    .line 229
    .line 230
    move-object/from16 v25, v15

    .line 231
    .line 232
    const-string v15, "Face auth stopped because showing prev credential view is changed"

    .line 233
    .line 234
    invoke-direct {v14, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    move-object/from16 v0, v18

    .line 238
    .line 239
    move-object/from16 v18, v20

    .line 240
    .line 241
    move-object/from16 v20, v22

    .line 242
    .line 243
    move-object/from16 v22, v24

    .line 244
    .line 245
    move-object/from16 v24, v14

    .line 246
    .line 247
    move-object/from16 v14, v16

    .line 248
    .line 249
    move-object/from16 v15, v17

    .line 250
    .line 251
    move-object/from16 v16, v0

    .line 252
    .line 253
    move-object/from16 v17, v19

    .line 254
    .line 255
    move-object/from16 v19, v21

    .line 256
    .line 257
    move-object/from16 v21, v23

    .line 258
    .line 259
    move-object/from16 v23, v25

    .line 260
    .line 261
    filled-new-array/range {v1 .. v24}, [Lkotlin/Pair;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    sput-object v0, Lcom/android/keyguard/FaceAuthReasonKt;->apiRequestReasonToUiEvent:Ljava/util/Map;

    .line 270
    .line 271
    return-void
.end method
