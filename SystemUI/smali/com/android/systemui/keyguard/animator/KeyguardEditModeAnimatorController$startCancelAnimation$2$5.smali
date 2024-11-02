.class public final Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$startCancelAnimation$2$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$startCancelAnimation$2$5;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$startCancelAnimation$2$5;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 7
    .line 8
    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->cancel()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$startCancelAnimation$2$5;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 16
    .line 17
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    .line 21
    .line 22
    return-void
.end method
