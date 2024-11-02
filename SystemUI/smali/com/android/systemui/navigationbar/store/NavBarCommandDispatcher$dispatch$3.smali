.class public final Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $displayId:I

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;->this$0:Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;->$displayId:I

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;->this$0:Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;->$displayId:I

    .line 6
    .line 7
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 8
    .line 9
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 20
    .line 21
    iget v1, v1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->repositionNavigationBar(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;->this$0:Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 29
    .line 30
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 31
    .line 32
    iget v2, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;->$displayId:I

    .line 33
    .line 34
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIconsAndHints()V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;->this$0:Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 48
    .line 49
    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    .line 56
    .line 57
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 58
    .line 59
    const-class v1, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;

    .line 60
    .line 61
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
