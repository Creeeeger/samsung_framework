.class public final Lcom/android/keyguard/KeyguardPluginControllerImpl$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardPluginControllerImpl;

.field public final synthetic val$credential:Lcom/android/internal/widget/LockscreenCredential;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardPluginControllerImpl;ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->this$0:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->val$userId:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

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
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->this$0:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onChecked(ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->this$0:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->this$0:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, v0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget p1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->val$userId:I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, p1, v1, p2}, Lcom/android/keyguard/KeyguardPluginControllerImpl;->-$$Nest$monPasswordChecked(Lcom/android/keyguard/KeyguardPluginControllerImpl;IZI)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onEarlyMatched()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->this$0:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->this$0:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    .line 10
    .line 11
    iget v1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->val$userId:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-static {v0, v1, v3, v2}, Lcom/android/keyguard/KeyguardPluginControllerImpl;->-$$Nest$monPasswordChecked(Lcom/android/keyguard/KeyguardPluginControllerImpl;IZI)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
