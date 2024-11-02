.class public final Lcom/android/keyguard/StrongAuthPopup;
.super Landroid/app/AlertDialog;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsSIPVisible:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mPasswordEntry:Landroid/widget/EditText;

.field public mRotation:I

.field public final mRotationConsumer:Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;

.field public final mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

.field public final mRunnable:Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda0;

.field public final mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public final mTextWatcher:Lcom/android/keyguard/StrongAuthPopup$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/widget/EditText;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    const v1, 0x7f140815

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v1, 0x7f14081b

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/keyguard/StrongAuthPopup;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    new-instance v1, Lcom/android/keyguard/StrongAuthPopup$1;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/android/keyguard/StrongAuthPopup$1;-><init>(Lcom/android/keyguard/StrongAuthPopup;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/keyguard/StrongAuthPopup;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 32
    .line 33
    new-instance v2, Lcom/android/keyguard/StrongAuthPopup$2;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/android/keyguard/StrongAuthPopup$2;-><init>(Lcom/android/keyguard/StrongAuthPopup;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/android/keyguard/StrongAuthPopup;->mTextWatcher:Lcom/android/keyguard/StrongAuthPopup$2;

    .line 39
    .line 40
    new-instance v3, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    invoke-direct {v3, p0, v4}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    iput-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mRunnable:Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    const-class v3, Lcom/android/keyguard/SecRotationWatcher;

    .line 49
    .line 50
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/android/keyguard/SecRotationWatcher;

    .line 55
    .line 56
    iput-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 57
    .line 58
    new-instance v5, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;

    .line 59
    .line 60
    invoke-direct {v5, p0}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/StrongAuthPopup;)V

    .line 61
    .line 62
    .line 63
    iput-object v5, p0, Lcom/android/keyguard/StrongAuthPopup;->mRotationConsumer:Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    iput-object p2, p0, Lcom/android/keyguard/StrongAuthPopup;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 68
    .line 69
    iput-object p3, p0, Lcom/android/keyguard/StrongAuthPopup;->mPasswordEntry:Landroid/widget/EditText;

    .line 70
    .line 71
    const-class v6, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 72
    .line 73
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 78
    .line 79
    iput-object v6, p0, Lcom/android/keyguard/StrongAuthPopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-nez v7, :cond_1

    .line 86
    .line 87
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_2

    .line 92
    .line 93
    :cond_1
    invoke-virtual {v3, v5}, Lcom/android/keyguard/SecRotationWatcher;->addCallback(Ljava/util/function/IntConsumer;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-virtual {v6, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 97
    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    if-ne p2, v0, :cond_3

    .line 101
    .line 102
    move v0, v4

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    move v0, v1

    .line 105
    :goto_1
    if-eqz v0, :cond_4

    .line 106
    .line 107
    if-eqz p3, :cond_4

    .line 108
    .line 109
    invoke-virtual {p3, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    const/16 v0, 0x7d9

    .line 117
    .line 118
    invoke-virtual {p3, v0}, Landroid/view/Window;->setType(I)V

    .line 119
    .line 120
    .line 121
    const v0, 0xc0028

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, v0}, Landroid/view/Window;->addFlags(I)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 128
    .line 129
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    not-int v3, v3

    .line 152
    and-int/2addr v2, v3

    .line 153
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 154
    .line 155
    .line 156
    const/4 v0, 0x2

    .line 157
    invoke-virtual {p3, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 171
    .line 172
    .line 173
    const p3, 0x7f0d017e

    .line 174
    .line 175
    .line 176
    const/4 v0, 0x0

    .line 177
    invoke-static {p1, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    const v0, 0x7f0a0ae3

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Landroid/widget/TextView;

    .line 189
    .line 190
    invoke-static {p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardTextBuilder;->getStrongAuthTimeOutMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/StrongAuthPopup;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/keyguard/StrongAuthPopup;->mRotationConsumer:Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecRotationWatcher;->removeCallback(Ljava/util/function/IntConsumer;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/StrongAuthPopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/keyguard/StrongAuthPopup;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/keyguard/StrongAuthPopup;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 30
    .line 31
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 32
    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    :goto_0
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/StrongAuthPopup;->mPasswordEntry:Landroid/widget/EditText;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/keyguard/StrongAuthPopup;->mTextWatcher:Lcom/android/keyguard/StrongAuthPopup$2;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final getNavigationBarSize()I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const v0, 0x1050255

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->isVisible(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-boolean p2, p0, Lcom/android/keyguard/StrongAuthPopup;->mIsSIPVisible:Z

    .line 10
    .line 11
    if-eq p2, p1, :cond_0

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/android/keyguard/StrongAuthPopup;->mIsSIPVisible:Z

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/keyguard/StrongAuthPopup;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/android/keyguard/StrongAuthPopup;->mRunnable:Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/keyguard/StrongAuthPopup;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/keyguard/StrongAuthPopup;->mRunnable:Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    .line 30
    .line 31
    return-object p0
.end method

.method public final updatePopup()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/android/keyguard/StrongAuthPopup;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/keyguard/StrongAuthPopup;->mRunnable:Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto/16 :goto_23

    .line 32
    .line 33
    :cond_0
    iput v0, p0, Lcom/android/keyguard/StrongAuthPopup;->mRotation:I

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const v5, 0x7f070555

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    sget-boolean v7, Lcom/android/systemui/LsRune;->SECURITY_BIOMETRICS_TABLET:Z

    .line 71
    .line 72
    const/4 v8, 0x3

    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v10, 0x1

    .line 75
    const/4 v11, 0x2

    .line 76
    if-eqz v7, :cond_1

    .line 77
    .line 78
    const v4, 0x7f070559

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    goto :goto_3

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 87
    .line 88
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    iget-object v4, p0, Lcom/android/keyguard/StrongAuthPopup;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 97
    .line 98
    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 99
    .line 100
    if-ne v4, v6, :cond_2

    .line 101
    .line 102
    move v4, v10

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    move v4, v9

    .line 105
    :goto_0
    invoke-static {v3, v4}, Lcom/android/keyguard/SecurityUtils;->getMainSecurityViewFlipperSize(Landroid/content/Context;Z)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    if-eq v0, v10, :cond_5

    .line 111
    .line 112
    if-ne v0, v8, :cond_4

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    move v3, v9

    .line 116
    goto :goto_2

    .line 117
    :cond_5
    :goto_1
    move v3, v10

    .line 118
    :goto_2
    if-eqz v3, :cond_6

    .line 119
    .line 120
    iget-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {v4, v3}, Lcom/android/keyguard/SecurityUtils;->calculateLandscapeViewWidth(ILandroid/content/Context;)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    sub-int/2addr v3, v6

    .line 127
    goto :goto_3

    .line 128
    :cond_6
    mul-int/2addr v6, v11

    .line 129
    sub-int v3, v4, v6

    .line 130
    .line 131
    :goto_3
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 132
    .line 133
    const/4 v3, -0x2

    .line 134
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 135
    .line 136
    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 137
    .line 138
    if-eq v0, v10, :cond_8

    .line 139
    .line 140
    if-ne v0, v8, :cond_7

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_7
    move v3, v9

    .line 144
    goto :goto_5

    .line 145
    :cond_8
    :goto_4
    move v3, v10

    .line 146
    :goto_5
    sget-object v4, Lcom/android/keyguard/SecurityUtils;->sImeHeight:[I

    .line 147
    .line 148
    const/16 v6, 0x50

    .line 149
    .line 150
    if-eqz v3, :cond_11

    .line 151
    .line 152
    if-nez v7, :cond_11

    .line 153
    .line 154
    iget-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 155
    .line 156
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-nez v3, :cond_11

    .line 161
    .line 162
    iget-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 163
    .line 164
    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 165
    .line 166
    if-ne v3, v7, :cond_9

    .line 167
    .line 168
    move v3, v10

    .line 169
    goto :goto_6

    .line 170
    :cond_9
    move v3, v9

    .line 171
    :goto_6
    const/16 v7, 0x10

    .line 172
    .line 173
    if-eqz v3, :cond_f

    .line 174
    .line 175
    iget-boolean v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mIsSIPVisible:Z

    .line 176
    .line 177
    if-eqz v3, :cond_c

    .line 178
    .line 179
    if-eq v0, v10, :cond_b

    .line 180
    .line 181
    if-ne v0, v8, :cond_a

    .line 182
    .line 183
    goto :goto_7

    .line 184
    :cond_a
    move v3, v9

    .line 185
    goto :goto_8

    .line 186
    :cond_b
    :goto_7
    move v3, v10

    .line 187
    :goto_8
    aget v3, v4, v3

    .line 188
    .line 189
    goto :goto_9

    .line 190
    :cond_c
    move v3, v9

    .line 191
    :goto_9
    if-eqz v3, :cond_d

    .line 192
    .line 193
    goto :goto_a

    .line 194
    :cond_d
    move v6, v7

    .line 195
    :goto_a
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 196
    .line 197
    if-eqz v3, :cond_e

    .line 198
    .line 199
    iget-object v4, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    .line 200
    .line 201
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    add-int/2addr v4, v3

    .line 210
    goto :goto_b

    .line 211
    :cond_e
    move v4, v9

    .line 212
    :goto_b
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 213
    .line 214
    goto :goto_c

    .line 215
    :cond_f
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 216
    .line 217
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 218
    .line 219
    :goto_c
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 220
    .line 221
    or-int/2addr v3, v8

    .line 222
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 223
    .line 224
    if-ne v0, v10, :cond_10

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/android/keyguard/StrongAuthPopup;->getNavigationBarSize()I

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    :cond_10
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 231
    .line 232
    goto/16 :goto_22

    .line 233
    .line 234
    :cond_11
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 235
    .line 236
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 237
    .line 238
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    iget-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 249
    .line 250
    if-eqz v5, :cond_12

    .line 251
    .line 252
    iget-object v5, p0, Lcom/android/keyguard/StrongAuthPopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 253
    .line 254
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-eqz v5, :cond_12

    .line 259
    .line 260
    sget v5, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 261
    .line 262
    goto :goto_d

    .line 263
    :cond_12
    move v5, v9

    .line 264
    :goto_d
    sget-object v6, Lcom/android/keyguard/StrongAuthPopup$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    .line 265
    .line 266
    iget-object v7, p0, Lcom/android/keyguard/StrongAuthPopup;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 267
    .line 268
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    aget v6, v6, v7

    .line 273
    .line 274
    const v7, 0x7f070408

    .line 275
    .line 276
    .line 277
    const v12, 0x7f070407

    .line 278
    .line 279
    .line 280
    if-eq v6, v10, :cond_24

    .line 281
    .line 282
    if-eq v6, v11, :cond_19

    .line 283
    .line 284
    if-eq v6, v8, :cond_13

    .line 285
    .line 286
    goto/16 :goto_21

    .line 287
    .line 288
    :cond_13
    if-eqz v0, :cond_14

    .line 289
    .line 290
    const v4, 0x7f07050a

    .line 291
    .line 292
    .line 293
    goto :goto_e

    .line 294
    :cond_14
    const v4, 0x7f070509

    .line 295
    .line 296
    .line 297
    :goto_e
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-eqz v0, :cond_15

    .line 302
    .line 303
    const v6, 0x7f07050c

    .line 304
    .line 305
    .line 306
    goto :goto_f

    .line 307
    :cond_15
    const v6, 0x7f07050b

    .line 308
    .line 309
    .line 310
    :goto_f
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    add-int/2addr v6, v4

    .line 315
    if-eqz v5, :cond_16

    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/android/keyguard/StrongAuthPopup;->getNavigationBarSize()I

    .line 318
    .line 319
    .line 320
    move-result p0

    .line 321
    goto/16 :goto_1c

    .line 322
    .line 323
    :cond_16
    if-eqz v0, :cond_17

    .line 324
    .line 325
    goto :goto_10

    .line 326
    :cond_17
    move v7, v12

    .line 327
    :goto_10
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 328
    .line 329
    .line 330
    move-result p0

    .line 331
    if-eqz v0, :cond_18

    .line 332
    .line 333
    const v0, 0x7f070508

    .line 334
    .line 335
    .line 336
    goto :goto_11

    .line 337
    :cond_18
    const v0, 0x7f070507

    .line 338
    .line 339
    .line 340
    :goto_11
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    goto/16 :goto_1f

    .line 345
    .line 346
    :cond_19
    iget-boolean v6, p0, Lcom/android/keyguard/StrongAuthPopup;->mIsSIPVisible:Z

    .line 347
    .line 348
    if-eqz v6, :cond_1c

    .line 349
    .line 350
    iget v6, p0, Lcom/android/keyguard/StrongAuthPopup;->mRotation:I

    .line 351
    .line 352
    if-eq v6, v10, :cond_1b

    .line 353
    .line 354
    if-ne v6, v8, :cond_1a

    .line 355
    .line 356
    goto :goto_12

    .line 357
    :cond_1a
    move v10, v9

    .line 358
    :cond_1b
    :goto_12
    aget v4, v4, v10

    .line 359
    .line 360
    goto :goto_13

    .line 361
    :cond_1c
    move v4, v9

    .line 362
    :goto_13
    if-eqz v0, :cond_1d

    .line 363
    .line 364
    const v6, 0x7f070538

    .line 365
    .line 366
    .line 367
    goto :goto_14

    .line 368
    :cond_1d
    const v6, 0x7f070537

    .line 369
    .line 370
    .line 371
    :goto_14
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    if-eqz v0, :cond_1e

    .line 376
    .line 377
    const v8, 0x7f070535

    .line 378
    .line 379
    .line 380
    goto :goto_15

    .line 381
    :cond_1e
    const v8, 0x7f070534

    .line 382
    .line 383
    .line 384
    :goto_15
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 385
    .line 386
    .line 387
    move-result v8

    .line 388
    add-int/2addr v8, v6

    .line 389
    if-eqz v0, :cond_1f

    .line 390
    .line 391
    const v6, 0x7f07053f

    .line 392
    .line 393
    .line 394
    goto :goto_16

    .line 395
    :cond_1f
    const v6, 0x7f0704ff

    .line 396
    .line 397
    .line 398
    :goto_16
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    add-int/2addr v6, v8

    .line 403
    if-eqz v5, :cond_20

    .line 404
    .line 405
    invoke-virtual {p0}, Lcom/android/keyguard/StrongAuthPopup;->getNavigationBarSize()I

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    sub-int/2addr v5, v0

    .line 410
    goto :goto_19

    .line 411
    :cond_20
    if-eqz v0, :cond_21

    .line 412
    .line 413
    goto :goto_17

    .line 414
    :cond_21
    move v7, v12

    .line 415
    :goto_17
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    if-eqz v0, :cond_22

    .line 420
    .line 421
    const v0, 0x7f070501

    .line 422
    .line 423
    .line 424
    goto :goto_18

    .line 425
    :cond_22
    const v0, 0x7f070500

    .line 426
    .line 427
    .line 428
    :goto_18
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    add-int/2addr v5, v0

    .line 433
    :goto_19
    add-int/2addr v6, v5

    .line 434
    if-eqz v4, :cond_23

    .line 435
    .line 436
    invoke-virtual {p0}, Lcom/android/keyguard/StrongAuthPopup;->getNavigationBarSize()I

    .line 437
    .line 438
    .line 439
    move-result p0

    .line 440
    sub-int v9, v4, p0

    .line 441
    .line 442
    :cond_23
    add-int/2addr v9, v6

    .line 443
    goto :goto_21

    .line 444
    :cond_24
    if-eqz v0, :cond_25

    .line 445
    .line 446
    iget-object v4, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    .line 447
    .line 448
    invoke-static {v4}, Lcom/android/keyguard/SecurityUtils;->getTabletPINContainerHeight(Landroid/content/Context;)I

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    goto :goto_1a

    .line 453
    :cond_25
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 454
    .line 455
    if-eqz v4, :cond_26

    .line 456
    .line 457
    const-class v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 458
    .line 459
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    check-cast v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 464
    .line 465
    iget-boolean v4, v4, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 466
    .line 467
    if-eqz v4, :cond_26

    .line 468
    .line 469
    iget-object v4, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    .line 470
    .line 471
    invoke-static {v4}, Lcom/android/keyguard/SecurityUtils;->getFoldPINContainerHeight(Landroid/content/Context;)I

    .line 472
    .line 473
    .line 474
    move-result v4

    .line 475
    goto :goto_1a

    .line 476
    :cond_26
    iget-object v4, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    .line 477
    .line 478
    invoke-static {v4}, Lcom/android/keyguard/SecurityUtils;->getPINContainerHeight(Landroid/content/Context;)I

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    :goto_1a
    if-eqz v0, :cond_27

    .line 483
    .line 484
    const v6, 0x7f070512

    .line 485
    .line 486
    .line 487
    goto :goto_1b

    .line 488
    :cond_27
    const v6, 0x7f070511

    .line 489
    .line 490
    .line 491
    :goto_1b
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 492
    .line 493
    .line 494
    move-result v6

    .line 495
    add-int/2addr v6, v4

    .line 496
    if-eqz v5, :cond_28

    .line 497
    .line 498
    invoke-virtual {p0}, Lcom/android/keyguard/StrongAuthPopup;->getNavigationBarSize()I

    .line 499
    .line 500
    .line 501
    move-result p0

    .line 502
    :goto_1c
    sub-int/2addr v5, p0

    .line 503
    goto :goto_20

    .line 504
    :cond_28
    if-eqz v0, :cond_29

    .line 505
    .line 506
    goto :goto_1d

    .line 507
    :cond_29
    move v7, v12

    .line 508
    :goto_1d
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 509
    .line 510
    .line 511
    move-result p0

    .line 512
    if-eqz v0, :cond_2a

    .line 513
    .line 514
    const v0, 0x7f070514

    .line 515
    .line 516
    .line 517
    goto :goto_1e

    .line 518
    :cond_2a
    const v0, 0x7f070513

    .line 519
    .line 520
    .line 521
    :goto_1e
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    :goto_1f
    add-int v5, v0, p0

    .line 526
    .line 527
    :goto_20
    add-int v9, v6, v5

    .line 528
    .line 529
    :goto_21
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 530
    .line 531
    :goto_22
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 532
    .line 533
    .line 534
    :goto_23
    return-void
.end method
