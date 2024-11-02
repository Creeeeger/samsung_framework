.class public final Lcom/android/systemui/searcle/SearcleTipPopup$makeAnimator$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $animType:I

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/searcle/SearcleTipPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleTipPopup;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup$makeAnimator$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/searcle/SearcleTipPopup$makeAnimator$1;->$view:Landroid/view/View;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/systemui/searcle/SearcleTipPopup$makeAnimator$1;->$animType:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup$makeAnimator$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/searcle/SearcleTipPopup$makeAnimator$1;->$view:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Float;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget p0, p0, Lcom/android/systemui/searcle/SearcleTipPopup$makeAnimator$1;->$animType:I

    .line 16
    .line 17
    sget v2, Lcom/android/systemui/searcle/SearcleTipPopup;->INIT_SCALE:F

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p0, v1}, Lcom/android/systemui/searcle/SearcleTipPopup;->updateProperty(FILandroid/view/View;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
