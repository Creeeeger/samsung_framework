.class public final Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final context:Landroid/content/Context;

.field public currentHintId:I

.field public gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

.field public final handler:Landroid/os/Handler;

.field public final hintList:Ljava/util/List;

.field public holdingViAnimator:Landroid/animation/AnimatorSet;

.field public homeHandle:Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

.field public isCanMove:Z

.field public final navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public navigationMode:I

.field public final navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->context:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p2, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->handler:Landroid/os/Handler;

    .line 16
    .line 17
    const-class p2, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 18
    .line 19
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 36
    .line 37
    const-class p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 p2, 0x1

    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const/4 v0, 0x2

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    filled-new-array {p1, p2, v0}, [Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->hintList:Ljava/util/List;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final getHintView(I)Landroid/view/View;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationMode:I

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->INSTANCE:Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->homeHandle:Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 19
    .line 20
    :cond_1
    return-object v2

    .line 21
    :cond_2
    invoke-static {v0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    .line 28
    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->hintGroup:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 40
    .line 41
    :cond_3
    return-object v2
.end method

.method public final onNavigationModeChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationMode:I

    .line 2
    .line 3
    return-void
.end method
