.class public final synthetic Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardHintTextArea;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardHintTextArea;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget p1, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-wide/16 v0, 0x64

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    const-wide/16 v3, 0xe9

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 18
    .line 19
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mSineOut33:Landroid/view/animation/PathInterpolator;

    .line 37
    .line 38
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v6, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;

    .line 43
    .line 44
    const/4 v7, 0x2

    .line 45
    invoke-direct {v6, p0, v7}, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 52
    .line 53
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mSineOut33:Landroid/view/animation/PathInterpolator;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;

    .line 81
    .line 82
    const/4 v1, 0x3

    .line 83
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 87
    .line 88
    .line 89
    const-string p0, "102"

    .line 90
    .line 91
    const-string p1, "1034"

    .line 92
    .line 93
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 100
    .line 101
    const/4 v7, 0x0

    .line 102
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mSineOut33:Landroid/view/animation/PathInterpolator;

    .line 120
    .line 121
    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance v8, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;

    .line 126
    .line 127
    invoke-direct {v8, p0, v7}, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 134
    .line 135
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mSineOut33:Landroid/view/animation/PathInterpolator;

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    new-instance v0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;

    .line 163
    .line 164
    invoke-direct {v0, p0, v6}, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
