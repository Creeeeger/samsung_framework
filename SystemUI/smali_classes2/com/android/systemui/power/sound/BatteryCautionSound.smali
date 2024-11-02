.class public final Lcom/android/systemui/power/sound/BatteryCautionSound;
.super Lcom/android/systemui/power/sound/PowerUiSound;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/sound/PowerUiSound;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final checkCondition()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final playSoundAndVibration()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/power/sound/PowerUiSound;->checkCommonCondition()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget v0, p0, Lcom/android/systemui/power/sound/PowerUiSound;->mRingerMode:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne v1, v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    const/4 v1, 0x5

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/power/sound/PowerUiSound;->playSound(II)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    if-ne v1, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 23
    .line 24
    const/4 v2, 0x7

    .line 25
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/power/sound/PowerUiSound;->playVibration(IILandroid/os/VibrationEffect$SemMagnitudeType;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string p0, "PowerUiSound.BatteryCaution"

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const-string v0, "RINGER_MODE_SILENT"

    .line 34
    .line 35
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const-string/jumbo v0, "unknown RINGER_MODE"

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_0
    return-void
.end method
