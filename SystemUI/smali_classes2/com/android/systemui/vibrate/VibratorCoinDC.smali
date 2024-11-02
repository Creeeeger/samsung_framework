.class public final Lcom/android/systemui/vibrate/VibratorCoinDC;
.super Lcom/android/systemui/vibrate/VibratorType;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/vibrate/VibratorType;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final playVibration(Lcom/android/systemui/vibrate/VibrationUtil;I)V
    .locals 1

    .line 1
    const/16 p2, 0x64

    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object p1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    invoke-static {p2, v0, p1}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/vibrate/VibratorCoinDC;->mVibrator:Landroid/os/Vibrator;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final setVibrator(Landroid/os/Vibrator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/vibrate/VibratorCoinDC;->mVibrator:Landroid/os/Vibrator;

    .line 2
    .line 3
    return-void
.end method
