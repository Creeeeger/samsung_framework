.class public final synthetic Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Thread;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Thread;IILandroid/os/Bundle;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Thread;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    iput p3, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$2:I

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Thread;

    .line 11
    .line 12
    check-cast v0, Lcom/android/keyguard/KeyguardUCMViewController$1;

    .line 13
    .line 14
    iget v4, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$1:I

    .line 15
    .line 16
    iget v5, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$2:I

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    .line 19
    .line 20
    iget-object v6, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 21
    .line 22
    sget-object v7, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v6, v6, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 25
    .line 26
    check-cast v6, Lcom/android/keyguard/KeyguardUCMView;

    .line 27
    .line 28
    invoke-virtual {v6, v3, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v6, "verifyPINAndUnlock : "

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v6, "KeyguardUCMPinView"

    .line 47
    .line 48
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 52
    .line 53
    iget-object v3, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 54
    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    const-string/jumbo v3, "mUnlockProgressDialog != null"

    .line 58
    .line 59
    .line 60
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 64
    .line 65
    iget-object v3, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->hide()V

    .line 68
    .line 69
    .line 70
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 71
    .line 72
    iput-object v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 73
    .line 74
    :cond_0
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 75
    .line 76
    iget-object v3, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    .line 77
    .line 78
    invoke-virtual {v3, v4, v5, v1, p0}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V

    .line 79
    .line 80
    .line 81
    iget-object p0, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-eqz p0, :cond_1

    .line 88
    .line 89
    iget-object p0, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object p0, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 99
    .line 100
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 103
    .line 104
    check-cast p0, Lcom/android/keyguard/KeyguardUCMView;

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 107
    .line 108
    .line 109
    iget-object p0, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 110
    .line 111
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z

    .line 112
    .line 113
    return-void

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Thread;

    .line 115
    .line 116
    check-cast v0, Lcom/android/keyguard/KeyguardUCMViewController$2;

    .line 117
    .line 118
    iget v4, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$1:I

    .line 119
    .line 120
    iget v5, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$2:I

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    .line 123
    .line 124
    iget-object v6, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 125
    .line 126
    sget-object v7, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    .line 127
    .line 128
    iget-object v6, v6, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 129
    .line 130
    check-cast v6, Lcom/android/keyguard/KeyguardUCMView;

    .line 131
    .line 132
    invoke-virtual {v6, v3, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 133
    .line 134
    .line 135
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 136
    .line 137
    iget-object v3, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 138
    .line 139
    if-eqz v3, :cond_2

    .line 140
    .line 141
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->hide()V

    .line 142
    .line 143
    .line 144
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 145
    .line 146
    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 147
    .line 148
    check-cast v3, Lcom/android/keyguard/KeyguardUCMView;

    .line 149
    .line 150
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 151
    .line 152
    .line 153
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 154
    .line 155
    iput-object v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 156
    .line 157
    :cond_2
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 158
    .line 159
    iget-object v3, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    .line 160
    .line 161
    invoke-virtual {v3, v4, v5, v1, p0}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V

    .line 162
    .line 163
    .line 164
    iget-object p0, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    if-eqz p0, :cond_3

    .line 171
    .line 172
    iget-object p0, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 179
    .line 180
    .line 181
    :cond_3
    iget-object p0, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 182
    .line 183
    iput-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

    .line 184
    .line 185
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 186
    .line 187
    check-cast p0, Lcom/android/keyguard/KeyguardUCMView;

    .line 188
    .line 189
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 190
    .line 191
    .line 192
    iget-object p0, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 193
    .line 194
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z

    .line 195
    .line 196
    return-void

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
