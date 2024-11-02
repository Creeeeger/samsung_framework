.class public final Lcom/android/systemui/keyguard/animator/PivotViewController$12;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/PivotViewController$12;->this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController$12;->this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    .line 15
    .line 16
    iget-boolean v1, v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mLockStarEnabled:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget v1, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->affordancePivotY:I

    .line 25
    .line 26
    int-to-float v2, v1

    .line 27
    cmpg-float p1, p1, v2

    .line 28
    .line 29
    if-gez p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    neg-int p0, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget v1, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->affordancePivotY:I

    .line 57
    .line 58
    int-to-float v2, v1

    .line 59
    cmpg-float p1, p1, v2

    .line 60
    .line 61
    if-gez p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    :goto_0
    sub-int p0, v1, p0

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget p0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->affordancePivotY:I

    .line 75
    .line 76
    neg-int p0, p0

    .line 77
    :goto_1
    int-to-float p0, p0

    .line 78
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
