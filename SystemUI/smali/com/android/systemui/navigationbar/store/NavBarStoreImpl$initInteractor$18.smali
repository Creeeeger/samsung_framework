.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$18;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$18;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$18;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 25
    .line 26
    iget v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->lastTaskUserId:I

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-eq p1, v2, :cond_0

    .line 30
    .line 31
    move v2, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v2, v1

    .line 34
    :goto_0
    iput p1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->lastTaskUserId:I

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v3, v1

    .line 40
    :goto_1
    if-eqz v3, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$18;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    .line 45
    .line 46
    const-string v0, "Force update provided inset because Task\'s userId was changed."

    .line 47
    .line 48
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$18;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 52
    .line 53
    const-class p1, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 54
    .line 55
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 60
    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateNavBarLayoutParams()V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method
