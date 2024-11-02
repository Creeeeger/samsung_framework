.class public final Lcom/android/systemui/privacy/television/TvPrivacyChipsController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$1;->this$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTransitionEnd(Landroid/transition/Transition;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$1;->this$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChips:Ljava/util/List;

    .line 4
    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    check-cast p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_5

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/android/systemui/privacy/television/PrivacyItemsChip;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    move v1, v0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    :goto_1
    move v1, v4

    .line 41
    :goto_2
    if-nez v2, :cond_4

    .line 42
    .line 43
    iget v2, v3, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 44
    .line 45
    if-ne v2, v4, :cond_2

    .line 46
    .line 47
    move v2, v4

    .line 48
    goto :goto_3

    .line 49
    :cond_2
    move v2, v0

    .line 50
    :goto_3
    if-eqz v2, :cond_3

    .line 51
    .line 52
    goto :goto_4

    .line 53
    :cond_3
    move v2, v0

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    :goto_4
    move v2, v4

    .line 56
    goto :goto_0

    .line 57
    :cond_5
    if-nez v1, :cond_6

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$1;->this$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->removeIndicatorView()V

    .line 62
    .line 63
    .line 64
    goto :goto_5

    .line 65
    :cond_6
    if-eqz v2, :cond_7

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$1;->this$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;

    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mUiThreadHandler:Landroid/os/Handler;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mCollapseRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v0, 0xfa0

    .line 77
    .line 78
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    .line 80
    .line 81
    :cond_7
    :goto_5
    return-void
.end method

.method public final onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    return-void
.end method
