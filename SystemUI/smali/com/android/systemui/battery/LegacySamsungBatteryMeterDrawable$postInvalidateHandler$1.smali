.class public final Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$postInvalidateHandler$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$postInvalidateHandler$1;->this$0:Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;

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
    sget v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->MSG_POST_INVALIDATE:I

    .line 4
    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$postInvalidateHandler$1;->this$0:Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->flagBlinkingNeeded:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->flagDrawIcon:Z

    .line 14
    .line 15
    xor-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->flagDrawIcon:Z

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$postInvalidate$1;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$postInvalidate$1;-><init>(Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$postInvalidate$2;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$postInvalidate$2;-><init>(Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;)V

    .line 33
    .line 34
    .line 35
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method
