.class public final synthetic Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Float;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;->mController:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 17
    .line 18
    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDetailedCardScale:F

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 28
    .line 29
    iget p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDetailedCardScale:F

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
