.class public Landroidx/picker/loader/select/AllAppsSelectableItem;
.super Landroidx/picker/loader/select/SelectableItem;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field private disposableHandle:Lkotlinx/coroutines/DisposableHandle;

.field private final selectableItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/picker/loader/select/SelectableItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FWZD9xyx02OJYktplnsuCckbAtk(Lkotlinx/coroutines/DisposableHandle;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/picker/loader/select/AllAppsSelectableItem;->bindSelectableItemList$lambda-4(Lkotlinx/coroutines/DisposableHandle;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/picker/loader/select/SelectableItem;",
            ">;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/picker/loader/select/SelectableItem;

    .line 5
    invoke-virtual {v2}, Landroidx/picker/loader/select/SelectableItem;->isSelected()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_2
    :goto_0
    new-instance v0, Landroidx/picker/features/observable/BooleanState;

    invoke-direct {v0, v1}, Landroidx/picker/features/observable/BooleanState;-><init>(Z)V

    invoke-direct {p0, v0, p2}, Landroidx/picker/loader/select/SelectableItem;-><init>(Landroidx/picker/features/observable/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    iput-object p2, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->selectableItemList:Ljava/util/List;

    .line 8
    invoke-direct {p0}, Landroidx/picker/loader/select/AllAppsSelectableItem;->bindSelectableItemList()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    sget-object p2, Landroidx/picker/loader/select/AllAppsSelectableItem$1;->INSTANCE:Landroidx/picker/loader/select/AllAppsSelectableItem$1;

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/picker/loader/select/AllAppsSelectableItem;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getSelectableItemList$p(Landroidx/picker/loader/select/AllAppsSelectableItem;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->selectableItemList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$updateAllAppsStatus(Landroidx/picker/loader/select/AllAppsSelectableItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/picker/loader/select/AllAppsSelectableItem;->updateAllAppsStatus()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final bindSelectableItemList()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Landroidx/picker/loader/select/AllAppsSelectableItem$bindSelectableItemList$disposable1$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/picker/loader/select/AllAppsSelectableItem$bindSelectableItemList$disposable1$1;-><init>(Landroidx/picker/loader/select/AllAppsSelectableItem;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/picker/loader/select/SelectableItem;->registerAfterChangeUpdateListener(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->selectableItemList:Ljava/util/List;

    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    const/16 v3, 0xa

    .line 22
    .line 23
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroidx/picker/loader/select/SelectableItem;

    .line 45
    .line 46
    new-instance v4, Landroidx/picker/loader/select/AllAppsSelectableItem$bindSelectableItemList$disposableHandleList$1$1;

    .line 47
    .line 48
    invoke-direct {v4, p0}, Landroidx/picker/loader/select/AllAppsSelectableItem$bindSelectableItemList$disposableHandleList$1$1;-><init>(Landroidx/picker/loader/select/AllAppsSelectableItem;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4}, Landroidx/picker/loader/select/SelectableItem;->registerAfterChangeUpdateListener(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v1, Landroidx/picker/loader/select/AllAppsSelectableItem$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    invoke-direct {v1, v0, v2}, Landroidx/picker/loader/select/AllAppsSelectableItem$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/DisposableHandle;Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 65
    .line 66
    return-void
.end method

.method private static final bindSelectableItemList$lambda-4(Lkotlinx/coroutines/DisposableHandle;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lkotlinx/coroutines/DisposableHandle;

    .line 19
    .line 20
    invoke-interface {p1}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private final updateAllAppsStatus()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->selectableItemList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->selectableItemList:Ljava/util/List;

    .line 11
    .line 12
    instance-of v1, v0, Ljava/util/Collection;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/picker/loader/select/SelectableItem;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/picker/loader/select/SelectableItem;->isSelected()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Landroidx/picker/features/observable/ObservableProperty;->setValueSilence(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final reset(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/picker/loader/select/SelectableItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->selectableItemList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/picker/loader/select/AllAppsSelectableItem;->bindSelectableItemList()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
