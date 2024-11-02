.class public final Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

.field public final synthetic val$fromScaleX:F

.field public final synthetic val$fromScaleY:F

.field public final synthetic val$toScaleX:F

.field public final synthetic val$toScaleY:F


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->val$fromScaleX:F

    .line 4
    .line 5
    iput p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->val$toScaleX:F

    .line 6
    .line 7
    iput p4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->val$fromScaleY:F

    .line 8
    .line 9
    iput p5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->val$toScaleY:F

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
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
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->val$fromScaleX:F

    .line 12
    .line 13
    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->val$toScaleX:F

    .line 14
    .line 15
    invoke-static {v1, v0, p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->val$fromScaleY:F

    .line 20
    .line 21
    iget v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->val$toScaleY:F

    .line 22
    .line 23
    invoke-static {v2, v1, p1, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidateOutline()V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$8;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidateOutline()V

    .line 67
    .line 68
    .line 69
    return-void
.end method
