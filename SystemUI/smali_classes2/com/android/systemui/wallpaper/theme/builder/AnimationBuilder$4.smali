.class public final Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$4;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$4;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget v2, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->a:F

    .line 6
    .line 7
    iget v3, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->ra:F

    .line 8
    .line 9
    iget v4, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 10
    .line 11
    iget v0, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 12
    .line 13
    sub-float/2addr v0, v4

    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    mul-float/2addr v5, v0

    .line 19
    add-float/2addr v5, v4

    .line 20
    float-to-double v4, v5

    .line 21
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    double-to-float v0, v4

    .line 26
    mul-float/2addr v3, v0

    .line 27
    add-float/2addr v3, v2

    .line 28
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$4;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    .line 34
    .line 35
    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->b:F

    .line 36
    .line 37
    iget v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->rb:F

    .line 38
    .line 39
    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 40
    .line 41
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 42
    .line 43
    sub-float/2addr p0, v3

    .line 44
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    mul-float/2addr p1, p0

    .line 49
    add-float/2addr p1, v3

    .line 50
    float-to-double p0, p1

    .line 51
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    .line 52
    .line 53
    .line 54
    move-result-wide p0

    .line 55
    double-to-float p0, p0

    .line 56
    mul-float/2addr v2, p0

    .line 57
    add-float/2addr v2, v1

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
