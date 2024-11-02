.class public final Lcom/android/systemui/vibrate/VibratorLinear;
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
    invoke-static {p2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    invoke-static {p2, v0, p1}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p0, p0, Lcom/android/systemui/vibrate/VibratorLinear;->mVibrator:Landroid/os/Vibrator;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setVibrator(Landroid/os/Vibrator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/vibrate/VibratorLinear;->mVibrator:Landroid/os/Vibrator;

    .line 2
    .line 3
    return-void
.end method
