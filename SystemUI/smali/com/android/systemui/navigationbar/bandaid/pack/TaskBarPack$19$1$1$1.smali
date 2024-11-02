.class public final Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$19$1$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $this_run:Lcom/android/systemui/navigationbar/bandaid/Band$Kit;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$19$1$1$1;->$this_run:Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->updateNavbarForTaskbar()Z

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$19$1$1$1;->$this_run:Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutChangedBeforeAttached:Z

    .line 20
    .line 21
    return-void
.end method
