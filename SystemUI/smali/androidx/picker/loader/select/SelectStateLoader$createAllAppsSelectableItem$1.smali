.class final Landroidx/picker/loader/select/SelectStateLoader$createAllAppsSelectableItem$1;
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
.field final synthetic this$0:Landroidx/picker/loader/select/SelectStateLoader;


# direct methods
.method public constructor <init>(Landroidx/picker/loader/select/SelectStateLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/loader/select/SelectStateLoader$createAllAppsSelectableItem$1;->this$0:Landroidx/picker/loader/select/SelectStateLoader;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    iget-object p0, p0, Landroidx/picker/loader/select/SelectStateLoader$createAllAppsSelectableItem$1;->this$0:Landroidx/picker/loader/select/SelectStateLoader;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/picker/loader/select/SelectStateLoader;->onSelectListener:Landroidx/picker/widget/SeslAppPickerView$3;

    .line 10
    .line 11
    if-eqz p0, :cond_8

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView$3;->this$0:Landroidx/picker/widget/SeslAppPickerView;

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView;->mOnStateChangeListener:Landroidx/picker/widget/SeslAppPickerSelectLayout$5;

    .line 16
    .line 17
    if-eqz p0, :cond_8

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$5;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroidx/picker/model/AppInfoData;

    .line 52
    .line 53
    invoke-interface {v2}, Landroidx/picker/model/AppInfoData;->getDimmed()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_0

    .line 58
    .line 59
    invoke-interface {v2}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    if-eqz p1, :cond_8

    .line 68
    .line 69
    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

    .line 70
    .line 71
    iget-object p1, p1, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    .line 72
    .line 73
    iget-object p1, p1, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    .line 74
    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_8

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroidx/picker/model/AppData;

    .line 93
    .line 94
    instance-of v1, v0, Landroidx/picker/model/AppInfoData;

    .line 95
    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    check-cast v0, Landroidx/picker/model/AppInfoData;

    .line 99
    .line 100
    invoke-interface {v0}, Landroidx/picker/model/AppInfoData;->getSelected()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    invoke-static {v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->convertCheckBox2Remove(Landroidx/picker/model/AppInfoData;)Landroidx/picker/model/AppInfoData;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->addCheckedItem(Landroidx/picker/model/AppInfoData;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    instance-of v1, v0, Landroidx/picker/model/appdata/CategoryAppData;

    .line 115
    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    check-cast v0, Landroidx/picker/model/appdata/CategoryAppData;

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->updateCheckedAppList(Landroidx/picker/model/appdata/CategoryAppData;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    instance-of v1, v0, Landroidx/picker/model/appdata/GroupAppData;

    .line 125
    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    check-cast v0, Landroidx/picker/model/appdata/GroupAppData;

    .line 129
    .line 130
    iget-object v0, v0, Landroidx/picker/model/appdata/GroupAppData;->appDataList:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_3

    .line 141
    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Landroidx/picker/model/AppData;

    .line 147
    .line 148
    instance-of v2, v1, Landroidx/picker/model/AppInfoData;

    .line 149
    .line 150
    if-eqz v2, :cond_7

    .line 151
    .line 152
    check-cast v1, Landroidx/picker/model/AppInfoData;

    .line 153
    .line 154
    invoke-interface {v1}, Landroidx/picker/model/AppInfoData;->getSelected()Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_6

    .line 159
    .line 160
    invoke-static {v1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->convertCheckBox2Remove(Landroidx/picker/model/AppInfoData;)Landroidx/picker/model/AppInfoData;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->addCheckedItem(Landroidx/picker/model/AppInfoData;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_7
    instance-of v2, v1, Landroidx/picker/model/appdata/CategoryAppData;

    .line 169
    .line 170
    if-eqz v2, :cond_6

    .line 171
    .line 172
    check-cast v1, Landroidx/picker/model/appdata/CategoryAppData;

    .line 173
    .line 174
    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->updateCheckedAppList(Landroidx/picker/model/appdata/CategoryAppData;)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_8
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 179
    .line 180
    return-object p0
.end method
