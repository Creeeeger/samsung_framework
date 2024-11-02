.class public final synthetic Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSimPersoViewController$3;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/keyguard/KeyguardSecurityCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPersoViewController$3;ZILcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPersoViewController$3;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$3:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPersoViewController$3;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget v2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$3:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 10
    .line 11
    sget-object v4, Lcom/android/keyguard/KeyguardSimPersoViewController;->SIM_TYPE:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 14
    .line 15
    check-cast v3, Lcom/android/keyguard/KeyguardSimPersoView;

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-virtual {v3, v4, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 19
    .line 20
    .line 21
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/keyguard/KeyguardSimPersoViewController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 37
    .line 38
    const/16 v6, 0x8

    .line 39
    .line 40
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_KTT_USIM_TEXT:Z

    .line 50
    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    sput v5, Lcom/android/keyguard/KeyguardSimPersoViewController;->mNumRetry:I

    .line 54
    .line 55
    :cond_0
    sget-object v3, Lcom/android/keyguard/KeyguardSimPersoViewController;->SIM_TYPE:Ljava/lang/String;

    .line 56
    .line 57
    const-string v6, ""

    .line 58
    .line 59
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-nez v7, :cond_1

    .line 64
    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    const/16 v8, 0x13

    .line 70
    .line 71
    if-ne v7, v8, :cond_2

    .line 72
    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const/16 v7, 0x14

    .line 78
    .line 79
    if-ne v3, v7, :cond_2

    .line 80
    .line 81
    :cond_1
    sget-object v3, Lcom/android/keyguard/KeyguardSimPersoViewController;->DOMESTIC_OTA_START:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-nez v6, :cond_3

    .line 88
    .line 89
    const-string/jumbo v6, "true"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    :cond_2
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 99
    .line 100
    iget-object v3, v3, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 101
    .line 102
    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 103
    .line 104
    .line 105
    :cond_3
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 106
    .line 107
    iget-boolean v3, v2, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    .line 108
    .line 109
    if-nez v3, :cond_8

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-eqz v2, :cond_8

    .line 116
    .line 117
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 124
    .line 125
    iget-object v3, v3, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 126
    .line 127
    invoke-interface {v2, v1, v3, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_KTT_USIM_TEXT:Z

    .line 132
    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    sget v1, Lcom/android/keyguard/KeyguardSimPersoViewController;->mNumRetry:I

    .line 136
    .line 137
    add-int/2addr v1, v4

    .line 138
    sput v1, Lcom/android/keyguard/KeyguardSimPersoViewController;->mNumRetry:I

    .line 139
    .line 140
    :cond_5
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SKT_USIM_TEXT:Z

    .line 141
    .line 142
    const v2, 0x7f13090c

    .line 143
    .line 144
    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 148
    .line 149
    iget-object v3, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v3, v1, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_6
    sget v1, Lcom/android/keyguard/KeyguardSimPersoViewController;->mNumRetry:I

    .line 164
    .line 165
    const/4 v3, 0x5

    .line 166
    if-ge v1, v3, :cond_7

    .line 167
    .line 168
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 169
    .line 170
    iget-object v3, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v3, v1, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_7
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 185
    .line 186
    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    const v3, 0x7f13090d

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v2, v1, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 200
    .line 201
    .line 202
    :cond_8
    :goto_0
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 203
    .line 204
    .line 205
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 206
    .line 207
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSimCheckInProgress:Z

    .line 208
    .line 209
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 210
    .line 211
    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

    .line 213
    .line 214
    return-void
.end method
