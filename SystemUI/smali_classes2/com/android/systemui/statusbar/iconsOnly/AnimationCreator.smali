.class public final Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mController:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$1;

    .line 5
    .line 6
    const-string/jumbo v1, "updateDetailedCardScale"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$1;-><init>(Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;->mController:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 13
    .line 14
    return-void
.end method
