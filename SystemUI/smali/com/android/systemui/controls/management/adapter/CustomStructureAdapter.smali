.class public final Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

.field public final controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

.field public final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

.field public final currentUserId:I

.field public layoutCompletedCallback:Ljava/util/function/Consumer;

.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public model:Lcom/android/systemui/controls/management/model/StructureModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/systemui/controls/ui/util/AUIFacade;ILjava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            "Lcom/android/systemui/controls/util/ControlsRuneWrapper;",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            "I",
            "Ljava/util/function/Consumer<",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    .line 7
    iput p5, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->currentUserId:I

    .line 8
    iput-object p6, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->layoutCompletedCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/systemui/controls/ui/util/AUIFacade;ILjava/util/function/Consumer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;-><init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/systemui/controls/ui/util/AUIFacade;ILjava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/systemui/controls/management/model/StructureModel;->getElements()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/systemui/controls/management/model/StructureModel;->getElements()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/systemui/controls/management/model/StructureElementWrapper;

    .line 14
    .line 15
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/ReorderWrapper;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/PaddingWrapper;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    const/4 p0, 0x3

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/SubtitleWrapper;

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    const/4 p0, 0x4

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    instance-of p0, p0, Lcom/android/systemui/controls/management/model/LoadingWrapper;

    .line 40
    .line 41
    if-eqz p0, :cond_4

    .line 42
    .line 43
    const/16 p0, 0x64

    .line 44
    .line 45
    :goto_0
    return p0

    .line 46
    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 47
    .line 48
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p1, "Getting item type for null model"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onAttachedToRecyclerView$1$1;

    .line 6
    .line 7
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onAttachedToRecyclerView$1$1;-><init>(Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/systemui/controls/management/model/StructureModel;->getElements()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/systemui/controls/management/model/StructureElementWrapper;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomStructureHolder;->bindData(Lcom/android/systemui/controls/management/model/StructureElementWrapper;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onCreateViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eq p2, v1, :cond_4

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq p2, v1, :cond_3

    .line 15
    .line 16
    const/4 p0, 0x3

    .line 17
    if-eq p2, p0, :cond_2

    .line 18
    .line 19
    const/4 p0, 0x4

    .line 20
    if-eq p2, p0, :cond_1

    .line 21
    .line 22
    const/16 p0, 0x64

    .line 23
    .line 24
    if-ne p2, p0, :cond_0

    .line 25
    .line 26
    new-instance p0, Lcom/android/systemui/controls/management/adapter/StructureControlLoadingHolder;

    .line 27
    .line 28
    const p2, 0x7f0d009d

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/StructureControlLoadingHolder;-><init>(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string p1, "Wrong viewType: "

    .line 42
    .line 43
    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_1
    new-instance p0, Lcom/android/systemui/controls/management/adapter/StructureControlSubtitleHolder;

    .line 52
    .line 53
    const p2, 0x7f0d00b1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/StructureControlSubtitleHolder;-><init>(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    new-instance p0, Lcom/android/systemui/controls/management/adapter/StructureControlPaddingHolder;

    .line 65
    .line 66
    const p2, 0x7f0d009a

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/StructureControlPaddingHolder;-><init>(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    new-instance p2, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;

    .line 78
    .line 79
    const v1, 0x7f0d00ae

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance v0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onCreateViewHolder$1;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onCreateViewHolder$1;-><init>(Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p2, p1, v0}, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;-><init>(Landroid/view/View;Ljava/util/function/Consumer;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    new-instance p2, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;

    .line 96
    .line 97
    const v1, 0x7f0d00b0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iget v3, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->currentUserId:I

    .line 105
    .line 106
    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 107
    .line 108
    iget-object v5, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 109
    .line 110
    iget-object v6, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 111
    .line 112
    move-object v1, p2

    .line 113
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;-><init>(Landroid/view/View;ILcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/util/ControlsRuneWrapper;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    move-object p0, p2

    .line 117
    :goto_1
    return-object p0
.end method
