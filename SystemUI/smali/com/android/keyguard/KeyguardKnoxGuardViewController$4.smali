.class public final Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x3

    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    .line 14
    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 19
    .line 20
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 21
    .line 22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Ljava/lang/Long;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "checkUnlockAttempts "

    .line 36
    .line 37
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v1, "KeyguardKnoxGuardView"

    .line 48
    .line 49
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 53
    .line 54
    check-cast p1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    .line 55
    .line 56
    const/4 v5, 0x1

    .line 57
    invoke-virtual {p1, v5}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    :try_start_0
    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 64
    .line 65
    invoke-direct {v0, v2, p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-interface {v0, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception p1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v3, "Failed KNOXGUARD LOCK clear!!"

    .line 88
    .line 89
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :goto_0
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTriggerByRemoteLock(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 114
    .line 115
    invoke-interface {p1, v0, p0, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_3

    .line 119
    .line 120
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 121
    .line 122
    if-eqz v2, :cond_6

    .line 123
    .line 124
    const-wide/16 v5, 0x0

    .line 125
    .line 126
    cmp-long v7, v3, v5

    .line 127
    .line 128
    if-lez v7, :cond_3

    .line 129
    .line 130
    iget-wide v7, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 131
    .line 132
    cmp-long v2, v7, v3

    .line 133
    .line 134
    if-eqz v2, :cond_3

    .line 135
    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string/jumbo v7, "update lockTimeout "

    .line 139
    .line 140
    .line 141
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v7, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 145
    .line 146
    iget-wide v7, v7, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 147
    .line 148
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v7, " => "

    .line 152
    .line 153
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 167
    .line 168
    iput-wide v3, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 169
    .line 170
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 171
    .line 172
    iget v2, v1, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    .line 173
    .line 174
    if-lez v2, :cond_6

    .line 175
    .line 176
    iget-wide v3, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 177
    .line 178
    cmp-long v1, v3, v5

    .line 179
    .line 180
    if-lez v1, :cond_6

    .line 181
    .line 182
    if-lez v0, :cond_6

    .line 183
    .line 184
    rem-int v1, v0, v2

    .line 185
    .line 186
    if-nez v1, :cond_6

    .line 187
    .line 188
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 189
    .line 190
    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    .line 191
    .line 192
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    .line 193
    .line 194
    .line 195
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 200
    .line 201
    if-nez v1, :cond_4

    .line 202
    .line 203
    const-wide/16 v1, -0x1

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 207
    .line 208
    .line 209
    move-result-wide v1

    .line 210
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 211
    .line 212
    iget-wide v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 213
    .line 214
    add-long/2addr v1, v3

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 221
    .line 222
    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 223
    .line 224
    const-string/jumbo v5, "remotelockscreen.lockoutdeadline"

    .line 225
    .line 226
    .line 227
    invoke-static {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setLong(JLjava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    :goto_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 239
    .line 240
    if-nez v3, :cond_5

    .line 241
    .line 242
    const/4 v0, -0x1

    .line 243
    goto :goto_2

    .line 244
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 250
    .line 251
    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 252
    .line 253
    const-string/jumbo v5, "remotelockscreen.failedunlockcount"

    .line 254
    .line 255
    .line 256
    invoke-static {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    int-to-long v4, v0

    .line 261
    invoke-virtual {p0, v4, v5, v3, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setLong(JLjava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    :goto_2
    sput v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->numberOfAttemptsDone:I

    .line 265
    .line 266
    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->handleAttemptLockout(J)V

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 275
    .line 276
    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    const v1, 0x7f130961

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 289
    .line 290
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, p1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 294
    .line 295
    .line 296
    new-instance p1, Landroid/os/Handler;

    .line 297
    .line 298
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 299
    .line 300
    .line 301
    new-instance v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;

    .line 302
    .line 303
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    .line 304
    .line 305
    .line 306
    const-wide/16 v1, 0xbb8

    .line 307
    .line 308
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 309
    .line 310
    .line 311
    :goto_3
    return-void
.end method
