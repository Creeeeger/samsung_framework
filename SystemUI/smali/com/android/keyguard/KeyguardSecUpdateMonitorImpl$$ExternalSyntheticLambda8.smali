.class public final synthetic Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 13
    .line 14
    new-array v0, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string/jumbo v1, "onFpAuthenticationSucceeded end"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logLapTime(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_SESSION_CLOSE:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const-string v0, "KeyguardFace"

    .line 50
    .line 51
    const-string/jumbo v1, "requestSessionClose()"

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->semSessionClose()V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void

    .line 63
    :pswitch_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 66
    .line 67
    new-array v0, v1, [Ljava/lang/Object;

    .line 68
    .line 69
    const-string/jumbo v1, "onFaceAuthenticationSucceeded end"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logLapTime(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 77
    .line 78
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isEnabledWof()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_2

    .line 85
    .line 86
    if-nez v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 95
    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->requestSessionOpen()Z

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockCompleted()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 116
    .line 117
    if-eqz p0, :cond_3

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->semSessionOpen()V

    .line 120
    .line 121
    .line 122
    :cond_3
    return-void

    .line 123
    :pswitch_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    const-string v0, "KeyguardFingerprint"

    .line 129
    .line 130
    const-string v1, "Waiting window focus change"

    .line 131
    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 136
    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 140
    .line 141
    .line 142
    :cond_4
    return-void

    .line 143
    :pswitch_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 146
    .line 147
    const/4 v1, 0x1

    .line 148
    const-wide/16 v2, 0xa

    .line 149
    .line 150
    const-wide/16 v4, 0x14

    .line 151
    .line 152
    move-object v0, p0

    .line 153
    check-cast v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 154
    .line 155
    const-wide/16 v6, 0x0

    .line 156
    .line 157
    const/4 v8, 0x0

    .line 158
    const/4 v9, 0x0

    .line 159
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->enable(IJJJZLkotlin/jvm/functions/Function2;)Z

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :pswitch_6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 164
    .line 165
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 166
    .line 167
    const/4 v1, 0x1

    .line 168
    const-wide/16 v2, 0xa

    .line 169
    .line 170
    const-wide/16 v4, 0x14

    .line 171
    .line 172
    move-object v0, p0

    .line 173
    check-cast v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 174
    .line 175
    const-wide/16 v6, 0x0

    .line 176
    .line 177
    const/4 v8, 0x0

    .line 178
    const/4 v9, 0x0

    .line 179
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->enable(IJJJZLkotlin/jvm/functions/Function2;)Z

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :pswitch_7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 184
    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_FULL_SCREEN_FACE_WIDGET:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 189
    .line 190
    invoke-virtual {p0, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :pswitch_8
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 195
    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_WINDOW_FOCUS_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 200
    .line 201
    invoke-virtual {p0, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :pswitch_9
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 206
    .line 207
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :pswitch_a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 212
    .line 213
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 214
    .line 215
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    .line 216
    .line 217
    const/16 v2, 0xb

    .line 218
    .line 219
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    .line 220
    .line 221
    .line 222
    iget-object p0, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->executor:Ljava/util/concurrent/ExecutorService;

    .line 223
    .line 224
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;

    .line 225
    .line 226
    const-string v2, "PowerManager#userActivity"

    .line 227
    .line 228
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 236
    .line 237
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 238
    .line 239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 240
    .line 241
    .line 242
    move-result-wide v2

    .line 243
    invoke-virtual {p0, v2, v3, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
