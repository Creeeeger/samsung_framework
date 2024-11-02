.class public abstract Lcom/android/keyguard/KeyguardInputViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mForgotPasswordText:Lcom/android/systemui/widget/SystemUITextView;

.field public final mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

.field public final mNullCallback:Lcom/android/keyguard/KeyguardInputViewController$1;

.field public mPaused:Z

.field public final mPrevInfoSubText:Lcom/android/systemui/widget/SystemUITextView;

.field public final mPrevInfoText:Lcom/android/systemui/widget/SystemUITextView;

.field public final mPrevInfoTextContainer:Landroid/widget/LinearLayout;

.field public final mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public final mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardInputView;",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            "Lcom/android/keyguard/KeyguardSecurityCallback;",
            "Lcom/android/keyguard/EmergencyButtonController;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/keyguard/KeyguardInputViewController$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardInputViewController$1;-><init>(Lcom/android/keyguard/KeyguardInputViewController;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mNullCallback:Lcom/android/keyguard/KeyguardInputViewController$1;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const p2, 0x7f0a03a9

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/android/keyguard/EmergencyButton;

    .line 26
    .line 27
    :goto_0
    iput-object p4, p0, Lcom/android/keyguard/KeyguardInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 28
    .line 29
    iput-object p6, p0, Lcom/android/keyguard/KeyguardInputViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 30
    .line 31
    if-eqz p5, :cond_1

    .line 32
    .line 33
    iget-object p2, p5, Lcom/android/keyguard/KeyguardMessageAreaController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 34
    .line 35
    iget-object p3, p5, Lcom/android/keyguard/KeyguardMessageAreaController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const p4, 0x7f0a096b

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    check-cast p4, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    .line 47
    .line 48
    new-instance p5, Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 49
    .line 50
    invoke-direct {p5, p4, p3, p2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;-><init>(Lcom/android/keyguard/BouncerKeyguardMessageArea;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 51
    .line 52
    .line 53
    iput-object p5, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 54
    .line 55
    invoke-virtual {p5}, Lcom/android/systemui/util/ViewController;->init()V

    .line 56
    .line 57
    .line 58
    const/4 p4, 0x1

    .line 59
    invoke-virtual {p5, p4}, Lcom/android/keyguard/KeyguardMessageAreaController;->setIsVisible(Z)V

    .line 60
    .line 61
    .line 62
    const p5, 0x7f0a0558

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p5

    .line 69
    check-cast p5, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    .line 70
    .line 71
    new-instance p6, Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 72
    .line 73
    invoke-direct {p6, p5, p3, p2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;-><init>(Lcom/android/keyguard/BouncerKeyguardMessageArea;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 74
    .line 75
    .line 76
    iput-object p6, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 77
    .line 78
    invoke-virtual {p6}, Lcom/android/systemui/util/ViewController;->init()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p6, p4}, Lcom/android/keyguard/KeyguardMessageAreaController;->setIsVisible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_0
    const-string p2, "KeyguardInputViewController"

    .line 86
    .line 87
    const-string p3, "Ensure that a BouncerKeyguardMessageArea is included in the layout"

    .line 88
    .line 89
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_1
    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 93
    .line 94
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 99
    .line 100
    iput-object p2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 101
    .line 102
    const/4 p2, 0x0

    .line 103
    if-nez p1, :cond_2

    .line 104
    .line 105
    move-object p3, p2

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    const p3, 0x7f0a0413

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    check-cast p3, Lcom/android/systemui/widget/SystemUITextView;

    .line 115
    .line 116
    :goto_2
    iput-object p3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mForgotPasswordText:Lcom/android/systemui/widget/SystemUITextView;

    .line 117
    .line 118
    if-nez p1, :cond_3

    .line 119
    .line 120
    move-object p3, p2

    .line 121
    goto :goto_3

    .line 122
    :cond_3
    const p3, 0x7f0a080f

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    check-cast p3, Landroid/widget/LinearLayout;

    .line 130
    .line 131
    :goto_3
    iput-object p3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoTextContainer:Landroid/widget/LinearLayout;

    .line 132
    .line 133
    if-nez p1, :cond_4

    .line 134
    .line 135
    move-object p3, p2

    .line 136
    goto :goto_4

    .line 137
    :cond_4
    const p3, 0x7f0a0810

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    check-cast p3, Lcom/android/systemui/widget/SystemUITextView;

    .line 145
    .line 146
    :goto_4
    iput-object p3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoText:Lcom/android/systemui/widget/SystemUITextView;

    .line 147
    .line 148
    if-nez p1, :cond_5

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_5
    const p2, 0x7f0a0811

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    move-object p2, p1

    .line 159
    check-cast p2, Lcom/android/systemui/widget/SystemUITextView;

    .line 160
    .line 161
    :goto_5
    iput-object p2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoSubText:Lcom/android/systemui/widget/SystemUITextView;

    .line 162
    .line 163
    return-void
.end method


# virtual methods
.method public abstract getInitialMessageResId()I
.end method

.method public final getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 8
    .line 9
    if-eq v2, v1, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthShowing()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mNullCallback:Lcom/android/keyguard/KeyguardInputViewController$1;

    .line 16
    .line 17
    const-string v2, "KeyguardInputViewController"

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string p0, "isDualDarInnerAuthShowing() return true and getKeyguardSecurityCallback() returns NULL callback"

    .line 26
    .line 27
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_0
    const-string p0, "getKeyguardSecurityCallback() returns NULL callback"

    .line 32
    .line 33
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 38
    .line 39
    return-object p0
.end method

.method public onInit()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    .line 3
    .line 4
    return-void
.end method

.method public onResume(I)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    .line 3
    .line 4
    return-void
.end method

.method public onViewAttached()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget-object v2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setIsVisible(Z)V

    .line 15
    .line 16
    .line 17
    :goto_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const-string v1, "background"

    .line 22
    .line 23
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    const-wide/16 v3, 0x400

    .line 28
    .line 29
    or-long/2addr v1, v3

    .line 30
    invoke-static {p0, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const/4 v1, 0x3

    .line 34
    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mForgotPasswordText:Lcom/android/systemui/widget/SystemUITextView;

    .line 37
    .line 38
    if-eqz v3, :cond_4

    .line 39
    .line 40
    new-instance v4, Landroid/text/SpannableString;

    .line 41
    .line 42
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCredentialTypeForUser(I)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eq v5, v0, :cond_3

    .line 51
    .line 52
    if-eq v5, v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const v6, 0x7f130868

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const v6, 0x7f13086a

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const v6, 0x7f130869

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    :goto_1
    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    new-instance v5, Landroid/text/style/UnderlineSpan;

    .line 93
    .line 94
    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    const/4 v7, 0x0

    .line 102
    invoke-virtual {v4, v5, v7, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 103
    .line 104
    .line 105
    const v5, 0x3f8ccccd    # 1.1f

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v5}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    new-instance v4, Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda0;

    .line 115
    .line 116
    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardInputViewController;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoSubText:Lcom/android/systemui/widget/SystemUITextView;

    .line 123
    .line 124
    if-eqz v3, :cond_7

    .line 125
    .line 126
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    invoke-interface {v2, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCredentialTypeForUser(I)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eq v2, v0, :cond_6

    .line 135
    .line 136
    if-eq v2, v1, :cond_5

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    const v0, 0x7f130939

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    goto :goto_2

    .line 150
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    const v0, 0x7f13093b

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    goto :goto_2

    .line 162
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    const v0, 0x7f13093a

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    :goto_2
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    :cond_7
    return-void
.end method

.method public onViewDetached()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setMessageTimeout(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p1, 0xbb8

    .line 14
    .line 15
    :goto_0
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 16
    .line 17
    check-cast v0, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    .line 18
    .line 19
    int-to-long v1, p1

    .line 20
    iput-wide v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 23
    .line 24
    check-cast p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    .line 25
    .line 26
    iput-wide v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public shouldLockout(J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public startAppearAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getInitialMessageResId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 24
    .line 25
    check-cast v1, Lcom/android/keyguard/KeyguardInputView;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getInitialMessageResId()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 44
    .line 45
    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputView;->startAppearAnimation()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardInputView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final updateForgotPasswordTextVisibility()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mForgotPasswordText:Lcom/android/systemui/widget/SystemUITextView;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    if-nez v0, :cond_4

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 12
    .line 13
    invoke-interface {v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/16 v4, 0x8

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-interface {v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v5, 0x5

    .line 38
    if-lt v0, v5, :cond_2

    .line 39
    .line 40
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->checkValidPrevCredentialType()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-boolean v0, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWeaverDevice()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    const-wide/16 v7, 0x0

    .line 62
    .line 63
    cmp-long v0, v5, v7

    .line 64
    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    :goto_0
    move v0, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move v0, v4

    .line 70
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoTextContainer:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    if-eqz p0, :cond_4

    .line 76
    .line 77
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move v3, v4

    .line 85
    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :cond_4
    :goto_3
    return-void
.end method

.method public final updatePrevInfoTextSize()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const v1, 0x3f8ccccd    # 1.1f

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoText:Lcom/android/systemui/widget/SystemUITextView;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const v4, 0x7f070522

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    int-to-float v3, v3

    .line 33
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoSubText:Lcom/android/systemui/widget/SystemUITextView;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const v1, 0x7f070525

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    int-to-float p0, p0

    .line 55
    invoke-virtual {v2, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method
