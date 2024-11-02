.class public final synthetic Lcom/android/keyguard/KeyguardRMMViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardRMMViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardRMMViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardRMMViewController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardRMMViewController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast v0, Lcom/android/keyguard/KeyguardRMMView;

    .line 6
    .line 7
    const v1, 0x7f0a08e2

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/LinearLayout;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 17
    .line 18
    check-cast v1, Lcom/android/keyguard/KeyguardRMMView;

    .line 19
    .line 20
    const v2, 0x7f0a08e1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/widget/LinearLayout;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 40
    .line 41
    iget v4, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCurrentOrientation:I

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    const/high16 v6, 0x3f800000    # 1.0f

    .line 45
    .line 46
    const/4 v7, 0x1

    .line 47
    if-ne v4, v7, :cond_0

    .line 48
    .line 49
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50
    .line 51
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 55
    .line 56
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 57
    .line 58
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    iget v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCurrentOrientation:I

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    if-ne v0, v7, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v7, v1

    .line 71
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapePolicyAllowed()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    if-eqz v3, :cond_6

    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    .line 89
    const v4, 0x7f07124b

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const v8, 0x7f07049f

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    add-int/2addr v8, v4

    .line 104
    if-eqz v7, :cond_2

    .line 105
    .line 106
    const v4, 0x7f0704f7

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    move v4, v1

    .line 115
    :goto_2
    add-int/2addr v8, v4

    .line 116
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 117
    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_3
    move v5, v6

    .line 122
    :goto_3
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 123
    .line 124
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 125
    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    const/16 v5, 0x31

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_4
    const/16 v5, 0x11

    .line 132
    .line 133
    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 134
    .line 135
    .line 136
    const v4, 0x7f0704fb

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 146
    .line 147
    invoke-virtual {v0, v1, v1, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 148
    .line 149
    .line 150
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 151
    .line 152
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .line 154
    .line 155
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 156
    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 164
    .line 165
    const v1, 0x7f0704ba

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 173
    .line 174
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 175
    .line 176
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .line 178
    .line 179
    :cond_7
    return-void
.end method
