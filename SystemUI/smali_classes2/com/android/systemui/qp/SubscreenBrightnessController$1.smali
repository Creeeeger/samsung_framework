.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$1;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$1;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 2
    .line 3
    iput p1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayId:I

    .line 4
    .line 5
    iget-object p1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplay:Landroid/view/Display;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "SubscreenBrightnessController"

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p0, "info is null "

    .line 16
    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "info.brightness:"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v2, p1, Landroid/hardware/display/BrightnessInfo;->brightness:F

    .line 29
    .line 30
    invoke-static {v1, v2, v0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-boolean v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mTracking:Z

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$1;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 38
    .line 39
    iget v2, v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightness:F

    .line 40
    .line 41
    iget p1, p1, Landroid/hardware/display/BrightnessInfo;->brightness:F

    .line 42
    .line 43
    cmpl-float v2, v2, p1

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iput p1, v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightness:F

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "onDisplayChanged mBrightness:"

    .line 52
    .line 53
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$1;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 57
    .line 58
    iget v1, v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightness:F

    .line 59
    .line 60
    invoke-static {p1, v1, v0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$1;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$2;

    .line 68
    .line 69
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method
