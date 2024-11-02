.class public final Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "KeyguardEditModeAnimatorController"

    .line 5
    .line 6
    const-string/jumbo v0, "onAnimationCancel "

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 13
    .line 14
    sget v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->$r8$clinit:I

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 25
    .line 26
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 5
    .line 6
    sget v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->$r8$clinit:I

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const-string/jumbo v0, "onAnimationEnd EM="

    .line 13
    .line 14
    .line 15
    const-string v1, "KeyguardEditModeAnimatorController"

    .line 16
    .line 17
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 29
    .line 30
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 31
    .line 32
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 33
    .line 34
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1$onAnimationEnd$1;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1$onAnimationEnd$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;Lkotlin/coroutines/Continuation;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x3

    .line 47
    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    iput-object p0, p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->startActivityJob:Lkotlinx/coroutines/Job;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 57
    .line 58
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STARTED_LOCK_EDIT_MODE_FINISHED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 59
    .line 60
    const/4 v1, 0x2

    .line 61
    invoke-virtual {p1, v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 67
    .line 68
    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->cancel()V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->resetViews()V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method
