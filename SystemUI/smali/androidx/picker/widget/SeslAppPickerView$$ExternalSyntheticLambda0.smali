.class public final synthetic Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/picker/widget/SeslAppPickerView;

.field public final synthetic f$1:Landroidx/picker/model/viewdata/ViewData;

.field public final synthetic f$2:Landroidx/picker/adapter/viewholder/PickerViewHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/widget/SeslAppPickerView;Landroidx/picker/model/viewdata/ViewData;Landroidx/picker/adapter/viewholder/PickerViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/widget/SeslAppPickerView;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda0;->f$1:Landroidx/picker/model/viewdata/ViewData;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda0;->f$2:Landroidx/picker/adapter/viewholder/PickerViewHolder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/widget/SeslAppPickerView;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda0;->f$1:Landroidx/picker/model/viewdata/ViewData;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda0;->f$2:Landroidx/picker/adapter/viewholder/PickerViewHolder;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/picker/model/viewdata/AppInfoViewData;->getAppInfo()Landroidx/picker/model/AppInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroidx/picker/widget/SeslAppPickerView;->getAppData(Landroidx/picker/model/AppInfo;)Landroidx/picker/model/AppData;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    iget-object v1, p1, Landroidx/picker/widget/SeslAppPickerView;->mOnClickEventListener:Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda2;

    .line 25
    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    invoke-interface {v0}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p1, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda2;->f$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    .line 33
    .line 34
    iget-object v0, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v3, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_a

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Landroidx/picker/model/AppInfoData;

    .line 77
    .line 78
    invoke-interface {v2}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3, p0}, Landroidx/picker/model/AppInfo;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    iget-object v0, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

    .line 89
    .line 90
    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Landroidx/picker/controller/ViewDataController;->getViewData(Landroidx/picker/model/AppInfo;)Landroidx/picker/model/viewdata/ViewData;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    instance-of v0, p0, Landroidx/picker/model/Selectable;

    .line 97
    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    check-cast p0, Landroidx/picker/model/Selectable;

    .line 102
    .line 103
    invoke-interface {p0}, Landroidx/picker/model/Selectable;->getSelectableItem()Landroidx/picker/loader/select/SelectableItem;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    if-eqz p0, :cond_3

    .line 108
    .line 109
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_0
    const-string p0, "accessibility"

    .line 115
    .line 116
    iget-object v0, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    .line 117
    .line 118
    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-eqz p0, :cond_a

    .line 129
    .line 130
    iget-object p0, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const v0, 0x7f130fa6

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-interface {v2}, Landroidx/picker/model/AppInfoData;->getLabel()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    instance-of v0, p0, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;

    .line 164
    .line 165
    const/4 v1, 0x0

    .line 166
    if-eqz v0, :cond_9

    .line 167
    .line 168
    check-cast p0, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;

    .line 169
    .line 170
    iget-object p0, p0, Landroidx/picker/adapter/viewholder/AppListItemViewHolder;->composableItemViewHolderList:Ljava/util/List;

    .line 171
    .line 172
    const-class v0, Landroidx/picker/features/composable/ActionableComposableViewHolder;

    .line 173
    .line 174
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsJvmKt;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    check-cast p0, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    const/4 v2, 0x0

    .line 189
    if-eqz v0, :cond_7

    .line 190
    .line 191
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    move-object v3, v0

    .line 196
    check-cast v3, Landroidx/picker/features/composable/ActionableComposableViewHolder;

    .line 197
    .line 198
    invoke-virtual {v3}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->getDoAction()Landroidx/core/util/Supplier;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    if-eqz v3, :cond_6

    .line 203
    .line 204
    invoke-interface {v3}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 209
    .line 210
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    goto :goto_1

    .line 215
    :cond_6
    move v3, v2

    .line 216
    :goto_1
    if-eqz v3, :cond_5

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_7
    move-object v0, v1

    .line 220
    :goto_2
    check-cast v0, Landroidx/picker/features/composable/ActionableComposableViewHolder;

    .line 221
    .line 222
    if-eqz v0, :cond_8

    .line 223
    .line 224
    const/4 v2, 0x1

    .line 225
    :cond_8
    if-eqz v2, :cond_9

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_9
    iget-object p0, p1, Landroidx/picker/widget/SeslAppPickerView;->mOnClickEventListener:Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda2;

    .line 229
    .line 230
    if-nez p0, :cond_a

    .line 231
    .line 232
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    .line 234
    .line 235
    :cond_a
    :goto_3
    return-void
.end method
