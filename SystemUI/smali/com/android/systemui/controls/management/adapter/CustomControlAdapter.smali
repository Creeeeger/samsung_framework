.class public final Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

.field public final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

.field public final currentUserId:I

.field public model:Lcom/android/systemui/controls/management/model/CustomControlsModel;

.field public final spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

.field public final spanSizeLookup:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$spanSizeLookup$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/util/ControlsRuneWrapper;I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 7
    .line 8
    iput p5, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->currentUserId:I

    .line 9
    .line 10
    new-instance p4, Lcom/android/systemui/controls/ui/util/SpanManager;

    .line 11
    .line 12
    invoke-direct {p4, p2}, Lcom/android/systemui/controls/ui/util/SpanManager;-><init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p4, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    .line 16
    .line 17
    const/4 p5, 0x0

    .line 18
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-direct {v1, p5, p5, v2, v3}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 38
    .line 39
    sget-boolean v4, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    .line 40
    .line 41
    const v5, 0x7f0701f7

    .line 42
    .line 43
    .line 44
    const v6, 0x7f0701f6

    .line 45
    .line 46
    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_0

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    :goto_0
    const/4 v8, 0x2

    .line 76
    invoke-direct {v1, v7, p5, v8, v3}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const/16 v0, 0x65

    .line 83
    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 89
    .line 90
    invoke-direct {v1, p5, p5, v2, v3}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const/16 v0, 0x66

    .line 97
    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v1, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 103
    .line 104
    invoke-direct {v1, p5, p5, v2, v3}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const/16 v0, 0x67

    .line 111
    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-instance v1, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 117
    .line 118
    if-eqz v4, :cond_1

    .line 119
    .line 120
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {p1}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    if-eqz p3, :cond_1

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    :goto_1
    invoke-direct {v1, p1, p5, v8, v3}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    .line 153
    .line 154
    new-instance p1, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$spanSizeLookup$1;

    .line 155
    .line 156
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$spanSizeLookup$1;-><init>(Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)V

    .line 157
    .line 158
    .line 159
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->spanSizeLookup:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$spanSizeLookup$1;

    .line 160
    .line 161
    return-void
.end method

.method public static final onCreateViewHolder$inflate(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

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
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method


# virtual methods
.method public final attachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/android/systemui/controls/ui/util/SpanManager;->updateSpanInfos(I)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget v1, v1, Lcom/android/systemui/controls/ui/util/SpanManager;->maxSpan:I

    .line 17
    .line 18
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->spanSizeLookup:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$spanSizeLookup$1;

    .line 22
    .line 23
    iput-object p0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    .line 27
    .line 28
    new-instance p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$CustomMarginItemDecorator;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->model:Lcom/android/systemui/controls/management/model/CustomControlsModel;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/controls/management/model/AllControlsModel;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    check-cast p0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->model:Lcom/android/systemui/controls/management/model/CustomControlsModel;

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/controls/management/model/AllControlsModel;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    .line 8
    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/systemui/controls/management/model/CustomElementWrapper;

    .line 16
    .line 17
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/CustomZoneNameWrapper;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    check-cast p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/service/controls/CustomControl;->getLayoutType()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-ne p0, v0, :cond_1

    .line 47
    .line 48
    const/16 p0, 0x67

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move p0, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    instance-of p1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    const/16 p0, 0x65

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    instance-of p0, p0, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;

    .line 61
    .line 62
    if-eqz p0, :cond_4

    .line 63
    .line 64
    const/16 p0, 0x66

    .line 65
    .line 66
    :goto_0
    return p0

    .line 67
    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 68
    .line 69
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string p1, "Getting item type for null model"

    .line 76
    .line 77
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onAttachedToRecyclerView$1;

    .line 12
    .line 13
    invoke-direct {v1, p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onAttachedToRecyclerView$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->attachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/controls/management/adapter/CustomHolder;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->model:Lcom/android/systemui/controls/management/model/CustomControlsModel;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/controls/management/model/AllControlsModel;

    .line 3
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/CustomElementWrapper;

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomHolder;->bindData(Lcom/android/systemui/controls/management/model/CustomElementWrapper;)V

    :cond_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 5
    check-cast p1, Lcom/android/systemui/controls/management/adapter/CustomHolder;

    .line 6
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->model:Lcom/android/systemui/controls/management/model/CustomControlsModel;

    if-eqz p0, :cond_2

    .line 9
    check-cast p0, Lcom/android/systemui/controls/management/model/AllControlsModel;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    .line 11
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/CustomElementWrapper;

    .line 12
    instance-of p2, p0, Lcom/android/systemui/controls/ControlInterface;

    if-eqz p2, :cond_1

    check-cast p0, Lcom/android/systemui/controls/ControlInterface;

    invoke-interface {p0}, Lcom/android/systemui/controls/ControlInterface;->getFavorite()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomHolder;->updateFavorite(Z)V

    goto :goto_0

    .line 13
    :cond_1
    instance-of p2, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    if-eqz p2, :cond_2

    check-cast p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    .line 14
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomHolder;->updateFavorite(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreateViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    .line 6
    packed-switch p2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string p1, "Wrong viewType: "

    .line 12
    .line 13
    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :pswitch_0
    new-instance p2, Lcom/android/systemui/controls/management/adapter/SmallControlCustomHolder;

    .line 22
    .line 23
    const v0, 0x7f0d00a7

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->onCreateViewHolder$inflate(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget v3, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->currentUserId:I

    .line 31
    .line 32
    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 33
    .line 34
    iget-object v5, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 35
    .line 36
    new-instance v6, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$2;

    .line 37
    .line 38
    invoke-direct {v6, p0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$2;-><init>(Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)V

    .line 39
    .line 40
    .line 41
    move-object v1, p2

    .line 42
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/controls/management/adapter/SmallControlCustomHolder;-><init>(Landroid/view/View;ILcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lkotlin/jvm/functions/Function2;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_1
    new-instance p2, Lcom/android/systemui/controls/management/adapter/PaddingCustomHolder;

    .line 47
    .line 48
    const p0, 0x7f0d009a

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->onCreateViewHolder$inflate(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {p2, p0}, Lcom/android/systemui/controls/management/adapter/PaddingCustomHolder;-><init>(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_2
    new-instance p2, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;

    .line 60
    .line 61
    const v0, 0x7f0d00ad

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->onCreateViewHolder$inflate(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$3;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$3;-><init>(Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p2, p1, v0}, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    new-instance p2, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;

    .line 78
    .line 79
    const v0, 0x7f0d008f

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->onCreateViewHolder$inflate(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget v2, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->currentUserId:I

    .line 87
    .line 88
    iget-object v3, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 89
    .line 90
    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 91
    .line 92
    new-instance v5, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$1;

    .line 93
    .line 94
    invoke-direct {v5, p0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$1;-><init>(Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)V

    .line 95
    .line 96
    .line 97
    move-object v0, p2

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/controls/management/adapter/ControlCustomHolder;-><init>(Landroid/view/View;ILcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lkotlin/jvm/functions/Function2;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    new-instance p2, Lcom/android/systemui/controls/management/adapter/ZoneCustomHolder;

    .line 103
    .line 104
    const p0, 0x7f0d0096

    .line 105
    .line 106
    .line 107
    invoke-static {p1, p0}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->onCreateViewHolder$inflate(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-direct {p2, p0}, Lcom/android/systemui/controls/management/adapter/ZoneCustomHolder;-><init>(Landroid/view/View;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    return-object p2

    .line 115
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
