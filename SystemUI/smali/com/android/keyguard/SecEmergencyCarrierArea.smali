.class public Lcom/android/keyguard/SecEmergencyCarrierArea;
.super Lcom/android/keyguard/EmergencyCarrierArea;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mEmergencyButtonArea:Landroid/widget/LinearLayout;

.field public mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/keyguard/EmergencyCarrierArea;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/EmergencyCarrierArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/EmergencyCarrierArea;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0412

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/widget/SystemUIButton;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 14
    .line 15
    const v0, 0x7f0a03a9

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 25
    .line 26
    const v0, 0x7f0a051a

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/LinearLayout;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    if-eqz v0, :cond_6

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 40
    .line 41
    if-eqz v0, :cond_6

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 50
    const/4 v1, 0x0

    .line 51
    move v2, v0

    .line 52
    move v3, v2

    .line 53
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-ge v2, v4, :cond_2

    .line 60
    .line 61
    iget-object v4, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    .line 62
    .line 63
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    iget-object v4, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    .line 70
    .line 71
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_1

    .line 80
    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    if-lez v3, :cond_3

    .line 93
    .line 94
    iget-object v2, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 95
    .line 96
    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    const/4 v4, 0x4

    .line 101
    if-ne v2, v4, :cond_3

    .line 102
    .line 103
    iget-object v2, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 104
    .line 105
    const/16 v4, 0x8

    .line 106
    .line 107
    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    :cond_3
    const/4 v2, 0x1

    .line 111
    if-eq v3, v2, :cond_5

    .line 112
    .line 113
    const/4 v1, 0x2

    .line 114
    if-eq v3, v1, :cond_4

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    .line 125
    iget-object v2, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 126
    .line 127
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    .line 133
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 134
    .line 135
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 136
    .line 137
    const/high16 v3, 0x3f800000    # 1.0f

    .line 138
    .line 139
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 140
    .line 141
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 142
    .line 143
    iget-object v3, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 144
    .line 145
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    iget-object p0, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 154
    .line 155
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_5
    if-eqz v1, :cond_6

    .line 160
    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 166
    .line 167
    const/4 v0, -0x2

    .line 168
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 169
    .line 170
    const/4 v0, 0x0

    .line 171
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 172
    .line 173
    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    .line 175
    .line 176
    :cond_6
    :goto_1
    return-void
.end method
