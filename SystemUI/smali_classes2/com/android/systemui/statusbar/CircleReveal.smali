.class public final Lcom/android/systemui/statusbar/CircleReveal;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/LightRevealEffect;


# instance fields
.field public final centerX:I

.field public final centerY:I

.field public final endRadius:I

.field public final startRadius:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerX:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerY:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/statusbar/CircleReveal;->startRadius:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/systemui/statusbar/CircleReveal;->endRadius:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final setRevealAmountOnScrim(FLcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/LightRevealEffect;->Companion:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;->getPercentPastThreshold(FF)F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lcom/android/systemui/statusbar/CircleReveal;->startRadius:I

    .line 13
    .line 14
    int-to-float v2, v1

    .line 15
    iget v3, p0, Lcom/android/systemui/statusbar/CircleReveal;->endRadius:I

    .line 16
    .line 17
    sub-int/2addr v3, v1

    .line 18
    int-to-float v1, v3

    .line 19
    mul-float/2addr v1, p1

    .line 20
    add-float/2addr v1, v2

    .line 21
    iput p1, p2, Lcom/android/systemui/statusbar/LightRevealScrim;->interpolatedRevealAmount:F

    .line 22
    .line 23
    const/high16 p1, 0x3f800000    # 1.0f

    .line 24
    .line 25
    sub-float/2addr p1, v0

    .line 26
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientEndColorAlpha(F)V

    .line 27
    .line 28
    .line 29
    iget p1, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerX:I

    .line 30
    .line 31
    int-to-float p1, p1

    .line 32
    sub-float v0, p1, v1

    .line 33
    .line 34
    iget p0, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerY:I

    .line 35
    .line 36
    int-to-float p0, p0

    .line 37
    sub-float v2, p0, v1

    .line 38
    .line 39
    add-float/2addr p1, v1

    .line 40
    add-float/2addr p0, v1

    .line 41
    invoke-virtual {p2, v0, v2, p1, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientBounds(FFFF)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
