.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$show$$inlined$doOnStart$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$show$$inlined$doOnStart$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$show$$inlined$doOnStart$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$show$$inlined$doOnStart$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->access$show$s2046749032(Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
