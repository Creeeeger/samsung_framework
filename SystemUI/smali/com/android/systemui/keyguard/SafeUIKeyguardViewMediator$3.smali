.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedBiometricAttempt(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulBiometricAttempt(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onDeviceProvisioned()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$msendUserPresentBroadcast(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 7
    .line 8
    iget-boolean p1, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingPinLock:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-string p1, "SafeUIKeyguardViewMediator"

    .line 13
    .line 14
    const-string v1, "PIN lock requested, starting keyguard"

    .line 15
    .line 16
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingPinLock:Z

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mdoKeyguardLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final onSimStateChanged(III)V
    .locals 6

    .line 1
    const-string v0, "SafeUIKeyguardViewMediator"

    .line 2
    .line 3
    const-string/jumbo v1, "onSimStateChanged(subId="

    .line 4
    .line 5
    .line 6
    const-string v2, ", slotId="

    .line 7
    .line 8
    const-string v3, ",state="

    .line 9
    .line 10
    invoke-static {v1, p1, v2, p2, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, ")"

    .line 15
    .line 16
    invoke-static {p1, p3, v1, v0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x1

    .line 36
    sub-int/2addr p1, v1

    .line 37
    :goto_0
    if-ltz p1, :cond_1

    .line 38
    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/internal/policy/IKeyguardStateCallback;

    .line 48
    .line 49
    invoke-interface {v2, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception v2

    .line 54
    const-string v3, "SafeUIKeyguardViewMediator"

    .line 55
    .line 56
    const-string v4, "Failed to call onSimSecureStateChanged"

    .line 57
    .line 58
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    instance-of v2, v2, Landroid/os/DeadObjectException;

    .line 62
    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 66
    .line 67
    iget-object v2, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 76
    .line 77
    monitor-enter p1

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    .line 81
    .line 82
    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v2, 0x3

    .line 87
    const/4 v3, 0x2

    .line 88
    const/4 v4, 0x0

    .line 89
    if-eq v0, v3, :cond_3

    .line 90
    .line 91
    if-ne v0, v2, :cond_2

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move v0, v4

    .line 95
    goto :goto_3

    .line 96
    :cond_3
    :goto_2
    move v0, v1

    .line 97
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 98
    .line 99
    iget-object v5, v5, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    .line 100
    .line 101
    invoke-virtual {v5, p2, p3}, Landroid/util/SparseIntArray;->append(II)V

    .line 102
    .line 103
    .line 104
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 105
    const/4 p1, 0x0

    .line 106
    if-eqz p3, :cond_a

    .line 107
    .line 108
    if-eq p3, v1, :cond_a

    .line 109
    .line 110
    if-eq p3, v3, :cond_8

    .line 111
    .line 112
    if-eq p3, v2, :cond_8

    .line 113
    .line 114
    const/4 v2, 0x5

    .line 115
    if-eq p3, v2, :cond_6

    .line 116
    .line 117
    const/4 v2, 0x6

    .line 118
    if-eq p3, v2, :cond_a

    .line 119
    .line 120
    const/4 p2, 0x7

    .line 121
    if-eq p3, p2, :cond_4

    .line 122
    .line 123
    goto/16 :goto_7

    .line 124
    .line 125
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 126
    .line 127
    monitor-enter v2

    .line 128
    :try_start_2
    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 129
    .line 130
    iget-boolean p2, p2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    .line 131
    .line 132
    if-nez p2, :cond_5

    .line 133
    .line 134
    const-string p2, "SafeUIKeyguardViewMediator"

    .line 135
    .line 136
    const-string p3, "PERM_DISABLED and keygaurd isn\'t showing."

    .line 137
    .line 138
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 142
    .line 143
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mdoKeyguardLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_5
    const-string p1, "SafeUIKeyguardViewMediator"

    .line 148
    .line 149
    const-string p2, "PERM_DISABLED, resetStateLocked toshow permanently disabled message in lockscreen."

    .line 150
    .line 151
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 155
    .line 156
    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mresetStateLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 157
    .line 158
    .line 159
    :goto_4
    monitor-exit v2

    .line 160
    goto/16 :goto_7

    .line 161
    .line 162
    :catchall_0
    move-exception p0

    .line 163
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    throw p0

    .line 165
    :cond_6
    iget-object p3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 166
    .line 167
    monitor-enter p3

    .line 168
    :try_start_3
    const-string p1, "SafeUIKeyguardViewMediator"

    .line 169
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v1, "READY, reset state? "

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 181
    .line 182
    iget-boolean v1, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 195
    .line 196
    iget-boolean v0, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    .line 197
    .line 198
    if-eqz v0, :cond_7

    .line 199
    .line 200
    iget-object p1, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSimWasLocked:Landroid/util/SparseBooleanArray;

    .line 201
    .line 202
    invoke-virtual {p1, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_7

    .line 207
    .line 208
    const-string p1, "SafeUIKeyguardViewMediator"

    .line 209
    .line 210
    const-string v0, "SIM moved to READY when the previously was locked. Reset the state."

    .line 211
    .line 212
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 216
    .line 217
    iget-object p1, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSimWasLocked:Landroid/util/SparseBooleanArray;

    .line 218
    .line 219
    invoke-virtual {p1, p2, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 220
    .line 221
    .line 222
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 223
    .line 224
    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mresetStateLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 225
    .line 226
    .line 227
    :cond_7
    monitor-exit p3

    .line 228
    goto :goto_7

    .line 229
    :catchall_1
    move-exception p0

    .line 230
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 231
    throw p0

    .line 232
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 233
    .line 234
    monitor-enter v2

    .line 235
    :try_start_4
    iget-object p3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 236
    .line 237
    iget-object p3, p3, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSimWasLocked:Landroid/util/SparseBooleanArray;

    .line 238
    .line 239
    invoke-virtual {p3, p2, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 240
    .line 241
    .line 242
    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 243
    .line 244
    iput-boolean v1, p2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingPinLock:Z

    .line 245
    .line 246
    iget-boolean p3, p2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    .line 247
    .line 248
    if-nez p3, :cond_9

    .line 249
    .line 250
    const-string p2, "SafeUIKeyguardViewMediator"

    .line 251
    .line 252
    const-string p3, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing; need to show keyguard so user can enter sim pin"

    .line 253
    .line 254
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 258
    .line 259
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mdoKeyguardLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    .line 260
    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_9
    invoke-static {p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mresetStateLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 264
    .line 265
    .line 266
    :goto_5
    monitor-exit v2

    .line 267
    goto :goto_7

    .line 268
    :catchall_2
    move-exception p0

    .line 269
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 270
    throw p0

    .line 271
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 272
    .line 273
    iput-boolean v4, v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPendingPinLock:Z

    .line 274
    .line 275
    monitor-enter v2

    .line 276
    :try_start_5
    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 277
    .line 278
    invoke-static {v3}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mshouldWaitForProvisioning(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Z

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-eqz v3, :cond_c

    .line 283
    .line 284
    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 285
    .line 286
    iget-boolean v5, v3, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShowing:Z

    .line 287
    .line 288
    if-nez v5, :cond_b

    .line 289
    .line 290
    const-string v3, "SafeUIKeyguardViewMediator"

    .line 291
    .line 292
    const-string v5, "ICC_ABSENT isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    .line 293
    .line 294
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 298
    .line 299
    invoke-static {v3, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mdoKeyguardLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    .line 300
    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_b
    invoke-static {v3}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mresetStateLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 304
    .line 305
    .line 306
    :cond_c
    :goto_6
    if-ne p3, v1, :cond_e

    .line 307
    .line 308
    if-eqz v0, :cond_d

    .line 309
    .line 310
    const-string p1, "SafeUIKeyguardViewMediator"

    .line 311
    .line 312
    const-string p3, "SIM moved to ABSENT when the previous state was locked. Reset the state."

    .line 313
    .line 314
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 318
    .line 319
    invoke-static {p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mresetStateLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 320
    .line 321
    .line 322
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 323
    .line 324
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mSimWasLocked:Landroid/util/SparseBooleanArray;

    .line 325
    .line 326
    invoke-virtual {p0, p2, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 327
    .line 328
    .line 329
    :cond_e
    monitor-exit v2

    .line 330
    :goto_7
    return-void

    .line 331
    :catchall_3
    move-exception p0

    .line 332
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 333
    throw p0

    .line 334
    :catchall_4
    move-exception p0

    .line 335
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 336
    throw p0
.end method

.method public final onStrongAuthStateChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isUserInLockdown(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mdoKeyguardLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onTrustChanged(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mnotifyTrustedChangedLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_0
    :goto_0
    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "onUserSwitchComplete %d"

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "SafeUIKeyguardViewMediator"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    :cond_1
    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    nop

    .line 63
    :cond_2
    :goto_0
    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 3

    .line 1
    const-string v0, "SafeUIKeyguardViewMediator"

    .line 2
    .line 3
    const-string/jumbo v1, "onUserSwitching %d"

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mresetKeyguardDonePendingLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1, v1, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mresetStateLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 52
    .line 53
    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$madjustStatusBarLocked(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method
