.class public final Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$3$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$3$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

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
    .locals 5

    .line 1
    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$3$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    .line 4
    .line 5
    iget v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 11
    .line 12
    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 13
    .line 14
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 15
    .line 16
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 21
    .line 22
    iget v3, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->coverWindowState:I

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    invoke-virtual {v2, v0, v4, v3}, Lcom/android/systemui/navigationbar/NavigationBar;->setWindowState(III)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v2, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityGestureHandler:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    .line 31
    .line 32
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isAttached:Z

    .line 33
    .line 34
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->tag:Ljava/lang/String;

    .line 35
    .line 36
    const-string/jumbo v2, "onNavBarAttached"

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->updateIsEnabled()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isLargeCoverScreenSyncEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isLargeCoverTaskEnabled()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/16 v0, 0x8

    .line 62
    .line 63
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->access$updateLargeCoverNavBarVisibility(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;Lcom/android/systemui/navigationbar/bandaid/Band$Kit;I)V

    .line 64
    .line 65
    .line 66
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p0
.end method
