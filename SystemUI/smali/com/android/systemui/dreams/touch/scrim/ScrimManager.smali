.class public final Lcom/android/systemui/dreams/touch/scrim/ScrimManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBouncerScrimController:Lcom/android/systemui/dreams/touch/scrim/ScrimController;

.field public final mBouncerlessScrimController:Lcom/android/systemui/dreams/touch/scrim/ScrimController;

.field public final mCallbacks:Ljava/util/HashSet;

.field public mCurrentController:Lcom/android/systemui/dreams/touch/scrim/ScrimController;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mKeyguardStateCallback:Lcom/android/systemui/dreams/touch/scrim/ScrimManager$1;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/dreams/touch/scrim/ScrimController;Lcom/android/systemui/dreams/touch/scrim/ScrimController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/touch/scrim/ScrimManager$1;-><init>(Lcom/android/systemui/dreams/touch/scrim/ScrimManager;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;->mKeyguardStateCallback:Lcom/android/systemui/dreams/touch/scrim/ScrimManager$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    new-instance p1, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;->mCallbacks:Ljava/util/HashSet;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;->mBouncerlessScrimController:Lcom/android/systemui/dreams/touch/scrim/ScrimController;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;->mBouncerScrimController:Lcom/android/systemui/dreams/touch/scrim/ScrimController;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 25
    .line 26
    check-cast p4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 27
    .line 28
    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;->updateController()V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final updateController()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;->mCurrentController:Lcom/android/systemui/dreams/touch/scrim/ScrimController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4
    .line 5
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;->mBouncerlessScrimController:Lcom/android/systemui/dreams/touch/scrim/ScrimController;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;->mBouncerScrimController:Lcom/android/systemui/dreams/touch/scrim/ScrimController;

    .line 15
    .line 16
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;->mCurrentController:Lcom/android/systemui/dreams/touch/scrim/ScrimController;

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    new-instance v0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/touch/scrim/ScrimManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/touch/scrim/ScrimManager;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;->mCallbacks:Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
