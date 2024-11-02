.class public final Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$11$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$11$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;

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
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$11$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    .line 6
    .line 7
    check-cast v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnPackageRemoved;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 10
    .line 11
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 12
    .line 13
    const-class v1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 14
    .line 15
    iget v2, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    .line 16
    .line 17
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    :goto_0
    if-eqz v1, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnPackageRemoved;->packageName:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    .line 48
    .line 49
    new-instance v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$removeIf$1;

    .line 50
    .line 51
    invoke-direct {v3, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$removeIf$1;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->removeIf(Ljava/util/function/Predicate;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iget-object v3, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    .line 59
    .line 60
    new-instance v4, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$removeIf$2;

    .line 61
    .line 62
    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$removeIf$2;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/util/PriorityQueue;->removeIf(Ljava/util/function/Predicate;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    or-int/2addr v0, v1

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 73
    .line 74
    iget p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftContainer:Landroid/widget/LinearLayout;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightContainer:Landroid/widget/LinearLayout;

    .line 79
    .line 80
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->updateRemoteViewContainer(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p0
.end method
