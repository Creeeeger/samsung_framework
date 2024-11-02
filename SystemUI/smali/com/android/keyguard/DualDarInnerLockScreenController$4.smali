.class public final Lcom/android/keyguard/DualDarInnerLockScreenController$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    iget-object p2, p2, Lcom/android/keyguard/DualDarInnerLockScreenController;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/keyguard/DualDarInnerLockScreenController$4$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, v0}, Lcom/android/keyguard/DualDarInnerLockScreenController$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController$4;II)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dismiss(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    iget-object p1, p1, Lcom/android/keyguard/DualDarInnerLockScreenController;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/keyguard/DualDarInnerLockScreenController$4$$ExternalSyntheticLambda0;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p2, p4}, Lcom/android/keyguard/DualDarInnerLockScreenController$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController$4;II)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final onCancelClicked()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onCancelClicked()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onUserInput()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onUserInput()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final reportUnlockAttempt(IIZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public final reset()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final userActivity()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
