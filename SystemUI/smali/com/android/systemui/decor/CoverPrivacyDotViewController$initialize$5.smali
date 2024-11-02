.class public final Lcom/android/systemui/decor/CoverPrivacyDotViewController$initialize$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/decor/CoverPrivacyDotViewController;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$initialize$5;->this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$initialize$5;->$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$initialize$5;->this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->animationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->systemStatusAnimationCallback:Lcom/android/systemui/decor/CoverPrivacyDotViewController$systemStatusAnimationCallback$1;

    .line 6
    .line 7
    check-cast v1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->addCallback(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$initialize$5;->this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 13
    .line 14
    sget-object v1, Lcom/android/systemui/CameraAvailabilityListener;->Factory:Lcom/android/systemui/CameraAvailabilityListener$Factory;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$initialize$5;->$context:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v3, v0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 19
    .line 20
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$initialize$5;->this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 24
    .line 25
    iget-object v4, v4, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->handler:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3, v4}, Lcom/android/systemui/CameraAvailabilityListener$Factory;->build(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Handler;)Lcom/android/systemui/CameraAvailabilityListener;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, v0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->cameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$initialize$5;->this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->cameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$initialize$5;->this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->cameraTransitionCallback:Lcom/android/systemui/decor/CoverPrivacyDotViewController$cameraTransitionCallback$1;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    .line 51
    .line 52
    check-cast v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$initialize$5;->this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->cameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    .line 60
    .line 61
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/CameraAvailabilityListener;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/systemui/CameraAvailabilityListener;->cameraDeviceStateCallback:Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener;->handler:Landroid/os/Handler;

    .line 69
    .line 70
    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
