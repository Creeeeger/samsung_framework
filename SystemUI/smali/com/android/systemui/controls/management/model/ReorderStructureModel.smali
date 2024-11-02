.class public final Lcom/android/systemui/controls/management/model/ReorderStructureModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/controls/management/model/StructureModel;


# instance fields
.field public adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public dragPos:I

.field public final elements:Ljava/util/List;

.field public isDragging:Z

.field public final itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/model/ReorderStructureModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->dragPos:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/CharSequence;

    .line 32
    .line 33
    new-instance v2, Lcom/android/systemui/controls/management/model/ReorderWrapper;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Lcom/android/systemui/controls/management/model/ReorderWrapper;-><init>(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->elements:Ljava/util/List;

    .line 43
    .line 44
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 45
    .line 46
    new-instance v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;-><init>(Lcom/android/systemui/controls/management/model/ReorderStructureModel;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final getElements()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->elements:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
