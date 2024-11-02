.class public final Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$1;->this$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$1;->this$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    const-class p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 12
    .line 13
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->startFlashActivity()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mWakefulnessObserver:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    check-cast p1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->finishFlashLightActivity()V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mWakefulnessObserver:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void
.end method
