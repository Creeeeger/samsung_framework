.class public final Lcom/android/systemui/vibrate/VibrationUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mVibratorType:Lcom/android/systemui/vibrate/VibratorType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 9
    .line 10
    const-string/jumbo v0, "vibrator"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/os/Vibrator;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    invoke-static {v0}, Lcom/android/systemui/vibrate/VibratorType;->create(I)Lcom/android/systemui/vibrate/VibratorType;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mVibratorType:Lcom/android/systemui/vibrate/VibratorType;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/vibrate/VibratorType;->create(I)Lcom/android/systemui/vibrate/VibratorType;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mVibratorType:Lcom/android/systemui/vibrate/VibratorType;

    .line 45
    .line 46
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mVibratorType:Lcom/android/systemui/vibrate/VibratorType;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/systemui/vibrate/VibratorType;->setVibrator(Landroid/os/Vibrator;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    invoke-static {p1}, Lcom/android/systemui/vibrate/VibratorType;->create(I)Lcom/android/systemui/vibrate/VibratorType;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mVibratorType:Lcom/android/systemui/vibrate/VibratorType;

    .line 58
    .line 59
    :goto_1
    return-void
.end method


# virtual methods
.method public final playVibration(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mVibratorType:Lcom/android/systemui/vibrate/VibratorType;

    .line 17
    .line 18
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/vibrate/VibratorType;->playVibration(Lcom/android/systemui/vibrate/VibrationUtil;I)V

    .line 19
    .line 20
    .line 21
    :cond_2
    return-void
.end method
