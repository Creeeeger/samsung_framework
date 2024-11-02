.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateLeashVisible$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic $leash:Landroid/view/SurfaceControl;

.field public final synthetic $needDelayedFinishCallback:Z

.field public final synthetic $transaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$Transaction;ZLandroid/view/SurfaceControl;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateLeashVisible$1;->$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateLeashVisible$1;->$needDelayedFinishCallback:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateLeashVisible$1;->$leash:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateLeashVisible$1;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const-string v0, "KeyguardViewMediator"

    .line 2
    .line 3
    const-string/jumbo v1, "updateLeashVisible"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateLeashVisible$1;->$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateLeashVisible$1;->$leash:Landroid/view/SurfaceControl;

    .line 12
    .line 13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateLeashVisible$1;->$needDelayedFinishCallback:Z

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateLeashVisible$1$2;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateLeashVisible$1;->$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateLeashVisible$1;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 38
    .line 39
    invoke-direct {v1, v3, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateLeashVisible$1$2;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    invoke-virtual {v0, v2, v1, p0}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method
