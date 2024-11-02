.class Lcom/android/systemui/bixby2/controller/AppController$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bixby2/controller/AppController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/AppController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/AppController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onDisplayChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onFolderStateChanged(Z)V
    .locals 3

    .line 1
    const-string v0, "isFolderOpened = "

    .line 2
    .line 3
    const-string v1, "AppController"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    const-string p1, "folderOpened : regist SensorManager "

    .line 19
    .line 20
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-static {p1, v0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fputmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;Z)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorManager(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorManager;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorOrientationListener(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorEventListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorOrientation(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/Sensor;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x3

    .line 48
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 49
    .line 50
    .line 51
    sget-boolean p1, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FLIP:Z

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorManager(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorManager;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorTiltListener(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorEventListener;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 68
    .line 69
    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorTilt(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/Sensor;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p1, v0, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    const-string p1, "folderClosed : unregist SensorManager "

    .line 86
    .line 87
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    invoke-static {p1, v0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fputmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;Z)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorManager(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorManager;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorOrientationListener(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorEventListener;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 109
    .line 110
    .line 111
    sget-boolean p1, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FLIP:Z

    .line 112
    .line 113
    if-eqz p1, :cond_1

    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 116
    .line 117
    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorManager(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorManager;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController$3;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 122
    .line 123
    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorTiltListener(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorEventListener;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 128
    .line 129
    .line 130
    :cond_1
    :goto_0
    return-void
.end method
