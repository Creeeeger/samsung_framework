.class public final Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final applyConsumer:Ljava/util/function/Consumer;

.field public final currentWindowStateSupplier:Ljava/util/function/Supplier;

.field public final isDebuggableSupplier:Ljava/util/function/BooleanSupplier;

.field public final isExpandedPredicate:Ljava/util/function/Predicate;

.field public final lpChangedSupplier:Ljava/util/function/Supplier;

.field public final lpSupplier:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Predicate;Ljava/util/function/BooleanSupplier;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/shade/NotificationShadeWindowState;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shade/NotificationShadeWindowState;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->currentWindowStateSupplier:Ljava/util/function/Supplier;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->lpChangedSupplier:Ljava/util/function/Supplier;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->lpSupplier:Ljava/util/function/Supplier;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->isExpandedPredicate:Ljava/util/function/Predicate;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->isDebuggableSupplier:Ljava/util/function/BooleanSupplier;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->applyConsumer:Ljava/util/function/Consumer;

    .line 15
    .line 16
    return-void
.end method
