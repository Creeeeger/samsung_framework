.class public final Lcom/android/keyguard/KeyguardSimPukTMOViewController;
.super Lcom/android/keyguard/KeyguardInputViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPukTMOView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p3

    .line 4
    move-object v3, p4

    .line 5
    move-object v4, p6

    .line 6
    move-object v5, p5

    .line 7
    move-object v6, p7

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardInputViewController;-><init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/android/keyguard/KeyguardSimPukTMOViewController$1;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSimPukTMOViewController$1;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOViewController;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 25
    .line 26
    check-cast p2, Lcom/android/keyguard/KeyguardSimPukTMOView;

    .line 27
    .line 28
    const p3, 0x7f0a055b

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/android/systemui/widget/SystemUITextView;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    const p4, 0x1110247

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    new-instance p4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p5

    .line 59
    const p7, 0x7f130982

    .line 60
    .line 61
    .line 62
    invoke-virtual {p5, p7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p5

    .line 66
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p5, "\n\n"

    .line 70
    .line 71
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object p7

    .line 78
    const v0, 0x7f130981

    .line 79
    .line 80
    .line 81
    invoke-virtual {p7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p7

    .line 85
    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p4

    .line 92
    if-eqz p3, :cond_0

    .line 93
    .line 94
    invoke-static {p4, p5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object p5

    .line 102
    const p7, 0x104049e

    .line 103
    .line 104
    .line 105
    invoke-virtual {p5, p7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p5

    .line 109
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p4

    .line 116
    :cond_0
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 120
    .line 121
    check-cast p2, Lcom/android/keyguard/KeyguardSimPukTMOView;

    .line 122
    .line 123
    const p4, 0x7f0a03a9

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    check-cast p2, Lcom/android/keyguard/EmergencyButton;

    .line 131
    .line 132
    if-eqz p2, :cond_3

    .line 133
    .line 134
    if-eqz p3, :cond_2

    .line 135
    .line 136
    const p4, 0x7f13089b

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p4}, Landroid/widget/Button;->setText(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_2
    const p4, 0x7f130980

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, p4}, Landroid/widget/Button;->setText(I)V

    .line 147
    .line 148
    .line 149
    :goto_0
    invoke-virtual {p6, p2}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyView(Landroid/view/View;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 153
    .line 154
    check-cast p2, Lcom/android/keyguard/KeyguardSimPukTMOView;

    .line 155
    .line 156
    const p4, 0x7f0a0412

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    check-cast p2, Lcom/android/systemui/widget/SystemUIButton;

    .line 164
    .line 165
    if-eqz p3, :cond_4

    .line 166
    .line 167
    if-eqz p2, :cond_5

    .line 168
    .line 169
    const/4 p3, 0x0

    .line 170
    invoke-virtual {p2, p3}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    const p3, 0x7f130983

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    .line 177
    .line 178
    .line 179
    new-instance p3, Lcom/android/keyguard/KeyguardSimPukTMOViewController$$ExternalSyntheticLambda0;

    .line 180
    .line 181
    invoke-direct {p3, p0, p1}, Lcom/android/keyguard/KeyguardSimPukTMOViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOViewController;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_4
    if-eqz p2, :cond_5

    .line 189
    .line 190
    const/16 p0, 0x8

    .line 191
    .line 192
    invoke-virtual {p2, p0}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final getInitialMessageResId()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final needsInput()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onViewAttached()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewAttached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewDetached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
