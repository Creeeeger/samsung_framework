.class public final Lcom/android/systemui/edgelighting/effect/view/MorphView$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 14

    .line 1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 4
    .line 5
    iget v0, v0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    .line 6
    .line 7
    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->isEmptyTickerText()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTextRootLayout:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    const/16 v0, 0x8

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 35
    .line 36
    const-wide/16 v4, 0x1c2

    .line 37
    .line 38
    const-wide/16 v6, 0x12c

    .line 39
    .line 40
    iget v2, v1, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    .line 41
    .line 42
    iget v3, v1, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMaxWidth:I

    .line 43
    .line 44
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->changeNotificationWidth(IIJJ)V

    .line 45
    .line 46
    .line 47
    iget-object v8, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 48
    .line 49
    const/high16 v9, 0x3f800000    # 1.0f

    .line 50
    .line 51
    const-wide/16 v10, 0x258

    .line 52
    .line 53
    const-wide/16 v12, 0xfa

    .line 54
    .line 55
    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->changeNotiText(FJJ)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
