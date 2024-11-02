.class public final Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# instance fields
.field public mLastSensorValue:Z

.field public mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

.field public final mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field public final mSupportPositionSensor:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSupportPositionSensor:Z

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "com.sec.feature.sensorhub"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string/jumbo v0, "scontext"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/samsung/android/hardware/context/SemContextManager;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 31
    .line 32
    const/16 v0, 0x16

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 42
    .line 43
    const-string p1, "UpsideDownChecker"

    .line 44
    .line 45
    const-string v0, "The Sensor is not supported in device"

    .line 46
    .line 47
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSupportPositionSensor:Z

    .line 52
    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "UpsideDownChecker"

    .line 12
    .line 13
    const-string/jumbo v1, "unregister sensor."

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 20
    .line 21
    const/16 v1, 0x16

    .line 22
    .line 23
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v0
.end method

.method public final onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x16

    .line 8
    .line 9
    const-string v2, "UpsideDownChecker"

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "onSemContextChanged: not sensor type"

    .line 14
    .line 15
    .line 16
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getDevicePositionContext()Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo v1, "onSContextChanged:"

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ",mLastSensorValue="

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const/4 v0, 0x2

    .line 61
    if-eq p1, v0, :cond_4

    .line 62
    .line 63
    const/4 v0, 0x6

    .line 64
    if-eq p1, v0, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;->onChanged(Z)V

    .line 72
    .line 73
    .line 74
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;->onChanged(Z)V

    .line 88
    .line 89
    .line 90
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const-string/jumbo p0, "onSContextChanged(), listener is null"

    .line 94
    .line 95
    .line 96
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_0
    return-void
.end method

.method public final run(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p0, "UpsideDownChecker"

    .line 9
    .line 10
    const-string p1, "The sensor is not supported in device"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string p1, "UpsideDownChecker"

    .line 22
    .line 23
    const-string/jumbo v0, "run: Listener is not null"

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 34
    .line 35
    const/16 v0, 0x16

    .line 36
    .line 37
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p1
.end method
