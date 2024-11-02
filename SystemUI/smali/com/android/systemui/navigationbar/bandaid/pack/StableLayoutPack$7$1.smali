.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$7$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$7$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$7$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$7$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$7$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$7$1;

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
    iget-object p0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isBottomGestureMode(Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isNavBarButtonOrderDefault()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    xor-int/2addr p1, v2

    .line 30
    invoke-interface {v1, v0, p1}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getGesturalLayout(ZZ)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "getGesturalLayout"

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->getDefaultLayout()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    return-object p1
.end method
