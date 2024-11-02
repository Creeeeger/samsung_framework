.class final Landroidx/picker/loader/select/SelectStateLoader$createSelectableItem$newSelectable$1;
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
.field final synthetic $appInfo:Landroidx/picker/model/AppInfo;

.field final synthetic this$0:Landroidx/picker/loader/select/SelectStateLoader;


# direct methods
.method public constructor <init>(Landroidx/picker/loader/select/SelectStateLoader;Landroidx/picker/model/AppInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/loader/select/SelectStateLoader$createSelectableItem$newSelectable$1;->this$0:Landroidx/picker/loader/select/SelectStateLoader;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/picker/loader/select/SelectStateLoader$createSelectableItem$newSelectable$1;->$appInfo:Landroidx/picker/model/AppInfo;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

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
    iget-object v0, p0, Landroidx/picker/loader/select/SelectStateLoader$createSelectableItem$newSelectable$1;->this$0:Landroidx/picker/loader/select/SelectStateLoader;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/picker/loader/select/SelectStateLoader;->onSelectListener:Landroidx/picker/widget/SeslAppPickerView$3;

    .line 10
    .line 11
    if-eqz v0, :cond_e

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/picker/loader/select/SelectStateLoader$createSelectableItem$newSelectable$1;->$appInfo:Landroidx/picker/model/AppInfo;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerView$3;->this$0:Landroidx/picker/widget/SeslAppPickerView;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerView;->mOnStateChangeListener:Landroidx/picker/widget/SeslAppPickerSelectLayout$5;

    .line 18
    .line 19
    if-eqz v0, :cond_e

    .line 20
    .line 21
    iget-object v1, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$5;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    .line 22
    .line 23
    if-eqz p1, :cond_5

    .line 24
    .line 25
    iget-object p1, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    .line 26
    .line 27
    iget-object v2, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    :goto_0
    const/4 p1, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 p1, 0x0

    .line 47
    :goto_1
    if-eqz p1, :cond_2

    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_2
    iget-object p1, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Landroidx/picker/widget/SeslAppPickerView;->getAppData(Landroidx/picker/model/AppInfo;)Landroidx/picker/model/AppData;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v2, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

    .line 58
    .line 59
    iget-object v2, v2, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    .line 60
    .line 61
    iget-object v2, v2, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    .line 62
    .line 63
    invoke-static {v2}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->getCategoryAppDataList(Ljava/util/List;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    instance-of v3, p1, Landroidx/picker/model/AppInfoData;

    .line 68
    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    invoke-static {v2, p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->getCategoryAppDataContainsAppInfo(Ljava/util/List;Landroidx/picker/model/AppInfo;)Landroidx/picker/model/appdata/CategoryAppData;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/picker/model/appdata/CategoryAppData;->getSelected()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    invoke-virtual {v1, p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->addSelectItem(Landroidx/picker/model/appdata/CategoryAppData;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_3
    check-cast p1, Landroidx/picker/model/AppInfoData;

    .line 89
    .line 90
    invoke-static {p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->convertCheckBox2Remove(Landroidx/picker/model/AppInfoData;)Landroidx/picker/model/AppInfoData;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {v1, p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->addCheckedItem(Landroidx/picker/model/AppInfoData;)V

    .line 95
    .line 96
    .line 97
    filled-new-array {p0}, [Landroidx/picker/model/AppData;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :cond_4
    instance-of p0, p1, Landroidx/picker/model/appdata/CategoryAppData;

    .line 107
    .line 108
    if-eqz p0, :cond_d

    .line 109
    .line 110
    check-cast p1, Landroidx/picker/model/appdata/CategoryAppData;

    .line 111
    .line 112
    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->addSelectItem(Landroidx/picker/model/appdata/CategoryAppData;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_3

    .line 116
    .line 117
    :cond_5
    iget-object p1, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    .line 118
    .line 119
    invoke-virtual {p1, p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->get(Landroidx/picker/model/AppInfo;)Landroidx/picker/model/AppInfoData;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object v2, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

    .line 124
    .line 125
    iget-object v2, v2, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    .line 126
    .line 127
    iget-object v2, v2, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    .line 128
    .line 129
    invoke-static {v2}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->getCategoryAppDataList(Ljava/util/List;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-nez p1, :cond_b

    .line 134
    .line 135
    invoke-static {v2, p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->getCategoryAppDataContainsAppInfo(Ljava/util/List;Landroidx/picker/model/AppInfo;)Landroidx/picker/model/appdata/CategoryAppData;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    if-nez p0, :cond_6

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_6
    iget-object p1, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    .line 143
    .line 144
    iget-object v2, p0, Landroidx/picker/model/appdata/CategoryAppData;->appInfo:Landroidx/picker/model/AppInfo;

    .line 145
    .line 146
    invoke-virtual {p1, v2}, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->get(Landroidx/picker/model/AppInfo;)Landroidx/picker/model/AppInfoData;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-nez p1, :cond_7

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_7
    iget-object v2, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    .line 154
    .line 155
    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iget-object v3, v2, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    .line 160
    .line 161
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_8

    .line 166
    .line 167
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    :cond_8
    iget-object v2, v2, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    .line 171
    .line 172
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_9

    .line 177
    .line 178
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    iget-object p0, p0, Landroidx/picker/model/appdata/CategoryAppData;->appInfoDataList:Ljava/util/List;

    .line 187
    .line 188
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    :cond_a
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_d

    .line 197
    .line 198
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Landroidx/picker/model/AppInfoData;

    .line 203
    .line 204
    invoke-interface {v2}, Landroidx/picker/model/AppInfoData;->getSelected()Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_a

    .line 209
    .line 210
    invoke-static {v2}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->convertCheckBox2Remove(Landroidx/picker/model/AppInfoData;)Landroidx/picker/model/AppInfoData;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v1, v2}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->addCheckedItem(Landroidx/picker/model/AppInfoData;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_b
    iget-object p0, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    .line 222
    .line 223
    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    iget-object v2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    .line 228
    .line 229
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_c

    .line 234
    .line 235
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    :cond_c
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    .line 239
    .line 240
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_d

    .line 245
    .line 246
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    :cond_d
    :goto_3
    new-instance p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$5$$ExternalSyntheticLambda0;

    .line 250
    .line 251
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$5$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout$5;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 255
    .line 256
    .line 257
    :cond_e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 258
    .line 259
    return-object p0
.end method
