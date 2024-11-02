.class public final Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->isPassword(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p1, :cond_7

    .line 12
    .line 13
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    move p1, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 28
    .line 29
    :goto_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {p2, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 40
    .line 41
    iget v4, v3, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImeBottom:I

    .line 42
    .line 43
    if-eq v4, v2, :cond_6

    .line 44
    .line 45
    iput v2, v3, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImeBottom:I

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    move v4, v0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v4, v1

    .line 52
    :goto_1
    iput-boolean v4, v3, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutMargins()V

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 64
    .line 65
    iget v4, v4, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImeBottom:I

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 76
    .line 77
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eq v3, v0, :cond_3

    .line 86
    .line 87
    const/4 v5, 0x3

    .line 88
    if-ne v3, v5, :cond_2

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move v0, v1

    .line 92
    :cond_3
    :goto_2
    sget-object v3, Lcom/android/keyguard/SecurityUtils;->sImeHeight:[I

    .line 93
    .line 94
    aget v5, v3, v0

    .line 95
    .line 96
    if-eqz v5, :cond_4

    .line 97
    .line 98
    if-eq v5, v4, :cond_5

    .line 99
    .line 100
    :cond_4
    aput v4, v3, v0

    .line 101
    .line 102
    :cond_5
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 103
    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 107
    .line 108
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 109
    .line 110
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    .line 111
    .line 112
    invoke-interface {v3, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateSIPShownState(Z)V

    .line 113
    .line 114
    .line 115
    :cond_6
    invoke-static {p1, v2}, Ljava/lang/Integer;->max(II)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    goto :goto_4

    .line 120
    :cond_7
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 121
    .line 122
    if-eqz p1, :cond_9

    .line 123
    .line 124
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 133
    .line 134
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 135
    .line 136
    iget v3, v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImeBottom:I

    .line 137
    .line 138
    if-eq v3, p1, :cond_9

    .line 139
    .line 140
    iput p1, v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImeBottom:I

    .line 141
    .line 142
    if-eqz p1, :cond_8

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_8
    move v0, v1

    .line 146
    :goto_3
    iput-boolean v0, v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    .line 147
    .line 148
    iget-object p1, v2, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 149
    .line 150
    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateSIPShownState(Z)V

    .line 151
    .line 152
    .line 153
    :cond_9
    move p1, v1

    .line 154
    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 157
    .line 158
    move-object v2, v0

    .line 159
    check-cast v2, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 160
    .line 161
    check-cast v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 168
    .line 169
    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 170
    .line 171
    check-cast v3, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 172
    .line 173
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 180
    .line 181
    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    invoke-virtual {v2, v0, v3, p0, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v1, v1, v1, p1}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    return-object p0
.end method
