.class public final Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;
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
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget v2, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dx:F

    .line 6
    .line 7
    iget v0, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 8
    .line 9
    add-float/2addr v2, v0

    .line 10
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 15
    .line 16
    iget v4, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 17
    .line 18
    iget v3, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 19
    .line 20
    sub-float/2addr v4, v3

    .line 21
    mul-float/2addr v4, v0

    .line 22
    sub-float/2addr v2, v4

    .line 23
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    .line 29
    .line 30
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dy:F

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Float;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    add-float/2addr p1, p0

    .line 43
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setY(F)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
