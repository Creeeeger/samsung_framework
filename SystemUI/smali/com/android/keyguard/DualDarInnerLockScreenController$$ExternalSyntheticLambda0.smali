.class public final synthetic Lcom/android/keyguard/DualDarInnerLockScreenController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/DualDarInnerLockScreenController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 11
    .line 12
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getInnerAuthUserId(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x4

    .line 25
    const/4 v2, 0x0

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v2

    .line 31
    :goto_0
    if-eqz v0, :cond_3

    .line 32
    .line 33
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    move v0, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 48
    .line 49
    :goto_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p2, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 58
    .line 59
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {p2, v3}, Landroid/view/WindowInsets;->isVisible(I)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    iget-boolean v4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    .line 68
    .line 69
    if-eq v4, v3, :cond_2

    .line 70
    .line 71
    iput-boolean v3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    .line 72
    .line 73
    iget-object v3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 74
    .line 75
    iget-object v4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 76
    .line 77
    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/DualDarInnerLockScreenController;->updateLayoutMargins(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardInputView;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Integer;->max(II)I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move p0, v2

    .line 86
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {p1, v0, v1, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v2, v2, v2, p0}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0
.end method
