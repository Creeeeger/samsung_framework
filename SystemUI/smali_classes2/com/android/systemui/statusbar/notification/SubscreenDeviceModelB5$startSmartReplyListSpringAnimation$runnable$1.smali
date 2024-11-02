.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startSmartReplyListSpringAnimation$runnable$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $childView:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $spring:Landroidx/dynamicanimation/animation/SpringForce;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/dynamicanimation/animation/SpringForce;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/dynamicanimation/animation/SpringForce;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startSmartReplyListSpringAnimation$runnable$1;->$childView:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startSmartReplyListSpringAnimation$runnable$1;->$spring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startSmartReplyListSpringAnimation$runnable$1;->$childView:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 6
    .line 7
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startSmartReplyListSpringAnimation$runnable$1;->$spring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 13
    .line 14
    iput-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startSmartReplyListSpringAnimation$runnable$1;->$childView:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 22
    .line 23
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 24
    .line 25
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startSmartReplyListSpringAnimation$runnable$1;->$spring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 31
    .line 32
    iput-object p0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
