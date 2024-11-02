.class public final Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public final adjust:F

.field public final key:F

.field public final pX:F

.field public final pY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;->key:F

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;->adjust:F

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;->pX:F

    .line 9
    .line 10
    iput p4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;->pY:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    check-cast p3, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    sub-float/2addr p3, p2

    .line 14
    mul-float/2addr p3, p1

    .line 15
    add-float/2addr p3, p2

    .line 16
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;->pX:F

    .line 17
    .line 18
    add-float/2addr p3, p1

    .line 19
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;->key:F

    .line 20
    .line 21
    iget p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;->adjust:F

    .line 22
    .line 23
    float-to-double v0, p2

    .line 24
    float-to-double p2, p3

    .line 25
    mul-double/2addr v0, p2

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide p2

    .line 30
    double-to-float p2, p2

    .line 31
    mul-float/2addr p1, p2

    .line 32
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;->pY:F

    .line 33
    .line 34
    add-float/2addr p1, p0

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
