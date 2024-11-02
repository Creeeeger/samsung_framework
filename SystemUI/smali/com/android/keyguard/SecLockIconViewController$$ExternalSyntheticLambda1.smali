.class public final synthetic Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/SecLockIconViewController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/SecLockIconViewController;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/SecLockIconViewController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/SecLockIconViewController;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->onLockIconPressed()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lcom/android/keyguard/SecLockIconViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0
.end method
