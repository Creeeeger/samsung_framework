.class public final synthetic Lcom/android/keyguard/KeyguardUCMViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardUCMViewController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChecked(ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, p0, p2, p1, v1}, Lcom/android/keyguard/KeyguardUCMViewController;->onPasswordChecked(IIZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
