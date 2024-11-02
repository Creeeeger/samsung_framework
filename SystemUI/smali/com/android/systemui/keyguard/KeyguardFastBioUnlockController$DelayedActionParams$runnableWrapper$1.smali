.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->isDiscard:Z

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->action:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->handler:Landroid/os/Handler;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->runnableWrapper:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->isDiscard:Z

    .line 29
    .line 30
    :cond_1
    return-void
.end method
