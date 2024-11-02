.class public final synthetic Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;


# virtual methods
.method public final onViewInflated(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 2

    .line 1
    iget-object p0, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    .line 11
    cmpg-float p0, p0, v0

    .line 12
    .line 13
    const-string v1, "KeyguardInputViewController"

    .line 14
    .line 15
    if-ltz p0, :cond_0

    .line 16
    .line 17
    iget-object p0, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 18
    .line 19
    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScaleX()F

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    iget-object p0, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 32
    .line 33
    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScaleY()F

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    :cond_0
    const-string/jumbo p0, "restoreAppearance - inputView"

    .line 46
    .line 47
    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object p0, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 52
    .line 53
    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 59
    .line 60
    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 66
    .line 67
    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object p0, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 73
    .line 74
    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    .line 75
    .line 76
    const p1, 0x7f0a016f

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    if-eqz p0, :cond_3

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    cmpg-float p1, p1, v0

    .line 90
    .line 91
    if-ltz p1, :cond_2

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_2

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_3

    .line 112
    .line 113
    :cond_2
    const-string/jumbo p1, "restoreAppearance - bottom"

    .line 114
    .line 115
    .line 116
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 126
    .line 127
    .line 128
    :cond_3
    return-void
.end method
