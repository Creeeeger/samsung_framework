.class public final Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;->this$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPowerKeyPressed()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 8
    .line 9
    check-cast v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;->this$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->finishFlashLightActivity()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;->this$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    .line 9
    .line 10
    const-string v1, "onStartedGoingToSleep "

    .line 11
    .line 12
    const-string v2, "SubscreenFlashLightController"

    .line 13
    .line 14
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;->onPowerKeyPressed()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;->this$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 9
    .line 10
    const-string v1, "onStartedWakingUp "

    .line 11
    .line 12
    const-string v2, "SubscreenFlashLightController"

    .line 13
    .line 14
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;->onPowerKeyPressed()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
