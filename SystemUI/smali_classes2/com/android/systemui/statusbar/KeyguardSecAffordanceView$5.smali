.class public final Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAnimator:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFling:Z

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->resetBlurRectangleView()V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->resetFakeWallpaperView()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
