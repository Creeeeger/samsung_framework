.class public final Lcom/google/android/material/chip/SeslPeoplePicker$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/chip/SeslPeoplePicker;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/SeslPeoplePicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/SeslPeoplePicker$3;->this$0:Lcom/google/android/material/chip/SeslPeoplePicker;

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
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/chip/SeslPeoplePicker$3;->this$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, -0x2

    .line 13
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    .line 15
    iget-object p0, p0, Lcom/google/android/material/chip/SeslPeoplePicker$3;->this$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
