.class public final Lcom/android/systemui/edgelighting/effect/view/MorphView$7;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$7;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

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
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    new-array v0, v0, [F

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    aput p1, v0, v1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    aput p1, v0, v1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    aput p1, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    aput p1, v0, v1

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    aput p1, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    aput p1, v0, v1

    .line 32
    .line 33
    const/4 v1, 0x6

    .line 34
    aput p1, v0, v1

    .line 35
    .line 36
    const/4 v1, 0x7

    .line 37
    aput p1, v0, v1

    .line 38
    .line 39
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    .line 40
    .line 41
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-direct {v1, v0, v2, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$7;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const v2, 0x7f06043d

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$7;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
