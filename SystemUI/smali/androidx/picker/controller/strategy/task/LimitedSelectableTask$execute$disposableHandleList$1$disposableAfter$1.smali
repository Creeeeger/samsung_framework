.class final Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $appInfoData:Landroidx/picker/model/viewdata/AppInfoViewData;

.field final synthetic $appInfoDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/picker/model/viewdata/AppInfoViewData;",
            "Landroidx/picker/loader/select/SelectableItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $selectableItem:Landroidx/picker/loader/select/SelectableItem;

.field final synthetic this$0:Landroidx/picker/controller/strategy/task/LimitedSelectableTask;


# direct methods
.method public constructor <init>(Landroidx/picker/controller/strategy/task/LimitedSelectableTask;Landroidx/picker/model/viewdata/AppInfoViewData;Landroidx/picker/loader/select/SelectableItem;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/controller/strategy/task/LimitedSelectableTask;",
            "Landroidx/picker/model/viewdata/AppInfoViewData;",
            "Landroidx/picker/loader/select/SelectableItem;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "Landroidx/picker/model/viewdata/AppInfoViewData;",
            "+",
            "Landroidx/picker/loader/select/SelectableItem;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->this$0:Landroidx/picker/controller/strategy/task/LimitedSelectableTask;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$appInfoData:Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$selectableItem:Landroidx/picker/loader/select/SelectableItem;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$appInfoDataList:Ljava/util/List;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->this$0:Landroidx/picker/controller/strategy/task/LimitedSelectableTask;

    .line 11
    .line 12
    iget-object v1, v1, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;->selectedSet:Ljava/util/HashSet;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    :cond_0
    iget-object v2, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$appInfoData:Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/picker/model/viewdata/AppInfoViewData;->getAppInfo()Landroidx/picker/model/AppInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->this$0:Landroidx/picker/controller/strategy/task/LimitedSelectableTask;

    .line 28
    .line 29
    iget-object v1, v1, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;->selectedSet:Ljava/util/HashSet;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    move-object v1, v0

    .line 34
    :cond_2
    iget-object v2, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$appInfoData:Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/picker/model/viewdata/AppInfoViewData;->getAppInfo()Landroidx/picker/model/AppInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v1, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$selectableItem:Landroidx/picker/loader/select/SelectableItem;

    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v1, p1}, Landroidx/picker/features/observable/ObservableProperty;->setValueSilence(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->$appInfoDataList:Ljava/util/List;

    .line 53
    .line 54
    iget-object p0, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;->this$0:Landroidx/picker/controller/strategy/task/LimitedSelectableTask;

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_8

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lkotlin/Pair;

    .line 71
    .line 72
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 77
    .line 78
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroidx/picker/loader/select/SelectableItem;

    .line 83
    .line 84
    invoke-virtual {v2}, Landroidx/picker/model/viewdata/AppInfoViewData;->getDimmed()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    invoke-virtual {v2}, Landroidx/picker/model/viewdata/AppInfoViewData;->getSelected()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_3

    .line 95
    .line 96
    :cond_4
    iget-object v3, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;->selectedSet:Ljava/util/HashSet;

    .line 97
    .line 98
    if-nez v3, :cond_5

    .line 99
    .line 100
    move-object v3, v0

    .line 101
    :cond_5
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    iget v4, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;->limited:I

    .line 106
    .line 107
    const/4 v5, 0x1

    .line 108
    const/4 v6, 0x0

    .line 109
    if-lt v3, v4, :cond_6

    .line 110
    .line 111
    move v3, v5

    .line 112
    goto :goto_2

    .line 113
    :cond_6
    move v3, v6

    .line 114
    :goto_2
    if-eqz v3, :cond_7

    .line 115
    .line 116
    invoke-virtual {v1}, Landroidx/picker/loader/select/SelectableItem;->isSelected()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_7

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_7
    move v5, v6

    .line 124
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    iget-object v2, v2, Landroidx/picker/model/viewdata/AppInfoViewData;->dimmedItem:Landroidx/picker/features/observable/UpdateObservableProperty;

    .line 129
    .line 130
    invoke-virtual {v2, v1}, Landroidx/picker/features/observable/ObservableProperty;->setValueSilence(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p0
.end method
