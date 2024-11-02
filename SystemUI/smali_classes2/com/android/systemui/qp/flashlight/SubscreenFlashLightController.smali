.class public final Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qp/SubscreenQSControllerContract$Presenter;


# static fields
.field public static mContext:Landroid/content/Context;

.field public static sInstance:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;


# instance fields
.field public final mDisplayListener:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$1;

.field public mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

.field public final mUiHandler:Landroid/os/Handler;

.field public final mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mUiHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$1;-><init>(Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mDisplayListener:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$1;

    .line 21
    .line 22
    new-instance v1, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;-><init>(Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mWakefulnessObserver:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;

    .line 28
    .line 29
    sput-object p1, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 53
    .line 54
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->sInstance:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sput-object p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->sInstance:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 13
    .line 14
    :cond_0
    sget-object p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->sInstance:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    .line 15
    .line 16
    return-object p0
.end method


# virtual methods
.method public final finishFlashLightActivity()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->getActivityState()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    .line 14
    .line 15
    check-cast p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->finishFlashLightActivity()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final registerReceiver(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final startFlashActivity()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    .line 2
    .line 3
    const-string v1, "SubscreenFlashLightController"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->getActivityState()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "FlashLight presentation Activity already in stack or in top: "

    .line 19
    .line 20
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    .line 24
    .line 25
    check-cast p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->getActivityState()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    const-string p0, "FlashLight presentation Activity starting"

    .line 43
    .line 44
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const-class p0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 48
    .line 49
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 54
    .line 55
    sget-object v0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    const-string v1, "com.android.systemui.qp.flashlight.SubroomFlashLightSettingsActivity"

    .line 58
    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qp/util/SubscreenUtil;->startActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final unRegisterReceiver(Z)V
    .locals 0

    .line 1
    return-void
.end method
