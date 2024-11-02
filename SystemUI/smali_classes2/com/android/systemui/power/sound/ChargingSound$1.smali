.class public final Lcom/android/systemui/power/sound/ChargingSound$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/sound/ChargingSound;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/sound/ChargingSound;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/sound/ChargingSound$1;->this$0:Lcom/android/systemui/power/sound/ChargingSound;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p1, v1, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    const-string p0, "PowerUiSound.Charging"

    .line 17
    .line 18
    const-string p1, "This case is abnormal!!"

    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/sound/ChargingSound$1;->this$0:Lcom/android/systemui/power/sound/ChargingSound;

    .line 25
    .line 26
    const/16 p1, 0x70

    .line 27
    .line 28
    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 29
    .line 30
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/power/sound/PowerUiSound;->playVibration(IILandroid/os/VibrationEffect$SemMagnitudeType;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/power/sound/ChargingSound$1;->this$0:Lcom/android/systemui/power/sound/ChargingSound;

    .line 35
    .line 36
    const/16 p1, 0x6f

    .line 37
    .line 38
    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 39
    .line 40
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/power/sound/PowerUiSound;->playVibration(IILandroid/os/VibrationEffect$SemMagnitudeType;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/power/sound/ChargingSound$1;->this$0:Lcom/android/systemui/power/sound/ChargingSound;

    .line 45
    .line 46
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/power/sound/PowerUiSound;->playSound(II)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/power/sound/ChargingSound$1;->this$0:Lcom/android/systemui/power/sound/ChargingSound;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/power/sound/PowerUiSound;->playSound(II)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method
