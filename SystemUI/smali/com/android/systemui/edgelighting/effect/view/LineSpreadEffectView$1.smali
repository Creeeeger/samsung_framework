.class public final Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

.field public final synthetic val$index:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView$1;->this$0:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView$1;->val$index:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView$1;->this$0:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mPercentArr:[F

    .line 4
    .line 5
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView$1;->val$index:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    aput p1, v0, v1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView$1;->this$0:Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
