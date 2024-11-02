.class public final synthetic Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardFMMViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardFMMViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/KeyguardFMMViewController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/KeyguardFMMViewController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast v0, Lcom/android/keyguard/KeyguardFMMView;

    .line 6
    .line 7
    const v1, 0x7f0a040a

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
    check-cast v1, Lcom/android/keyguard/KeyguardFMMView;

    .line 19
    .line 20
    const v2, 0x7f0a040c

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
    iget v4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOrientation:I

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    const/high16 v6, 0x3f800000    # 1.0f

    .line 45
    .line 46
    const/4 v7, 0x1

    .line 47
    if-eq v4, v7, :cond_1

    .line 48
    .line 49
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 57
    .line 58
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 62
    .line 63
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 64
    .line 65
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    iget v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOrientation:I

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    if-ne v0, v7, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    move v7, v1

    .line 78
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapePolicyAllowed()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 87
    .line 88
    if-eqz v3, :cond_7

    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 95
    .line 96
    const v4, 0x7f07124b

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    const v8, 0x7f07049f

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    add-int/2addr v8, v4

    .line 111
    if-eqz v7, :cond_3

    .line 112
    .line 113
    const v4, 0x7f0704f7

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    goto :goto_3

    .line 121
    :cond_3
    move v4, v1

    .line 122
    :goto_3
    add-int/2addr v8, v4

    .line 123
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 124
    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_4
    move v5, v6

    .line 129
    :goto_4
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 130
    .line 131
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 132
    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    const/16 v5, 0x31

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_5
    const/16 v5, 0x11

    .line 139
    .line 140
    :goto_5
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 141
    .line 142
    .line 143
    const v4, 0x7f0704fb

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v0, :cond_6

    .line 151
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 153
    .line 154
    invoke-virtual {v0, v1, v1, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 155
    .line 156
    .line 157
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 158
    .line 159
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .line 161
    .line 162
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 163
    .line 164
    if-eqz v0, :cond_8

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 171
    .line 172
    const v1, 0x7f0704ba

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 180
    .line 181
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 182
    .line 183
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    .line 185
    .line 186
    :cond_8
    return-void
.end method
