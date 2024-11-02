.class public final Lcom/android/keyguard/KeyguardSecSimPukViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSimStateChanged(III)V
    .locals 6

    .line 1
    const-string/jumbo p2, "onSimStateChanged(subId="

    .line 2
    .line 3
    .line 4
    const-string v0, ",state="

    .line 5
    .line 6
    const-string v1, ")"

    .line 7
    .line 8
    invoke-static {p2, p1, v0, p3, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const-string v0, "KeyguardSecSimPukViewController"

    .line 13
    .line 14
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz p3, :cond_9

    .line 24
    .line 25
    const/4 p0, 0x3

    .line 26
    const/4 v2, 0x5

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eq p3, v3, :cond_4

    .line 29
    .line 30
    if-eq p3, p0, :cond_2

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    if-eq p3, v4, :cond_0

    .line 34
    .line 35
    if-eq p3, v2, :cond_4

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->resetState()V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_0
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    iget-object p1, p2, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 49
    .line 50
    invoke-interface {v1, p0, p1, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_1
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->resetState()V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :cond_2
    iget-object p0, p2, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 61
    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isAnimating()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    iget-object p0, p2, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    .line 71
    .line 72
    if-eqz p0, :cond_b

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    iput-object p0, p2, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    .line 79
    .line 80
    iget-object p0, p2, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p2, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 87
    .line 88
    const/16 p1, 0x8

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->resetState()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->verifyPasswordAndUnlock()V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_3
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->resetState()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    if-ne p3, v3, :cond_5

    .line 106
    .line 107
    const-string v4, "Card Remove during SIM PUK "

    .line 108
    .line 109
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    if-ne p3, v2, :cond_6

    .line 114
    .line 115
    const-string v4, "Card READY during SIM PUK "

    .line 116
    .line 117
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_6
    :goto_0
    if-eqz v1, :cond_7

    .line 121
    .line 122
    iget-object v4, p2, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 123
    .line 124
    invoke-interface {v4, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSimState(I)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-nez p0, :cond_7

    .line 129
    .line 130
    const-string p0, "Dismiss SIM PUK View"

    .line 131
    .line 132
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    iget-object p1, p2, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 140
    .line 141
    invoke-interface {v1, p0, p1, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_7
    if-ne p3, v2, :cond_8

    .line 146
    .line 147
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-eqz p0, :cond_8

    .line 152
    .line 153
    iget p0, p2, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 154
    .line 155
    if-eq p0, p1, :cond_8

    .line 156
    .line 157
    const-string p0, "READY already came. Skip this"

    .line 158
    .line 159
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_8
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->resetState()V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_9
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ESIM:Z

    .line 168
    .line 169
    if-eqz p1, :cond_a

    .line 170
    .line 171
    iget-object p1, p2, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 172
    .line 173
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isESimRemoveButtonClicked()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_a

    .line 178
    .line 179
    if-eqz v1, :cond_a

    .line 180
    .line 181
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 182
    .line 183
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    move-object v0, p1

    .line 188
    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 189
    .line 190
    new-instance v1, Lcom/android/keyguard/KeyguardSecSimPukViewController$2$$ExternalSyntheticLambda0;

    .line 191
    .line 192
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecSimPukViewController$2;)V

    .line 193
    .line 194
    .line 195
    const/4 v2, 0x0

    .line 196
    const/4 v3, 0x0

    .line 197
    const/4 v4, 0x0

    .line 198
    const/4 v5, 0x0

    .line 199
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/plugins/ActivityStarter;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_a
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->resetState()V

    .line 204
    .line 205
    .line 206
    :cond_b
    :goto_1
    return-void
.end method
