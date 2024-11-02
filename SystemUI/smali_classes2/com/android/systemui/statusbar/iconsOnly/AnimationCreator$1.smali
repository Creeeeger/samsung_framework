.class public final Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 2
    .line 3
    iget p0, p1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDetailedCardScale:F

    .line 4
    .line 5
    return p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 2
    .line 3
    iput p2, p1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDetailedCardScale:F

    .line 4
    .line 5
    iget-object p0, p1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 13
    .line 14
    iget p1, p1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDetailedCardScale:F

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
