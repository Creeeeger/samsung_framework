.class public abstract Lcom/android/systemui/vibrate/VibratorType;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(I)Lcom/android/systemui/vibrate/VibratorType;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/android/systemui/vibrate/VibratorNone;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/android/systemui/vibrate/VibratorNone;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p0, Lcom/android/systemui/vibrate/VibratorCoinDC;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/android/systemui/vibrate/VibratorCoinDC;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    new-instance p0, Lcom/android/systemui/vibrate/VibratorLinear;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/android/systemui/vibrate/VibratorLinear;-><init>()V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method


# virtual methods
.method public abstract playVibration(Lcom/android/systemui/vibrate/VibrationUtil;I)V
.end method

.method public abstract setVibrator(Landroid/os/Vibrator;)V
.end method
