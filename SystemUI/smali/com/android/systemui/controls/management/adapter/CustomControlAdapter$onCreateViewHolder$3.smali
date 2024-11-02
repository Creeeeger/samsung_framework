.class final Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$3;->this$0:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$3;->this$0:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->model:Lcom/android/systemui/controls/management/model/CustomControlsModel;

    .line 12
    .line 13
    if-eqz p0, :cond_9

    .line 14
    .line 15
    check-cast p0, Lcom/android/systemui/controls/management/model/AllControlsModel;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    .line 18
    .line 19
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    move-object v6, v2

    .line 39
    check-cast v6, Lcom/android/systemui/controls/management/model/CustomElementWrapper;

    .line 40
    .line 41
    instance-of v7, v6, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    .line 42
    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    check-cast v6, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    .line 46
    .line 47
    iget-object v6, v6, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    .line 48
    .line 49
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    move v6, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v6, v4

    .line 58
    :goto_0
    if-eqz v6, :cond_0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move-object v2, v5

    .line 62
    :goto_1
    check-cast v2, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    .line 63
    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_3
    iget-boolean p1, v2, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    .line 68
    .line 69
    if-ne p2, p1, :cond_4

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->controls:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_8

    .line 83
    .line 84
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/android/systemui/controls/ControlStatus;

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_7

    .line 99
    .line 100
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    move-object v8, v7

    .line 105
    check-cast v8, Lcom/android/systemui/controls/management/model/CustomElementWrapper;

    .line 106
    .line 107
    instance-of v9, v8, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    .line 108
    .line 109
    if-eqz v9, :cond_6

    .line 110
    .line 111
    check-cast v8, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    .line 112
    .line 113
    iget-object v8, v8, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    .line 114
    .line 115
    iget-object v8, v8, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 116
    .line 117
    invoke-virtual {v8}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-virtual {v1}, Lcom/android/systemui/controls/ControlStatus;->getControlId()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-eqz v8, :cond_6

    .line 130
    .line 131
    move v8, v3

    .line 132
    goto :goto_3

    .line 133
    :cond_6
    move v8, v4

    .line 134
    :goto_3
    if-eqz v8, :cond_5

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_7
    move-object v7, v5

    .line 138
    :goto_4
    check-cast v7, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    .line 139
    .line 140
    invoke-virtual {p0, v7, p2}, Lcom/android/systemui/controls/management/model/AllControlsModel;->setControlFavoriteStatus(Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;Z)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_8
    iput-boolean p2, v2, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 151
    .line 152
    if-eqz p0, :cond_9

    .line 153
    .line 154
    new-instance p2, Ljava/lang/Object;

    .line 155
    .line 156
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :cond_9
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 163
    .line 164
    return-object p0
.end method
