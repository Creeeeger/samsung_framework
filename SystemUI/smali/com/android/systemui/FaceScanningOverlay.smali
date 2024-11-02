.class public final Lcom/android/systemui/FaceScanningOverlay;
.super Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Companion:Lcom/android/systemui/FaceScanningOverlay$Companion;

.field public static final HIDDEN_RIM_SCALE:F


# instance fields
.field public final authController:Lcom/android/systemui/biometrics/AuthController;

.field public cameraProtectionAnimator:Landroid/animation/ValueAnimator;

.field public cameraProtectionColor:I

.field public faceAuthSucceeded:Z

.field public faceScanningAnimColor:I

.field public hideOverlayRunnable:Ljava/lang/Runnable;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1;

.field public final logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public rimAnimator:Landroid/animation/AnimatorSet;

.field public final rimPaint:Landroid/graphics/Paint;

.field public rimProgress:F

.field public final rimRect:Landroid/graphics/RectF;

.field public showScanningAnim:Z

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/FaceScanningOverlay$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/FaceScanningOverlay$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/FaceScanningOverlay;->Companion:Lcom/android/systemui/FaceScanningOverlay$Companion;

    .line 8
    .line 9
    const/high16 v0, 0x3f000000    # 0.5f

    .line 10
    .line 11
    sput v0, Lcom/android/systemui/FaceScanningOverlay;->HIDDEN_RIM_SCALE:F

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/Executor;Lcom/android/systemui/log/ScreenDecorationsLogger;Lcom/android/systemui/biometrics/AuthController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/systemui/FaceScanningOverlay;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/systemui/FaceScanningOverlay;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/systemui/FaceScanningOverlay;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/android/systemui/FaceScanningOverlay;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/android/systemui/FaceScanningOverlay;->authController:Lcom/android/systemui/biometrics/AuthController;

    .line 13
    .line 14
    new-instance p2, Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/systemui/FaceScanningOverlay;->rimPaint:Landroid/graphics/Paint;

    .line 20
    .line 21
    const/high16 p2, 0x3f000000    # 0.5f

    .line 22
    .line 23
    iput p2, p0, Lcom/android/systemui/FaceScanningOverlay;->rimProgress:F

    .line 24
    .line 25
    new-instance p2, Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/systemui/FaceScanningOverlay;->rimRect:Landroid/graphics/RectF;

    .line 31
    .line 32
    const/high16 p2, -0x1000000

    .line 33
    .line 34
    iput p2, p0, Lcom/android/systemui/FaceScanningOverlay;->cameraProtectionColor:I

    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    const p3, 0x11200a9

    .line 38
    .line 39
    .line 40
    invoke-static {p3, p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(ILandroid/content/Context;I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/android/systemui/FaceScanningOverlay;->faceScanningAnimColor:I

    .line 45
    .line 46
    const/4 p1, 0x4

    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/systemui/FaceScanningOverlay;->keyguardUpdateMonitorCallback:Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1;

    .line 56
    .line 57
    return-void
.end method

.method public static final access$updateRimProgress(Lcom/android/systemui/FaceScanningOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Float;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/android/systemui/FaceScanningOverlay;->rimProgress:F

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final createRimDisappearAnimator(FJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget v2, p0, Lcom/android/systemui/FaceScanningOverlay;->rimProgress:F

    .line 6
    .line 7
    aput v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    aput p1, v0, v1

    .line 11
    .line 12
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lcom/android/systemui/FaceScanningOverlay$createRimDisappearAnimator$1$1;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lcom/android/systemui/FaceScanningOverlay$createRimDisappearAnimator$1$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 28
    .line 29
    .line 30
    new-instance p2, Lcom/android/systemui/FaceScanningOverlay$createRimDisappearAnimator$1$2;

    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/android/systemui/FaceScanningOverlay$createRimDisappearAnimator$1$2;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method public final drawCutoutProtection(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/systemui/FaceScanningOverlay;->rimProgress:F

    .line 11
    .line 12
    sget v1, Lcom/android/systemui/FaceScanningOverlay;->HIDDEN_RIM_SCALE:F

    .line 13
    .line 14
    cmpl-float v0, v0, v1

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Path;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Lcom/android/systemui/FaceScanningOverlay;->Companion:Lcom/android/systemui/FaceScanningOverlay$Companion;

    .line 26
    .line 27
    iget v2, p0, Lcom/android/systemui/FaceScanningOverlay;->rimProgress:F

    .line 28
    .line 29
    invoke-static {v1, v0, v2}, Lcom/android/systemui/FaceScanningOverlay$Companion;->access$scalePath(Lcom/android/systemui/FaceScanningOverlay$Companion;Landroid/graphics/Path;F)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/systemui/FaceScanningOverlay;->rimPaint:Landroid/graphics/Paint;

    .line 33
    .line 34
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/systemui/FaceScanningOverlay;->rimPaint:Landroid/graphics/Paint;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v2, p0, Lcom/android/systemui/FaceScanningOverlay;->rimPaint:Landroid/graphics/Paint;

    .line 46
    .line 47
    iget v3, p0, Lcom/android/systemui/FaceScanningOverlay;->faceScanningAnimColor:I

    .line 48
    .line 49
    iget-object v4, p0, Lcom/android/systemui/FaceScanningOverlay;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 50
    .line 51
    invoke-interface {v4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const/4 v5, -0x1

    .line 56
    invoke-static {v4, v3, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(FII)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/systemui/FaceScanningOverlay;->rimPaint:Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/systemui/FaceScanningOverlay;->rimPaint:Landroid/graphics/Paint;

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iget v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    .line 74
    .line 75
    const/high16 v1, 0x3f000000    # 0.5f

    .line 76
    .line 77
    cmpl-float v0, v0, v1

    .line 78
    .line 79
    if-lez v0, :cond_2

    .line 80
    .line 81
    new-instance v0, Landroid/graphics/Path;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    .line 84
    .line 85
    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 86
    .line 87
    .line 88
    sget-object v1, Lcom/android/systemui/FaceScanningOverlay;->Companion:Lcom/android/systemui/FaceScanningOverlay$Companion;

    .line 89
    .line 90
    iget v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    .line 91
    .line 92
    invoke-static {v1, v0, v2}, Lcom/android/systemui/FaceScanningOverlay$Companion;->access$scalePath(Lcom/android/systemui/FaceScanningOverlay$Companion;Landroid/graphics/Path;F)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    .line 96
    .line 97
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    .line 103
    .line 104
    iget v2, p0, Lcom/android/systemui/FaceScanningOverlay;->cameraProtectionColor:I

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    .line 110
    .line 111
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6
    .line 7
    .line 8
    const-string v0, "FaceScanningOverlay:"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Lcom/android/systemui/DisplayCutoutBaseView;->dump(Ljava/io/PrintWriter;)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/android/systemui/FaceScanningOverlay;->rimProgress:F

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v2, "rimProgress="

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/FaceScanningOverlay;->rimRect:Landroid/graphics/RectF;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string/jumbo v2, "rimRect="

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string/jumbo v1, "this="

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final enableShowProtection(Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/FaceScanningOverlay;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    iget-object v2, v0, Lcom/android/systemui/FaceScanningOverlay;->authController:Lcom/android/systemui/biometrics/AuthController;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/android/systemui/biometrics/AuthController;->isShowing()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v4

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    move v2, v3

    .line 27
    :goto_1
    if-eqz v2, :cond_2

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    move v2, v3

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v2, v4

    .line 34
    :goto_2
    iget-boolean v5, v0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    .line 35
    .line 36
    if-ne v2, v5, :cond_3

    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    iget-object v5, v0, Lcom/android/systemui/FaceScanningOverlay;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    .line 40
    .line 41
    iget-object v6, v0, Lcom/android/systemui/FaceScanningOverlay;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 42
    .line 43
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    iget-object v7, v0, Lcom/android/systemui/FaceScanningOverlay;->authController:Lcom/android/systemui/biometrics/AuthController;

    .line 48
    .line 49
    invoke-virtual {v7}, Lcom/android/systemui/biometrics/AuthController;->isShowing()Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    iget-boolean v8, v0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    .line 54
    .line 55
    invoke-virtual {v5, v6, v7, v1, v8}, Lcom/android/systemui/log/ScreenDecorationsLogger;->cameraProtectionShownOrHidden(ZZZZ)V

    .line 56
    .line 57
    .line 58
    iput-boolean v2, v0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    .line 59
    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/FaceScanningOverlay;->updateProtectionBoundingPath()V

    .line 61
    .line 62
    .line 63
    iget-boolean v1, v0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/FaceScanningOverlay;->cameraProtectionAnimator:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 78
    .line 79
    .line 80
    :cond_5
    const/4 v1, 0x2

    .line 81
    new-array v5, v1, [F

    .line 82
    .line 83
    iget v6, v0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    .line 84
    .line 85
    aput v6, v5, v4

    .line 86
    .line 87
    const/high16 v6, 0x3f800000    # 1.0f

    .line 88
    .line 89
    if-eqz v2, :cond_6

    .line 90
    .line 91
    move v2, v6

    .line 92
    goto :goto_3

    .line 93
    :cond_6
    const/high16 v2, 0x3f000000    # 0.5f

    .line 94
    .line 95
    :goto_3
    aput v2, v5, v3

    .line 96
    .line 97
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget-boolean v3, v0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    .line 102
    .line 103
    const-wide/16 v7, 0x190

    .line 104
    .line 105
    if-eqz v3, :cond_7

    .line 106
    .line 107
    const-wide/16 v11, 0x0

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_7
    iget-boolean v3, v0, Lcom/android/systemui/FaceScanningOverlay;->faceAuthSucceeded:Z

    .line 111
    .line 112
    if-eqz v3, :cond_8

    .line 113
    .line 114
    move-wide v11, v7

    .line 115
    goto :goto_4

    .line 116
    :cond_8
    const-wide/16 v11, 0xc8

    .line 117
    .line 118
    :goto_4
    invoke-virtual {v2, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 119
    .line 120
    .line 121
    iget-boolean v3, v0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    .line 122
    .line 123
    const-wide/16 v11, 0x1f4

    .line 124
    .line 125
    const-wide/16 v13, 0xfa

    .line 126
    .line 127
    if-eqz v3, :cond_9

    .line 128
    .line 129
    move-wide v9, v13

    .line 130
    goto :goto_5

    .line 131
    :cond_9
    iget-boolean v3, v0, Lcom/android/systemui/FaceScanningOverlay;->faceAuthSucceeded:Z

    .line 132
    .line 133
    if-eqz v3, :cond_a

    .line 134
    .line 135
    move-wide v9, v11

    .line 136
    goto :goto_5

    .line 137
    :cond_a
    const-wide/16 v15, 0x12c

    .line 138
    .line 139
    move-wide v9, v15

    .line 140
    :goto_5
    invoke-virtual {v2, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 141
    .line 142
    .line 143
    iget-boolean v3, v0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    .line 144
    .line 145
    if-eqz v3, :cond_b

    .line 146
    .line 147
    sget-object v3, Lcom/android/app/animation/Interpolators;->STANDARD_ACCELERATE:Landroid/view/animation/Interpolator;

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_b
    iget-boolean v3, v0, Lcom/android/systemui/FaceScanningOverlay;->faceAuthSucceeded:Z

    .line 151
    .line 152
    if-eqz v3, :cond_c

    .line 153
    .line 154
    sget-object v3, Lcom/android/app/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_c
    sget-object v3, Lcom/android/app/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    .line 158
    .line 159
    :goto_6
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    .line 161
    .line 162
    new-instance v3, Lcom/android/systemui/FaceScanningOverlay$enableShowProtection$1$1;

    .line 163
    .line 164
    invoke-direct {v3, v0}, Lcom/android/systemui/FaceScanningOverlay$enableShowProtection$1$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 168
    .line 169
    .line 170
    new-instance v3, Lcom/android/systemui/FaceScanningOverlay$enableShowProtection$1$2;

    .line 171
    .line 172
    invoke-direct {v3, v0}, Lcom/android/systemui/FaceScanningOverlay$enableShowProtection$1$2;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 176
    .line 177
    .line 178
    iput-object v2, v0, Lcom/android/systemui/FaceScanningOverlay;->cameraProtectionAnimator:Landroid/animation/ValueAnimator;

    .line 179
    .line 180
    iget-object v2, v0, Lcom/android/systemui/FaceScanningOverlay;->rimAnimator:Landroid/animation/AnimatorSet;

    .line 181
    .line 182
    if-eqz v2, :cond_d

    .line 183
    .line 184
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 185
    .line 186
    .line 187
    :cond_d
    iget-boolean v2, v0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    .line 188
    .line 189
    if-eqz v2, :cond_e

    .line 190
    .line 191
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 192
    .line 193
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-object v3, v0, Lcom/android/systemui/FaceScanningOverlay;->cameraProtectionAnimator:Landroid/animation/ValueAnimator;

    .line 197
    .line 198
    new-array v4, v1, [F

    .line 199
    .line 200
    fill-array-data v4, :array_0

    .line 201
    .line 202
    .line 203
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v4, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 208
    .line 209
    .line 210
    sget-object v5, Lcom/android/app/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    .line 211
    .line 212
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 213
    .line 214
    .line 215
    new-instance v5, Lcom/android/systemui/FaceScanningOverlay$createRimAppearAnimator$1$1;

    .line 216
    .line 217
    invoke-direct {v5, v0}, Lcom/android/systemui/FaceScanningOverlay$createRimAppearAnimator$1$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 221
    .line 222
    .line 223
    new-array v5, v1, [F

    .line 224
    .line 225
    fill-array-data v5, :array_1

    .line 226
    .line 227
    .line 228
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 233
    .line 234
    .line 235
    sget-object v6, Lcom/android/app/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    .line 236
    .line 237
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    .line 239
    .line 240
    const/16 v6, 0xb

    .line 241
    .line 242
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 246
    .line 247
    .line 248
    new-instance v1, Lcom/android/systemui/FaceScanningOverlay$createPulseAnimator$1$1;

    .line 249
    .line 250
    invoke-direct {v1, v0}, Lcom/android/systemui/FaceScanningOverlay$createPulseAnimator$1$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 254
    .line 255
    .line 256
    filled-new-array {v3, v4, v5}, [Landroid/animation/Animator;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 261
    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_e
    iget-boolean v1, v0, Lcom/android/systemui/FaceScanningOverlay;->faceAuthSucceeded:Z

    .line 265
    .line 266
    if-eqz v1, :cond_f

    .line 267
    .line 268
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 269
    .line 270
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 271
    .line 272
    .line 273
    sget-object v2, Lcom/android/app/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    .line 274
    .line 275
    const/high16 v3, 0x3fa00000    # 1.25f

    .line 276
    .line 277
    invoke-virtual {v0, v3, v7, v8, v2}, Lcom/android/systemui/FaceScanningOverlay;->createRimDisappearAnimator(FJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    const/16 v3, 0xff

    .line 282
    .line 283
    filled-new-array {v3, v4}, [I

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 292
    .line 293
    .line 294
    sget-object v4, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 295
    .line 296
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 297
    .line 298
    .line 299
    new-instance v4, Lcom/android/systemui/FaceScanningOverlay$createSuccessOpacityAnimator$1$1;

    .line 300
    .line 301
    invoke-direct {v4, v0}, Lcom/android/systemui/FaceScanningOverlay$createSuccessOpacityAnimator$1$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 305
    .line 306
    .line 307
    new-instance v4, Lcom/android/systemui/FaceScanningOverlay$createSuccessOpacityAnimator$1$2;

    .line 308
    .line 309
    invoke-direct {v4, v0}, Lcom/android/systemui/FaceScanningOverlay$createSuccessOpacityAnimator$1$2;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 313
    .line 314
    .line 315
    filled-new-array {v2, v3}, [Landroid/animation/Animator;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 320
    .line 321
    .line 322
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 323
    .line 324
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 325
    .line 326
    .line 327
    iget-object v3, v0, Lcom/android/systemui/FaceScanningOverlay;->cameraProtectionAnimator:Landroid/animation/ValueAnimator;

    .line 328
    .line 329
    filled-new-array {v1, v3}, [Landroid/animation/Animator;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 334
    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_f
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 338
    .line 339
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 340
    .line 341
    .line 342
    sget-object v1, Lcom/android/app/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    .line 343
    .line 344
    const-wide/16 v3, 0xc8

    .line 345
    .line 346
    invoke-virtual {v0, v6, v3, v4, v1}, Lcom/android/systemui/FaceScanningOverlay;->createRimDisappearAnimator(FJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    iget-object v3, v0, Lcom/android/systemui/FaceScanningOverlay;->cameraProtectionAnimator:Landroid/animation/ValueAnimator;

    .line 351
    .line 352
    filled-new-array {v1, v3}, [Landroid/animation/Animator;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 357
    .line 358
    .line 359
    :goto_7
    iput-object v2, v0, Lcom/android/systemui/FaceScanningOverlay;->rimAnimator:Landroid/animation/AnimatorSet;

    .line 360
    .line 361
    new-instance v1, Lcom/android/systemui/FaceScanningOverlay$enableShowProtection$2$1;

    .line 362
    .line 363
    invoke-direct {v1, v0}, Lcom/android/systemui/FaceScanningOverlay$enableShowProtection$2$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 367
    .line 368
    .line 369
    iget-object v0, v0, Lcom/android/systemui/FaceScanningOverlay;->rimAnimator:Landroid/animation/AnimatorSet;

    .line 370
    .line 371
    if-eqz v0, :cond_10

    .line 372
    .line 373
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 374
    .line 375
    .line 376
    :cond_10
    return-void

    .line 377
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f900000    # 1.125f
    .end array-data

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_1
    .array-data 4
        0x3f900000    # 1.125f
        0x3f8ccccd    # 1.1f
    .end array-data
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/FaceScanningOverlay;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    new-instance v1, Lcom/android/systemui/FaceScanningOverlay$onAttachedToWindow$1;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/android/systemui/FaceScanningOverlay$onAttachedToWindow$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/FaceScanningOverlay;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    new-instance v1, Lcom/android/systemui/FaceScanningOverlay$onDetachedFromWindow$1;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/android/systemui/FaceScanningOverlay$onDetachedFromWindow$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->onMeasure(II)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->mBoundingRect:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/systemui/FaceScanningOverlay;->rimRect:Landroid/graphics/RectF;

    .line 30
    .line 31
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 32
    .line 33
    float-to-int v3, v3

    .line 34
    iget v4, v2, Landroid/graphics/RectF;->top:F

    .line 35
    .line 36
    float-to-int v4, v4

    .line 37
    iget v5, v2, Landroid/graphics/RectF;->right:F

    .line 38
    .line 39
    float-to-int v5, v5

    .line 40
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 41
    .line 42
    float-to-int v2, v2

    .line 43
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-static {v2, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object v2, p0, Lcom/android/systemui/FaceScanningOverlay;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/android/systemui/FaceScanningOverlay;->rimRect:Landroid/graphics/RectF;

    .line 69
    .line 70
    const-string/jumbo v4, "onMeasure: Face scanning animation"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/log/ScreenDecorationsLogger;->boundingRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/systemui/FaceScanningOverlay;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    .line 77
    .line 78
    iget-object v3, p0, Lcom/android/systemui/DisplayCutoutBaseView;->mBoundingRect:Landroid/graphics/Rect;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v4, Landroid/graphics/RectF;

    .line 84
    .line 85
    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 86
    .line 87
    .line 88
    const-string/jumbo v3, "onMeasure: Display cutout view bounding rect"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/log/ScreenDecorationsLogger;->boundingRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/android/systemui/FaceScanningOverlay;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    .line 95
    .line 96
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v4, Landroid/graphics/RectF;

    .line 102
    .line 103
    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 104
    .line 105
    .line 106
    const-string/jumbo v3, "onMeasure: TotalBounds"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/log/ScreenDecorationsLogger;->boundingRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lcom/android/systemui/FaceScanningOverlay;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    .line 113
    .line 114
    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/systemui/log/ScreenDecorationsLogger;->onMeasureDimensions(IIII)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->mBoundingRect:Landroid/graphics/Rect;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->mBoundingRect:Landroid/graphics/Rect;

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 142
    .line 143
    .line 144
    :goto_0
    return-void
.end method

.method public final setColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/FaceScanningOverlay;->cameraProtectionColor:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateProtectionBoundingPath()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->updateProtectionBoundingPath()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/FaceScanningOverlay;->rimRect:Landroid/graphics/RectF;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/FaceScanningOverlay;->rimRect:Landroid/graphics/RectF;

    .line 12
    .line 13
    iget p0, p0, Lcom/android/systemui/FaceScanningOverlay;->rimProgress:F

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->scale(F)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
