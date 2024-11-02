.class public final Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;
.super Landroid/os/CountDownTimer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 12
    .line 13
    check-cast v0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryEnabled(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetState()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onTick(J)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long/2addr p1, v0

    .line 4
    long-to-int p1, p1

    .line 5
    div-int/lit8 p2, p1, 0x3c

    .line 6
    .line 7
    div-int/lit8 v0, p2, 0x3c

    .line 8
    .line 9
    const-string/jumbo v1, "onTick() secondsRemaining: "

    .line 10
    .line 11
    .line 12
    const-string v2, "KeyguardKnoxGuardView"

    .line 13
    .line 14
    invoke-static {v1, p1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0xe10

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-le p1, v1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 23
    .line 24
    iget-object p2, p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->numberOfAttemptsDone:I

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const v3, 0x7f110007

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v3, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/16 v0, 0x3c

    .line 63
    .line 64
    if-le p1, v0, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 67
    .line 68
    iget-object v0, p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    sget v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->numberOfAttemptsDone:I

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const v3, 0x7f110008

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v3, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 101
    .line 102
    invoke-virtual {p0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    if-lez p1, :cond_2

    .line 107
    .line 108
    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 109
    .line 110
    iget-object v0, p2, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    sget v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->numberOfAttemptsDone:I

    .line 117
    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const v3, 0x7f110009

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 143
    .line 144
    invoke-virtual {p0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    :cond_2
    :goto_0
    return-void
.end method
