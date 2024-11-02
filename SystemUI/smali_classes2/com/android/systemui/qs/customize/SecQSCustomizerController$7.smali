.class public final Lcom/android/systemui/qs/customize/SecQSCustomizerController$7;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$7;->val$view:Landroid/view/View;

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
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 8
    .line 9
    iget v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 10
    .line 11
    iget v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mPointX:F

    .line 12
    .line 13
    iget p1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mPointY:F

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v3, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$1;

    .line 19
    .line 20
    invoke-direct {v3, v0, v1, v2, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$1;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerBase;Landroid/view/View;FF)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Landroid/content/ClipDescription;

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    new-array v2, v1, [Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {p1, v0, v2}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Landroid/content/ClipData$Item;

    .line 34
    .line 35
    new-instance v2, Landroid/content/Intent;

    .line 36
    .line 37
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Landroid/content/ClipData;

    .line 44
    .line 45
    invoke-direct {v2, p1, v0}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 46
    .line 47
    .line 48
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$7;->val$view:Landroid/view/View;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    const v4, 0x100100

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 55
    .line 56
    .line 57
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    if-nez v1, :cond_0

    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 63
    .line 64
    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$7;->val$view:Landroid/view/View;

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$7;->val$view:Landroid/view/View;

    .line 76
    .line 77
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda2;

    .line 78
    .line 79
    const/4 v1, 0x3

    .line 80
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 81
    .line 82
    .line 83
    const-wide/16 v1, 0x64

    .line 84
    .line 85
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    .line 6
    .line 7
    const/16 p1, 0x8

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
