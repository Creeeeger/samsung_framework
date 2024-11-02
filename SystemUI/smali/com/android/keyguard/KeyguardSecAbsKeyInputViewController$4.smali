.class public final Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

.field public final synthetic val$password:Lcom/android/internal/widget/LockscreenCredential;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->val$userId:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCancelled()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onChecked(ZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v1, "verifyPasswordAndUnlock - onChecked - matched : "

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", timeoutMs : "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "KeyguardSecAbsKeyInputViewController.DDAR"

    .line 26
    .line 27
    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    const/4 v1, 0x1

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 37
    .line 38
    check-cast p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 46
    .line 47
    check-cast p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->enableTouch()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    iput-object v2, p1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 56
    .line 57
    iget v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->val$userId:I

    .line 58
    .line 59
    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onPasswordChecked(IIZZ)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 69
    .line 70
    iget p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->val$userId:I

    .line 71
    .line 72
    invoke-virtual {p1, p0, v0, v1, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onPasswordChecked(IIZZ)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method

.method public final onInnerLayerUnlockFailed()V
    .locals 1

    .line 1
    const-string p0, "KeyguardSecAbsKeyInputViewController.DDAR"

    .line 2
    .line 3
    const-string/jumbo v0, "verifyPasswordAndUnlock - onInnerLayerUnlockFailed"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onInnerLayerUnlocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 7
    .line 8
    .line 9
    const-string v0, "KeyguardSecAbsKeyInputViewController.DDAR"

    .line 10
    .line 11
    const-string/jumbo v1, "verifyPasswordAndUnlock - onInnerLayerUnlocked"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 20
    .line 21
    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 30
    .line 31
    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->enableTouch()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 44
    .line 45
    .line 46
    return-void
.end method
