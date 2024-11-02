.class public final Lcom/android/systemui/wallpaper/tilt/TiltColorController$4;
.super Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$4;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$4;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v2, 0x3e8

    .line 17
    .line 18
    cmp-long p1, v0, v2

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->mIsCanceled:Z

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$4;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mResumed:Z

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v0, "GyroDetector"

    .line 45
    .line 46
    const-string v1, "Sensor resumed."

    .line 47
    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mResumed:Z

    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mGyroSensor:Landroid/hardware/Sensor;

    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    invoke-virtual {p1, v0, p0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$4;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mNeedUpdateColorFilter:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->requestDraw()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
