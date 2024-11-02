.class public final Lcom/android/keyguard/KeyguardPluginControllerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDesktopManager:Lcom/android/systemui/util/DesktopManager;

.field public final mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field public final mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mPendingLockCheck:Landroid/os/AsyncTask;

.field public mPromptReason:I

.field public mStrongAuthPopupMessage:Ljava/lang/String;

.field public final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public final mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public static -$$Nest$monPasswordChecked(Lcom/android/keyguard/KeyguardPluginControllerImpl;IZI)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "onPasswordChecked matched "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " timeoutMs "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "KeyguardPluginController"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ne v3, p1, :cond_0

    .line 43
    .line 44
    move v3, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v3, v0

    .line 47
    :goto_0
    invoke-interface {v1, p1, v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    .line 48
    .line 49
    .line 50
    if-eqz v3, :cond_a

    .line 51
    .line 52
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 53
    .line 54
    invoke-interface {v1, p1, v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_1
    invoke-interface {v1, p1, p3, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 63
    .line 64
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 71
    .line 72
    const-string v5, ")"

    .line 73
    .line 74
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    iget-object p1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 79
    .line 80
    if-nez p1, :cond_2

    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object p1, p1, Lcom/android/systemui/knox/EdmMonitor;->mPkgNameForMaxAttemptDisable:Ljava/lang/String;

    .line 85
    .line 86
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const v1, 0x1040429

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    const-string p1, ""

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    const-string v1, "("

    .line 111
    .line 112
    invoke-static {v1, p1, v5}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    move-object v0, v4

    .line 124
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_a

    .line 131
    .line 132
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mStrongAuthPopupMessage:Ljava/lang/String;

    .line 133
    .line 134
    check-cast v4, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 135
    .line 136
    invoke-virtual {v4, v2, p1, v0}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyUpdateBouncerMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_4
    const/4 v1, 0x2

    .line 141
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 142
    .line 143
    if-lez p3, :cond_5

    .line 144
    .line 145
    invoke-interface {v3, p1, p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setLockoutAttemptDeadline(II)J

    .line 146
    .line 147
    .line 148
    sget-object v7, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_LOCKOUT_DEADLINE:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 149
    .line 150
    invoke-virtual {v3, v1, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    int-to-long v7, p3

    .line 154
    const-wide/16 v9, 0x0

    .line 155
    .line 156
    cmp-long v7, v7, v9

    .line 157
    .line 158
    if-nez v7, :cond_a

    .line 159
    .line 160
    invoke-interface {v3, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttempt(I)I

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    invoke-interface {v3, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCredentialTypeForUser(I)I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eq p1, v2, :cond_8

    .line 169
    .line 170
    if-eq p1, v1, :cond_7

    .line 171
    .line 172
    const/4 v1, 0x3

    .line 173
    if-eq p1, v1, :cond_6

    .line 174
    .line 175
    const/4 v1, 0x4

    .line 176
    if-eq p1, v1, :cond_7

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_6
    const v0, 0x7f130873

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_7
    const v0, 0x7f130871

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_8
    const v0, 0x7f130872

    .line 188
    .line 189
    .line 190
    :goto_3
    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-lez v7, :cond_9

    .line 195
    .line 196
    const-string v0, " ("

    .line 197
    .line 198
    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    const v3, 0x7f110006

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v3, v7, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {p1, v0, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    :cond_9
    move-object v0, v4

    .line 226
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_a

    .line 233
    .line 234
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mStrongAuthPopupMessage:Ljava/lang/String;

    .line 235
    .line 236
    check-cast v4, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 237
    .line 238
    invoke-virtual {v4, v2, p1, v0}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyUpdateBouncerMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    :cond_a
    :goto_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 242
    .line 243
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 244
    .line 245
    const-string v0, "SubScreenManager"

    .line 246
    .line 247
    if-nez p1, :cond_b

    .line 248
    .line 249
    const-string/jumbo p0, "onPasswordChecked() no plugin"

    .line 250
    .line 251
    .line 252
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string/jumbo v1, "onPasswordChecked() "

    .line 259
    .line 260
    .line 261
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v1, " "

    .line 268
    .line 269
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 283
    .line 284
    if-eqz p1, :cond_c

    .line 285
    .line 286
    if-eqz p2, :cond_c

    .line 287
    .line 288
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 289
    .line 290
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked()Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-nez p1, :cond_c

    .line 295
    .line 296
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    .line 297
    .line 298
    invoke-virtual {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubScreenFallback(Landroid/view/Display;)V

    .line 299
    .line 300
    .line 301
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 302
    .line 303
    invoke-interface {p0, p2, p3}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onPasswordChecked(ZI)V

    .line 304
    .line 305
    .line 306
    :goto_5
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 5
    iput-object p3, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 6
    iput-object p4, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 7
    iput-object p5, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 8
    iput-object p6, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 9
    iput-object p7, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 10
    iput-object p8, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    invoke-static {p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 12
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/android/keyguard/KeyguardPluginControllerImpl;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method


# virtual methods
.method public final showWipeWarningDialog(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-virtual {v0, v2, v1, p1}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyUpdateBouncerMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 31
    .line 32
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_0
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 44
    .line 45
    const-string v1, "SubScreenManager"

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    const-string/jumbo p0, "showWipeWarningDialog() no plugin"

    .line 50
    .line 51
    .line 52
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const-string/jumbo v0, "showWipeWarningDialog() "

    .line 57
    .line 58
    .line 59
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 63
    .line 64
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->showWipeWarningDialog(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_1
    return-void
.end method
