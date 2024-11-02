.class public final Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

.field public final synthetic val$cameraId:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->val$cameraId:Ljava/util/concurrent/atomic/AtomicReference;

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
    const-string v0, "FlashlightControllerImpl"

    .line 2
    .line 3
    const-string v1, "cameraId"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v4, "camera"

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroid/hardware/camera2/CameraManager;

    .line 16
    .line 17
    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 18
    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->val$cameraId:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->getCameraId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->val$cameraId:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->val$cameraId:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    .line 51
    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 60
    .line 61
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 62
    .line 63
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchCallback:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;

    .line 66
    .line 67
    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mHandler:Landroid/os/Handler;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraDeviceStateCallback:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$5;

    .line 77
    .line 78
    invoke-virtual {v0, p0, v1}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    :try_start_1
    const-string v2, "Couldn\'t initialize."

    .line 84
    .line 85
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->val$cameraId:Ljava/util/concurrent/atomic/AtomicReference;

    .line 91
    .line 92
    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    .line 94
    return-void

    .line 95
    :catchall_1
    move-exception v0

    .line 96
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->val$cameraId:Ljava/util/concurrent/atomic/AtomicReference;

    .line 99
    .line 100
    iput-object p0, v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/util/concurrent/atomic/AtomicReference;

    .line 101
    .line 102
    throw v0
.end method
