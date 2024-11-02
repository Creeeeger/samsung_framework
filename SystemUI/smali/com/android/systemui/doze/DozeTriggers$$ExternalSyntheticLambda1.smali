.class public final synthetic Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:F

.field public final synthetic f$5:F

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z

.field public final synthetic f$8:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;IZZFFZZ[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$2:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$3:Z

    .line 11
    .line 12
    iput p5, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$4:F

    .line 13
    .line 14
    iput p6, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$5:F

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$6:Z

    .line 17
    .line 18
    iput-boolean p8, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$7:Z

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$8:[F

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 4
    .line 5
    iget v2, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$2:Z

    .line 8
    .line 9
    iget-boolean v4, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$3:Z

    .line 10
    .line 11
    iget v13, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$4:F

    .line 12
    .line 13
    iget v14, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$5:F

    .line 14
    .line 15
    iget-boolean v5, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$6:Z

    .line 16
    .line 17
    iget-boolean v6, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$7:Z

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$8:[F

    .line 20
    .line 21
    move-object/from16 v7, p1

    .line 22
    .line 23
    check-cast v7, Ljava/lang/Boolean;

    .line 24
    .line 25
    iget-object v8, v1, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 26
    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-eqz v7, :cond_0

    .line 34
    .line 35
    const-string/jumbo v0, "prox reporting near"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v8, v2, v0}, Lcom/android/systemui/doze/DozeLog;->traceSensorEventDropped(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_0
    iget-object v7, v1, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 44
    .line 45
    const/4 v9, 0x1

    .line 46
    if-nez v3, :cond_6

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    if-eqz v5, :cond_3

    .line 52
    .line 53
    iget-object v0, v1, Lcom/android/systemui/doze/DozeTriggers;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 54
    .line 55
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 56
    .line 57
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    const-string v0, "keyguard occluded"

    .line 62
    .line 63
    invoke-virtual {v8, v2, v0}, Lcom/android/systemui/doze/DozeLog;->traceSensorEventDropped(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeTriggers;->gentleWakeUp(I)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_3
    if-eqz v6, :cond_5

    .line 74
    .line 75
    iget-object v2, v1, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2, v9}, Lcom/android/systemui/doze/DozeTriggers;->canPulse(Lcom/android/systemui/doze/DozeMachine$State;Z)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    const-string/jumbo v18, "updfsLongPress - setting aodInterruptRunnable to run when the display is on"

    .line 88
    .line 89
    .line 90
    iget-object v2, v8, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 91
    .line 92
    iget-object v15, v2, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 93
    .line 94
    const-string v16, "DozeLog"

    .line 95
    .line 96
    sget-object v17, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 97
    .line 98
    const/16 v19, 0x0

    .line 99
    .line 100
    const/16 v20, 0x8

    .line 101
    .line 102
    const/16 v21, 0x0

    .line 103
    .line 104
    invoke-static/range {v15 .. v21}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    new-instance v2, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;

    .line 108
    .line 109
    invoke-direct {v2, v1, v13, v14, v0}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/doze/DozeTriggers;FF[F)V

    .line 110
    .line 111
    .line 112
    iput-object v2, v1, Lcom/android/systemui/doze/DozeTriggers;->mAodInterruptRunnable:Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    const-string/jumbo v18, "udfpsLongPress - Not sending aodInterrupt. Unsupported doze state."

    .line 116
    .line 117
    .line 118
    iget-object v0, v8, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 119
    .line 120
    iget-object v15, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 121
    .line 122
    const-string v16, "DozeLog"

    .line 123
    .line 124
    sget-object v17, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 125
    .line 126
    const/16 v19, 0x0

    .line 127
    .line 128
    const/16 v20, 0x8

    .line 129
    .line 130
    const/16 v21, 0x0

    .line 131
    .line 132
    invoke-static/range {v15 .. v21}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :goto_0
    const/16 v0, 0xa

    .line 136
    .line 137
    const/4 v2, 0x0

    .line 138
    invoke-virtual {v1, v0, v9, v2}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_3

    .line 142
    .line 143
    :cond_5
    check-cast v7, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 144
    .line 145
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->extendPulse(I)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_3

    .line 149
    .line 150
    :cond_6
    :goto_1
    move-object v0, v7

    .line 151
    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    const/4 v3, 0x0

    .line 157
    cmpg-float v4, v13, v3

    .line 158
    .line 159
    if-ltz v4, :cond_9

    .line 160
    .line 161
    cmpg-float v4, v14, v3

    .line 162
    .line 163
    if-gez v4, :cond_7

    .line 164
    .line 165
    goto/16 :goto_2

    .line 166
    .line 167
    :cond_7
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    .line 168
    .line 169
    if-eqz v4, :cond_8

    .line 170
    .line 171
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-nez v4, :cond_8

    .line 176
    .line 177
    const/4 v4, 0x2

    .line 178
    new-array v4, v4, [I

    .line 179
    .line 180
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    .line 181
    .line 182
    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 183
    .line 184
    .line 185
    const/4 v5, 0x0

    .line 186
    aget v5, v4, v5

    .line 187
    .line 188
    int-to-float v5, v5

    .line 189
    sub-float v5, v13, v5

    .line 190
    .line 191
    aget v4, v4, v9

    .line 192
    .line 193
    int-to-float v4, v4

    .line 194
    sub-float v4, v14, v4

    .line 195
    .line 196
    cmpg-float v6, v3, v5

    .line 197
    .line 198
    if-gtz v6, :cond_8

    .line 199
    .line 200
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    .line 201
    .line 202
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    int-to-float v6, v6

    .line 207
    cmpg-float v5, v5, v6

    .line 208
    .line 209
    if-gtz v5, :cond_8

    .line 210
    .line 211
    cmpg-float v3, v3, v4

    .line 212
    .line 213
    if-gtz v3, :cond_8

    .line 214
    .line 215
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    .line 216
    .line 217
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    int-to-float v3, v3

    .line 222
    cmpg-float v3, v4, v3

    .line 223
    .line 224
    if-gtz v3, :cond_8

    .line 225
    .line 226
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 227
    .line 228
    .line 229
    move-result-wide v3

    .line 230
    const/4 v9, 0x0

    .line 231
    const/4 v15, 0x0

    .line 232
    const/4 v12, 0x0

    .line 233
    move-wide v5, v3

    .line 234
    move-wide v7, v3

    .line 235
    move v10, v13

    .line 236
    move v11, v14

    .line 237
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    .line 242
    .line 243
    invoke-virtual {v6, v5}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 247
    .line 248
    .line 249
    const/4 v9, 0x1

    .line 250
    move-wide v5, v3

    .line 251
    move v12, v15

    .line 252
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    .line 257
    .line 258
    invoke-virtual {v4, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 262
    .line 263
    .line 264
    :cond_8
    new-instance v3, Landroid/graphics/Point;

    .line 265
    .line 266
    float-to-int v4, v13

    .line 267
    float-to-int v5, v14

    .line 268
    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 269
    .line 270
    .line 271
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeInteractor:Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

    .line 272
    .line 273
    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 274
    .line 275
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 276
    .line 277
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_lastDozeTapToWakePosition:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 278
    .line 279
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    :cond_9
    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeTriggers;->gentleWakeUp(I)V

    .line 283
    .line 284
    .line 285
    :goto_3
    return-void
.end method
