.class public final Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/LightRevealEffect;


# instance fields
.field public centerX:F

.field public centerY:F

.field public final endRadius:F

.field public final startRadius:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerX:F

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerY:F

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->startRadius:F

    .line 9
    .line 10
    iput p4, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->endRadius:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final setRevealAmountOnScrim(FLcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->Companion:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->SEC_LIGHT_REVEAL_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sget-object v1, Lcom/android/systemui/statusbar/LightRevealEffect;->Companion:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/high16 v1, 0x3f000000    # 0.5f

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;->getPercentPastThreshold(FF)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->endRadius:F

    .line 24
    .line 25
    iget v2, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->startRadius:F

    .line 26
    .line 27
    invoke-static {v1, v2, p1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/high16 v2, 0x3f800000    # 1.0f

    .line 32
    .line 33
    sub-float v0, v2, v0

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientEndColorAlpha(F)V

    .line 36
    .line 37
    .line 38
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sub-float/2addr v2, p1

    .line 43
    iget p1, p2, Lcom/android/systemui/statusbar/LightRevealScrim;->revealDimGradientEndColorAlpha:F

    .line 44
    .line 45
    cmpg-float p1, p1, v2

    .line 46
    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p1, 0x0

    .line 52
    :goto_0
    if-nez p1, :cond_1

    .line 53
    .line 54
    iput v2, p2, Lcom/android/systemui/statusbar/LightRevealScrim;->revealDimGradientEndColorAlpha:F

    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/LightRevealScrim;->setPaintColorFilter()V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerX:F

    .line 60
    .line 61
    sub-float v0, p1, v1

    .line 62
    .line 63
    iget p0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerY:F

    .line 64
    .line 65
    sub-float v2, p0, v1

    .line 66
    .line 67
    add-float/2addr p1, v1

    .line 68
    add-float/2addr p0, v1

    .line 69
    invoke-virtual {p2, v0, v2, p1, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientBounds(FFFF)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
