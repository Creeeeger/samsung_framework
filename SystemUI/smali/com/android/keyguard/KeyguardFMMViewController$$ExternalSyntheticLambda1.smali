.class public final synthetic Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardFMMViewController;

.field public final synthetic f$1:I

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardFMMViewController;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardFMMViewController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda1;->f$2:[B

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onChecked(ZI)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardFMMViewController;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticLambda1;->f$2:[B

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 8
    .line 9
    check-cast v2, Lcom/android/keyguard/KeyguardFMMView;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 17
    .line 18
    invoke-virtual {v0, v1, p2, p1, v3}, Lcom/android/keyguard/KeyguardFMMViewController;->onPasswordChecked(IIZZ)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
