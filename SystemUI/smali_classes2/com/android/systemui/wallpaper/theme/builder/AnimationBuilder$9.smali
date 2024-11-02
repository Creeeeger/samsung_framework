.class public final Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$9;
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
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$9;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

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
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$9;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget v0, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$9;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 12
    .line 13
    iget v4, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 14
    .line 15
    iget v3, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 16
    .line 17
    sub-float/2addr v4, v3

    .line 18
    mul-float/2addr v4, v2

    .line 19
    add-float/2addr v4, v0

    .line 20
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$9;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Float;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setX(F)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
