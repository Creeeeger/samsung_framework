.class public final Landroidx/picker/repository/ViewDataRepository;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final dataLoader:Landroidx/picker/loader/DataLoader;

.field public final selectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;


# direct methods
.method public constructor <init>(Landroidx/picker/loader/DataLoader;Landroidx/picker/loader/select/SelectStateLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/picker/repository/ViewDataRepository;->dataLoader:Landroidx/picker/loader/DataLoader;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/picker/repository/ViewDataRepository;->selectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final createAppInfoViewData(Landroidx/picker/model/AppInfoData;)Landroidx/picker/model/viewdata/AppInfoViewData;
    .locals 11

    .line 1
    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v9, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 6
    .line 7
    new-instance v3, Landroidx/picker/loader/AppIconFlow;

    .line 8
    .line 9
    new-instance v1, Landroidx/picker/repository/ViewDataRepository$createAppInfoViewData$1;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Landroidx/picker/repository/ViewDataRepository$createAppInfoViewData$1;-><init>(Landroidx/picker/model/AppInfoData;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Landroidx/picker/repository/ViewDataRepository;->dataLoader:Landroidx/picker/loader/DataLoader;

    .line 15
    .line 16
    move-object v10, v2

    .line 17
    check-cast v10, Landroidx/picker/loader/DataLoaderImpl;

    .line 18
    .line 19
    invoke-virtual {v10, v0}, Landroidx/picker/loader/DataLoaderImpl;->loadIcon(Landroidx/picker/model/AppInfo;)Lkotlinx/coroutines/flow/Flow;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v3, v1, v2}, Landroidx/picker/loader/AppIconFlow;-><init>(Landroidx/picker/features/observable/UpdateMutableState;Lkotlinx/coroutines/flow/Flow;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Landroidx/picker/repository/ViewDataRepository;->selectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/picker/loader/select/SelectStateLoader;->createSelectableItem(Landroidx/picker/model/AppInfoData;)Landroidx/picker/loader/select/AppDataSelectableItem;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/16 v7, 0x18

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    move-object v1, v9

    .line 38
    move-object v2, p1

    .line 39
    invoke-direct/range {v1 .. v8}, Landroidx/picker/model/viewdata/AppInfoViewData;-><init>(Landroidx/picker/model/AppInfoData;Landroidx/picker/loader/AppIconFlow;Landroidx/picker/loader/select/SelectableItem;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getLabel()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-nez p0, :cond_2

    .line 47
    .line 48
    iget-object p0, v10, Landroidx/picker/loader/DataLoaderImpl;->labelMap$delegate:Lkotlin/Lazy;

    .line 49
    .line 50
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    iget-object p1, v10, Landroidx/picker/loader/DataLoaderImpl;->packageManagerHelper:Landroidx/picker/helper/PackageManagerHelper;

    .line 63
    .line 64
    check-cast p1, Landroidx/picker/helper/PackageManagerHelperImpl;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    xor-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    const-string v2, "can\'t find label for "

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    if-eqz v1, :cond_0

    .line 81
    .line 82
    iget-object v1, v0, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v4, v0, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    .line 85
    .line 86
    iget v5, v0, Landroidx/picker/model/AppInfo;->user:I

    .line 87
    .line 88
    new-instance v6, Landroid/content/ComponentName;

    .line 89
    .line 90
    invoke-direct {v6, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v5, v1}, Landroidx/picker/helper/PackageManagerHelperImpl;->getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :try_start_0
    invoke-virtual {v1, v6, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_1

    .line 110
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {p1, v1}, Landroidx/picker/common/log/LogTagHelperKt;->info(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    iget-object v1, v0, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    .line 127
    .line 128
    iget v4, v0, Landroidx/picker/model/AppInfo;->user:I

    .line 129
    .line 130
    invoke-virtual {p1, v4, v1}, Landroidx/picker/helper/PackageManagerHelperImpl;->getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    :try_start_1
    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    .line 144
    move-object v1, v3

    .line 145
    goto :goto_1

    .line 146
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {p1, v1}, Landroidx/picker/common/log/LogTagHelperKt;->info(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :goto_0
    const-string v1, "Unknown"

    .line 162
    .line 163
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v3, "getAppLabel key="

    .line 166
    .line 167
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v3, v0, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v3, ", value="

    .line 176
    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-static {p1, v2}, Landroidx/picker/common/log/LogTagHelperKt;->debug(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-object p1, v1

    .line 194
    :cond_1
    move-object p0, p1

    .line 195
    check-cast p0, Ljava/lang/String;

    .line 196
    .line 197
    :cond_2
    invoke-virtual {v9, p0}, Landroidx/picker/model/viewdata/AppInfoViewData;->setLabel(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-object v9
.end method

.method public final createCategoryViewData(Landroidx/picker/model/appdata/CategoryAppData;Ljava/util/List;)Landroidx/picker/model/viewdata/CategoryViewData;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 21
    .line 22
    iget-object v1, v1, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p0, p0, Landroidx/picker/repository/ViewDataRepository;->selectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Landroidx/picker/loader/select/SelectStateLoader;->createCategorySelectableItem(Landroidx/picker/model/appdata/CategoryAppData;Ljava/util/List;)Landroidx/picker/loader/select/CategorySelectableItem;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 37
    .line 38
    new-instance v0, Landroidx/picker/model/viewdata/CategoryViewData;

    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p1, p0, v1}, Landroidx/picker/model/viewdata/CategoryViewData;-><init>(Landroidx/picker/model/appdata/CategoryAppData;Landroidx/picker/loader/select/SelectableItem;Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method
