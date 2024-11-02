.class Lcom/android/systemui/bixby2/controller/AppController$AppControlSensorTiltListener;
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
    name = "AppControlSensorTiltListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/AppController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/bixby2/controller/AppController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$AppControlSensorTiltListener;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/bixby2/controller/AppController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/AppController$AppControlSensorTiltListener;-><init>(Lcom/android/systemui/bixby2/controller/AppController;)V

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
    const-string v0, "AppControlSensorTiltListener.onSensorChanged, Tilt: "

    .line 8
    .line 9
    const-string v1, "AppController"

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController$AppControlSensorTiltListener;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 15
    .line 16
    invoke-static {p0, p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fputmIsFlexMode(Lcom/android/systemui/bixby2/controller/AppController;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
