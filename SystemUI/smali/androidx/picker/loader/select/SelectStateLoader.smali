.class public final Landroidx/picker/loader/select/SelectStateLoader;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public allAppsSelectableItem:Landroidx/picker/loader/select/AllAppsSelectableItem;

.field public final categorySelectableItemMap:Ljava/util/Map;

.field public onSelectListener:Landroidx/picker/widget/SeslAppPickerView$3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/picker/loader/select/SelectStateLoader;->categorySelectableItemMap:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final createAllAppsSelectableItem(Ljava/util/List;)Landroidx/picker/loader/select/AllAppsSelectableItem;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/picker/loader/select/SelectStateLoader;->allAppsSelectableItem:Landroidx/picker/loader/select/AllAppsSelectableItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/picker/loader/select/AllAppsSelectableItem;->dispose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Landroidx/picker/loader/select/AllAppsSelectableItem;

    .line 9
    .line 10
    new-instance v1, Landroidx/picker/loader/select/SelectStateLoader$createAllAppsSelectableItem$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Landroidx/picker/loader/select/SelectStateLoader$createAllAppsSelectableItem$1;-><init>(Landroidx/picker/loader/select/SelectStateLoader;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1, v1}, Landroidx/picker/loader/select/AllAppsSelectableItem;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroidx/picker/loader/select/SelectStateLoader;->allAppsSelectableItem:Landroidx/picker/loader/select/AllAppsSelectableItem;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/picker/loader/select/AllAppsSelectableItem;->dispose()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iput-object v0, p0, Landroidx/picker/loader/select/SelectStateLoader;->allAppsSelectableItem:Landroidx/picker/loader/select/AllAppsSelectableItem;

    .line 26
    .line 27
    return-object v0
.end method

.method public final createCategorySelectableItem(Landroidx/picker/model/appdata/CategoryAppData;Ljava/util/List;)Landroidx/picker/loader/select/CategorySelectableItem;
    .locals 2

    .line 1
    new-instance v0, Landroidx/picker/loader/select/CategorySelectableItem;

    .line 2
    .line 3
    new-instance v1, Landroidx/picker/loader/select/SelectStateLoader$createCategorySelectableItem$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Landroidx/picker/loader/select/SelectStateLoader$createCategorySelectableItem$1;-><init>(Landroidx/picker/loader/select/SelectStateLoader;Landroidx/picker/model/appdata/CategoryAppData;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p2, v1}, Landroidx/picker/loader/select/CategorySelectableItem;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/picker/loader/select/SelectStateLoader;->categorySelectableItemMap:Ljava/util/Map;

    .line 12
    .line 13
    move-object p2, p0

    .line 14
    check-cast p2, Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/picker/model/appdata/CategoryAppData;->appInfo:Landroidx/picker/model/AppInfo;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroidx/picker/loader/select/CategorySelectableItem;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p2}, Landroidx/picker/loader/select/CategorySelectableItem;->dispose()V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public final createSelectableItem(Landroidx/picker/model/AppInfoData;)Landroidx/picker/loader/select/AppDataSelectableItem;
    .locals 3

    .line 1
    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/picker/loader/select/AppDataSelectableItem;

    .line 6
    .line 7
    new-instance v2, Landroidx/picker/loader/select/SelectStateLoader$createSelectableItem$newSelectable$1;

    .line 8
    .line 9
    invoke-direct {v2, p0, v0}, Landroidx/picker/loader/select/SelectStateLoader$createSelectableItem$newSelectable$1;-><init>(Landroidx/picker/loader/select/SelectStateLoader;Landroidx/picker/model/AppInfo;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p1, v2}, Landroidx/picker/loader/select/AppDataSelectableItem;-><init>(Landroidx/picker/model/AppInfoData;Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    return-object v1
.end method
