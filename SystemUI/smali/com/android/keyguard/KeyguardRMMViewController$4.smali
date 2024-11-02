.class public final Lcom/android/keyguard/KeyguardRMMViewController$4;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardRMMViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardRMMViewController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController$4;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

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
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_3

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController$4;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    .line 7
    .line 8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "checkUnlockAttempts "

    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v2, "KeyguardRMMView"

    .line 34
    .line 35
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 39
    .line 40
    check-cast v0, Lcom/android/keyguard/KeyguardRMMView;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 47
    .line 48
    check-cast v0, Lcom/android/keyguard/KeyguardRMMView;

    .line 49
    .line 50
    invoke-virtual {v0, v3, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    if-nez p1, :cond_0

    .line 55
    .line 56
    :try_start_0
    new-instance p1, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 57
    .line 58
    invoke-direct {p1, v1, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-interface {v0, v4, p1}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v4, "Failed CIS LOCK clear!!"

    .line 81
    .line 82
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :goto_0
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTriggerByRemoteLock(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 107
    .line 108
    invoke-interface {p1, v0, p0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 113
    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    iget v2, v1, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    .line 117
    .line 118
    if-lez v2, :cond_2

    .line 119
    .line 120
    iget-wide v3, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 121
    .line 122
    const-wide/16 v5, 0x0

    .line 123
    .line 124
    cmp-long v1, v3, v5

    .line 125
    .line 126
    if-lez v1, :cond_2

    .line 127
    .line 128
    if-lez p1, :cond_2

    .line 129
    .line 130
    rem-int/2addr p1, v2

    .line 131
    if-nez p1, :cond_2

    .line 132
    .line 133
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 138
    .line 139
    if-nez v0, :cond_1

    .line 140
    .line 141
    const-wide/16 v0, -0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 145
    .line 146
    .line 147
    move-result-wide v0

    .line 148
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 149
    .line 150
    iget-wide v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 151
    .line 152
    add-long/2addr v0, v2

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 159
    .line 160
    iget v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 161
    .line 162
    const-string/jumbo v4, "remotelockscreen.lockoutdeadline"

    .line 163
    .line 164
    .line 165
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardRMMViewController;->setLong(JLjava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 181
    .line 182
    check-cast v1, Lcom/android/keyguard/KeyguardRMMView;

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    const v1, 0x7f130873

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 195
    .line 196
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    .line 200
    .line 201
    .line 202
    :cond_3
    :goto_2
    return-void
.end method
