.class Lcom/android/systemui/bixby2/controller/AppController$AppControlSensorOrientationListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bixby2/controller/AppController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppControlSensorOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/AppController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/bixby2/controller/AppController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$AppControlSensorOrientationListener;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/bixby2/controller/AppController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/AppController$AppControlSensorOrientationListener;-><init>(Lcom/android/systemui/bixby2/controller/AppController;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget p1, p1, v0

    .line 5
    .line 6
    float-to-int p1, p1

    .line 7
    const-string v0, "AppControlSensorOrientationListener.onSensorChanged, Rotation: "

    .line 8
    .line 9
    const-string v1, "AppController"

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-ltz p1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-gt p1, v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController$AppControlSensorOrientationListener;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 20
    .line 21
    invoke-static {p0, p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fputmCurOrientation(Lcom/android/systemui/bixby2/controller/AppController;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
