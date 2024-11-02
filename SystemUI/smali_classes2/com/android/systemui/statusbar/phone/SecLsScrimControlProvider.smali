.class public final Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBehindScrimSupplier:Ljava/util/function/Supplier;

.field public final mDispatchBackScrimStateConsumer:Ljava/util/function/Consumer;

.field public final mFrontScrimSupplier:Ljava/util/function/Supplier;

.field public final mKeyguardOccludedSupplier:Ljava/util/function/Supplier;

.field public final mNotificationsScrimSupplier:Ljava/util/function/Supplier;

.field public final mUpdateScrimsRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/scrim/ScrimView;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/scrim/ScrimView;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/scrim/ScrimView;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mNotificationsScrimSupplier:Ljava/util/function/Supplier;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mBehindScrimSupplier:Ljava/util/function/Supplier;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mFrontScrimSupplier:Ljava/util/function/Supplier;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mKeyguardOccludedSupplier:Ljava/util/function/Supplier;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mUpdateScrimsRunnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mDispatchBackScrimStateConsumer:Ljava/util/function/Consumer;

    .line 15
    .line 16
    return-void
.end method
