.class public Lcom/android/systemui/searcle/SearcleTipPopup$BaseAnimatorListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleTipPopup;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    sget p0, Lcom/android/systemui/searcle/SearcleTipPopup;->INIT_SCALE:F

    .line 2
    .line 3
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    sget p0, Lcom/android/systemui/searcle/SearcleTipPopup;->INIT_SCALE:F

    .line 2
    .line 3
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    sget p0, Lcom/android/systemui/searcle/SearcleTipPopup;->INIT_SCALE:F

    .line 2
    .line 3
    return-void
.end method
