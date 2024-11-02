.class public final Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;
.super Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;-><init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V

    return-void
.end method


# virtual methods
.method public final next()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const v2, 0x7f130875

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v0, :cond_a

    .line 13
    .line 14
    const v6, 0x7f130805

    .line 15
    .line 16
    .line 17
    const/4 v7, 0x2

    .line 18
    if-eq v0, v3, :cond_4

    .line 19
    .line 20
    if-eq v0, v7, :cond_0

    .line 21
    .line 22
    move v6, v5

    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_0
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->confirmPin()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    .line 35
    .line 36
    .line 37
    iget-object p0, v4, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object p0, v4, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 43
    .line 44
    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->updateSim()V

    .line 48
    .line 49
    .line 50
    const v6, 0x7f1307c5

    .line 51
    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_1
    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 56
    .line 57
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    .line 58
    .line 59
    if-eqz p0, :cond_3

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_11

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    array-length p0, p0

    .line 72
    if-nez p0, :cond_2

    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_2
    const v6, 0x7f13088b

    .line 77
    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :cond_3
    const v6, 0x7f130874

    .line 82
    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :cond_4
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->checkPin()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_7

    .line 91
    .line 92
    iput v7, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 93
    .line 94
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    .line 95
    .line 96
    if-eqz p0, :cond_5

    .line 97
    .line 98
    const v6, 0x7f13088a

    .line 99
    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :cond_5
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    .line 104
    .line 105
    if-eqz p0, :cond_6

    .line 106
    .line 107
    const v6, 0x7f1307f5

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    const v6, 0x7f130968

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_7
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    .line 116
    .line 117
    if-eqz p0, :cond_9

    .line 118
    .line 119
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    if-eqz p0, :cond_11

    .line 124
    .line 125
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    array-length p0, p0

    .line 130
    if-nez p0, :cond_8

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_8
    const v6, 0x7f13088f

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_9
    move v6, v2

    .line 138
    goto :goto_1

    .line 139
    :cond_a
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->checkPuk()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_d

    .line 144
    .line 145
    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 146
    .line 147
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    .line 148
    .line 149
    if-eqz p0, :cond_b

    .line 150
    .line 151
    const v6, 0x7f13088e

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_b
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    .line 156
    .line 157
    if-eqz p0, :cond_c

    .line 158
    .line 159
    const v6, 0x7f1307f8

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_c
    const v6, 0x7f130969

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_d
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    .line 168
    .line 169
    if-eqz p0, :cond_10

    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    if-eqz p0, :cond_f

    .line 176
    .line 177
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    array-length p0, p0

    .line 182
    if-nez p0, :cond_e

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_e
    const v6, 0x7f13088c

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_f
    :goto_0
    const v6, 0x7f130889

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_10
    const v6, 0x7f130967

    .line 194
    .line 195
    .line 196
    :cond_11
    :goto_1
    iget-object p0, v4, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 197
    .line 198
    check-cast p0, Lcom/android/keyguard/KeyguardSecSimPukView;

    .line 199
    .line 200
    invoke-virtual {p0, v3, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 201
    .line 202
    .line 203
    if-eqz v6, :cond_13

    .line 204
    .line 205
    if-eq v6, v2, :cond_12

    .line 206
    .line 207
    iget-object p0, v4, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 208
    .line 209
    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {p0, v0, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_12
    iget-object p0, v4, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 222
    .line 223
    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    const/4 v3, 0x4

    .line 228
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {p0, v0, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 245
    .line 246
    .line 247
    :cond_13
    :goto_2
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    const-string v0, "KeyguardSecSimPukViewController"

    .line 2
    .line 3
    const-string/jumbo v1, "reset()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPukText:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 19
    .line 20
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    iget v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 28
    .line 29
    if-eq p0, v1, :cond_0

    .line 30
    .line 31
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iput p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    iput-boolean p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    .line 41
    .line 42
    const/4 p0, -0x1

    .line 43
    iput p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttempts:I

    .line 44
    .line 45
    :cond_0
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 46
    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    iget v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 50
    .line 51
    iput v1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mSubscriptionId:I

    .line 52
    .line 53
    :cond_1
    iget-object p0, v0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 54
    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method
