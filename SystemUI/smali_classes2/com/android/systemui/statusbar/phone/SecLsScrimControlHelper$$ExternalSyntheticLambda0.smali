.class public final synthetic Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsFoldOpened:Z

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 8
    .line 9
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 10
    .line 11
    if-ne p1, v0, :cond_4

    .line 12
    .line 13
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 14
    .line 15
    if-eqz p1, :cond_4

    .line 16
    .line 17
    const-class p1, Lcom/android/systemui/keyguard/KeyguardFoldController;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/android/systemui/keyguard/KeyguardFoldController;

    .line 24
    .line 25
    check-cast p1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isBouncerOnFoldOpened()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsFoldOpened:Z

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->getWhiteWallpaperState(Ljava/lang/Boolean;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    const v0, 0x3e4ccccd    # 0.2f

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const v0, 0x3e99999a    # 0.3f

    .line 50
    .line 51
    .line 52
    :goto_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_COLOR_CURVE_BLUR:Z

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    :cond_1
    if-eqz p1, :cond_2

    .line 58
    .line 59
    const v1, 0x7f060540

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const v1, 0x7f06053f

    .line 64
    .line 65
    .line 66
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mResources:Landroid/content/res/Resources;

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iput v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v2, "onFolderStateChanged isWhiteWallpaper() = "

    .line 77
    .line 78
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p1, " bouncerScrimAlpha = "

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p1, " mScrimBouncerColor = #"

    .line 93
    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    .line 98
    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerAlpha:F

    .line 111
    .line 112
    cmpl-float v1, v1, v0

    .line 113
    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerAlpha:F

    .line 117
    .line 118
    const-string v1, "ScrimController"

    .line 119
    .line 120
    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mBouncerColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 124
    .line 125
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 128
    .line 129
    .line 130
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 136
    .line 137
    const/4 v2, 0x0

    .line 138
    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/scrim/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 142
    .line 143
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    new-instance v2, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;

    .line 149
    .line 150
    invoke-direct {v2, p1, v1}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/scrim/ScrimView;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v2}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    .line 154
    .line 155
    .line 156
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 157
    .line 158
    invoke-virtual {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->setViewAlpha(F)V

    .line 159
    .line 160
    .line 161
    :cond_4
    return-void
.end method
