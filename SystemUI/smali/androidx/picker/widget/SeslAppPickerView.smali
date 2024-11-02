.class public abstract Landroidx/picker/widget/SeslAppPickerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;
.implements Landroidx/picker/adapter/AppPickerAdapter$OnBindListener;
.implements Landroidx/picker/common/log/LogTag;


# instance fields
.field public final clearKeyboardListener:Landroidx/picker/widget/SeslAppPickerView$1;

.field public disposable:Lkotlinx/coroutines/DisposableHandle;

.field public mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

.field public final mAppDataRepository:Landroidx/picker/repository/AppDataRepository;

.field public final mContext:Landroid/content/Context;

.field public mOnClickEventListener:Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda2;

.field public mOnStateChangeListener:Landroidx/picker/widget/SeslAppPickerSelectLayout$5;

.field public final mSelectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

.field public final mSeslRoundedCorner:I

.field public final mViewDataController:Landroidx/picker/controller/ViewDataController;

.field public mViewType:I

.field public final scrollListener:Landroidx/picker/widget/SeslAppPickerView$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslAppPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslAppPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-string v0, "init strategy="

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v1, 0xf

    .line 4
    iput v1, p0, Landroidx/picker/widget/SeslAppPickerView;->mSeslRoundedCorner:I

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewType:I

    const/4 v3, 0x0

    .line 6
    iput-object v3, p0, Landroidx/picker/widget/SeslAppPickerView;->mOnClickEventListener:Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda2;

    .line 7
    iput-object v3, p0, Landroidx/picker/widget/SeslAppPickerView;->mOnStateChangeListener:Landroidx/picker/widget/SeslAppPickerSelectLayout$5;

    .line 8
    new-instance v4, Landroidx/picker/widget/SeslAppPickerView$1;

    invoke-direct {v4, p0}, Landroidx/picker/widget/SeslAppPickerView$1;-><init>(Landroidx/picker/widget/SeslAppPickerView;)V

    iput-object v4, p0, Landroidx/picker/widget/SeslAppPickerView;->clearKeyboardListener:Landroidx/picker/widget/SeslAppPickerView$1;

    .line 9
    new-instance v4, Landroidx/picker/widget/SeslAppPickerView$2;

    invoke-direct {v4, p0}, Landroidx/picker/widget/SeslAppPickerView$2;-><init>(Landroidx/picker/widget/SeslAppPickerView;)V

    iput-object v4, p0, Landroidx/picker/widget/SeslAppPickerView;->scrollListener:Landroidx/picker/widget/SeslAppPickerView$2;

    .line 10
    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    .line 11
    :try_start_0
    sget-object v5, Landroidx/picker/R$styleable;->SeslAppPickerView:[I

    invoke-virtual {p1, p2, v5, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p3, 0x2

    .line 12
    :try_start_1
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslAppPickerView;->mSeslRoundedCorner:I

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", roundedCorner="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/picker/common/log/LogTagHelperKt;->debug(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v3

    move-object v3, p2

    move-object p2, v6

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object p3, v3

    move-object v3, p2

    move-object p2, p3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    :catch_2
    move-exception p2

    move-object v0, p2

    move-object p2, v3

    move-object p3, p2

    .line 17
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    .line 18
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    move-object v3, p2

    .line 19
    :goto_1
    const-class p2, Landroidx/picker/di/AppPickerContext;

    if-nez v3, :cond_1

    .line 20
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 21
    :cond_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/di/AppPickerContext;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 23
    :catch_3
    new-instance v0, Landroidx/picker/di/AppPickerContext;

    invoke-direct {v0, p1}, Landroidx/picker/di/AppPickerContext;-><init>(Landroid/content/Context;)V

    .line 24
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "used appPickerContext: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/picker/common/log/LogTagHelperKt;->debug(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    .line 25
    iput-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

    .line 26
    iget-object p1, v0, Landroidx/picker/di/AppPickerContext;->appDataRepository$delegate:Lkotlin/Lazy;

    .line 27
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/repository/AppDataRepository;

    .line 28
    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mAppDataRepository:Landroidx/picker/repository/AppDataRepository;

    .line 29
    iget-object p1, v0, Landroidx/picker/di/AppPickerContext;->selectStateLoader$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/loader/select/SelectStateLoader;

    .line 30
    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mSelectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    .line 31
    :try_start_5
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/controller/strategy/Strategy;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    .line 35
    :catch_4
    new-instance p1, Landroidx/picker/controller/strategy/AppItemStrategy;

    invoke-direct {p1, v0}, Landroidx/picker/controller/strategy/AppItemStrategy;-><init>(Landroidx/picker/di/AppPickerContext;)V

    .line 36
    :goto_3
    new-instance p2, Landroidx/picker/controller/ViewDataController;

    invoke-direct {p2, p1}, Landroidx/picker/controller/ViewDataController;-><init>(Landroidx/picker/controller/strategy/Strategy;)V

    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    .line 37
    new-instance p1, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v2}, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/widget/SeslAppPickerView;I)V

    .line 38
    iget-object p3, p0, Landroidx/picker/widget/SeslAppPickerView;->mSelectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    new-instance v0, Landroidx/picker/widget/SeslAppPickerView$3;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslAppPickerView$3;-><init>(Landroidx/picker/widget/SeslAppPickerView;)V

    .line 39
    iput-object v0, p3, Landroidx/picker/loader/select/SelectStateLoader;->onSelectListener:Landroidx/picker/widget/SeslAppPickerView$3;

    .line 40
    new-instance p3, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1}, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda2;-><init>(Landroidx/picker/widget/SeslAppPickerView;Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda1;)V

    .line 41
    iget-object p0, p2, Landroidx/picker/controller/DataController;->listeners:Ljava/util/List;

    .line 42
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :goto_4
    move-object p2, v3

    :goto_5
    if-eqz p2, :cond_2

    .line 43
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    :cond_2
    throw p0
.end method


# virtual methods
.method public final clearItemDecoration()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "0 is an invalid index for size "

    .line 16
    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 51
    .line 52
    invoke-static {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_2
    return-void
.end method

.method public final getAppData(Landroidx/picker/model/AppInfo;)Landroidx/picker/model/AppData;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/picker/controller/ViewDataController;->getViewData(Landroidx/picker/model/AppInfo;)Landroidx/picker/model/viewdata/ViewData;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of p1, p0, Landroidx/picker/model/viewdata/AppSideViewData;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    instance-of p1, p0, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    move-object p1, p0

    .line 16
    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 17
    .line 18
    iget-object v0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    .line 19
    .line 20
    invoke-interface {v0}, Landroidx/picker/model/AppInfoData;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->iconFlow:Landroidx/picker/loader/AppIconFlow;

    .line 27
    .line 28
    invoke-static {p1}, Landroidx/picker/helper/FlowHelperKt;->loadIconSync(Landroidx/picker/loader/AppIconFlow;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    check-cast p0, Landroidx/picker/model/viewdata/AppSideViewData;

    .line 32
    .line 33
    invoke-interface {p0}, Landroidx/picker/model/viewdata/AppSideViewData;->getAppData()Landroidx/picker/model/AppData;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    :goto_0
    return-object p0
.end method

.method public abstract getAppPickerAdapter()Landroidx/picker/adapter/AbsAdapter;
.end method

.method public abstract getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "SeslAppPickerView"

    .line 2
    .line 3
    return-object p0
.end method

.method public final initialize()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/picker/adapter/HeaderFooterAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerView;->getAppPickerAdapter()Landroidx/picker/adapter/AbsAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroidx/picker/adapter/HeaderFooterAdapter;-><init>(Landroidx/picker/adapter/AbsAdapter;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    .line 11
    .line 12
    iget v1, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewType:I

    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Landroidx/picker/widget/SeslAppPickerView;->setItemDecoration(ILandroidx/picker/adapter/HeaderFooterAdapter;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    .line 30
    .line 31
    iget-object v0, v0, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    .line 32
    .line 33
    iput-object p0, v0, Landroidx/picker/adapter/AbsAdapter;->mOnBindListener:Landroidx/picker/adapter/AppPickerAdapter$OnBindListener;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->scrollListener:Landroidx/picker/widget/SeslAppPickerView$2;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->clearKeyboardListener:Landroidx/picker/widget/SeslAppPickerView$1;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->scrollListener:Landroidx/picker/widget/SeslAppPickerView$2;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->clearKeyboardListener:Landroidx/picker/widget/SeslAppPickerView$1;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/picker/adapter/viewholder/PickerViewHolder;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/picker/adapter/viewholder/PickerViewHolder;->onViewRecycled()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemDecoration(ILandroidx/picker/adapter/HeaderFooterAdapter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerView;->clearItemDecoration()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/picker/decorator/RecyclerViewCornerDecoration;

    .line 5
    .line 6
    iget-object p2, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iget v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mSeslRoundedCorner:I

    .line 9
    .line 10
    invoke-direct {p1, p2, v0}, Landroidx/picker/decorator/RecyclerViewCornerDecoration;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
