.class public final Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic $navBarHiddenCallback:Ljava/util/function/Consumer;

.field public final synthetic $setHardKeyStateCallback:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;->$navBarHiddenCallback:Ljava/util/function/Consumer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;->$setHardKeyStateCallback:Ljava/util/function/Consumer;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSetHardKeyIntentState(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;->$setHardKeyStateCallback:Ljava/util/function/Consumer;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onUpdateNavigationBarHidden()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;->$navBarHiddenCallback:Ljava/util/function/Consumer;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
