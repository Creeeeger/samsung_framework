.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$13$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$13$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$13$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$13$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$13$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$13$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarSidePadding;

    .line 6
    .line 7
    sget v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->$r8$clinit:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isSideAndBottomGestureMode(Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarSidePadding;->landscape:Z

    .line 17
    .line 18
    iget-object v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 28
    .line 29
    invoke-interface {v1, v2, p0, v0}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getSpaceSidePadding(Landroid/graphics/Point;ZZ)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v0, "getNavBarSidePadding"

    .line 38
    .line 39
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method
