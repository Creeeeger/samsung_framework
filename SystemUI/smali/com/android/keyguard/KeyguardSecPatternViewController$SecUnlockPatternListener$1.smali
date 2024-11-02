.class public final Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;


# instance fields
.field public final synthetic this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->val$userId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCancelled()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onChecked(ZI)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v1, "onPatternDetected - onChecked - matched : "

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", timeoutMs : "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "KeyguardSecPatternViewController.DDAR"

    .line 28
    .line 29
    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    .line 46
    .line 47
    iget-object v2, p1, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    iput-object v3, v2, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 51
    .line 52
    iget p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->val$userId:I

    .line 53
    .line 54
    invoke-virtual {p1, p0, p2, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->onPatternChecked(IIZZ)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    .line 59
    .line 60
    iget p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->val$userId:I

    .line 61
    .line 62
    invoke-virtual {p1, p0, v0, v1, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->onPatternChecked(IIZZ)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method

.method public final onInnerLayerUnlockFailed()V
    .locals 2

    .line 1
    const-string v0, "KeyguardSecPatternViewController.DDAR"

    .line 2
    .line 3
    const-string/jumbo v1, "onPatternDetected - onInnerLayerUnlockFailed"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 24
    .line 25
    return-void
.end method

.method public final onInnerLayerUnlocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 9
    .line 10
    .line 11
    const-string v0, "KeyguardSecPatternViewController.DDAR"

    .line 12
    .line 13
    const-string/jumbo v1, "onPatternDetected - onInnerLayerUnlocked"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 25
    .line 26
    return-void
.end method
