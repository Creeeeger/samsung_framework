.class public final Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$7$1;
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
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$7$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

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
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$7$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ReevaluateNavBar;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v0, v1, v2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ReevaluateNavBar;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 15
    .line 16
    .line 17
    return-object p0
.end method
