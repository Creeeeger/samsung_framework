.class public final Lcom/android/systemui/wallpaper/tilt/GyroDetector;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mGyroSensor:Landroid/hardware/Sensor;

.field public final mGyroSensorChangeListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;

.field public mResumed:Z

.field public mSensorListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;

.field public mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mGyroSensor:Landroid/hardware/Sensor;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mResumed:Z

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mGyroSensorChangeListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;

    .line 13
    .line 14
    const-string/jumbo p2, "sensor"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/hardware/SensorManager;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 24
    .line 25
    const p2, 0x1002b

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mGyroSensor:Landroid/hardware/Sensor;

    .line 33
    .line 34
    new-instance p1, Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;

    .line 35
    .line 36
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;-><init>(Lcom/android/systemui/wallpaper/tilt/GyroDetector;I)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final pause()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mResumed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "GyroDetector"

    .line 7
    .line 8
    const-string v1, "Sensor paused."

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mResumed:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mSensorListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GyroDetector{mResumed="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mResumed:Z

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x7d

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
