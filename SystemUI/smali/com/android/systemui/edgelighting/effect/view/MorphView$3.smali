.class public final Lcom/android/systemui/edgelighting/effect/view/MorphView$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

.field public final synthetic val$value:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$3;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$3;->val$value:F

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$3;->val$value:F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    cmpl-float p1, p1, v0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$3;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextRootLayout:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const/16 p1, 0x8

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$3;->val$value:F

    .line 2
    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    .line 5
    cmpl-float p1, p1, v0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$3;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextRootLayout:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$3;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextRootLayout:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
