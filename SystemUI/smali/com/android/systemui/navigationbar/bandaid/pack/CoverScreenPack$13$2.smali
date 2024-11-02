.class public final Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$2;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$2;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    .line 4
    .line 5
    iget p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isCoverDisplayNavBarEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/os/Handler;

    .line 31
    .line 32
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$2$1$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$2$1$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v1, 0xfa

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
