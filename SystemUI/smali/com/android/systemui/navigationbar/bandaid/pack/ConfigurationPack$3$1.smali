.class public final Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$3$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$3$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$3$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 4
    .line 5
    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 6
    .line 7
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 8
    .line 9
    iget v1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutChangedBeforeAttached:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ReinflateNavBar;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v0, v2, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ReinflateNavBar;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarIconAndHints;

    .line 35
    .line 36
    invoke-direct {v0, v2, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarIconAndHints;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 40
    .line 41
    .line 42
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p0
.end method
