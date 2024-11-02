.class public Landroidx/picker/widget/SeslAppPickerSelectLayout;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/picker/common/log/LogTag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;,
        Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public curLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

.field public final mAppPickerStateContainerView:Landroid/widget/FrameLayout;

.field public final mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

.field public final mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

.field public mHeaderHeight:I

.field public mHeaderVisibility:Z

.field public final mListItemHeight:I

.field public final mMainViewTitleView:Landroid/widget/TextView;

.field public final mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final mSearchNoResultFoundView:Landroid/view/View;

.field public final mSelectLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

.field public final mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

.field public final mSelectedViewHeader:Landroid/widget/FrameLayout;

.field public mSelectedViewHeight:I

.field public mSelectedViewTitleHeight:I

.field public mShouldCheckHeaderVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const-string v0, "AppPickerSelectLayout Type is wrong ="

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p4, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    invoke-direct {p4}, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;-><init>()V

    iput-object p4, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    const/4 p4, 0x1

    .line 6
    iput-boolean p4, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderVisibility:Z

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ad1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mListItemHeight:I

    .line 8
    new-instance v1, Landroidx/picker/widget/SeslAppPickerSelectLayout$1;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$1;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;)V

    .line 9
    sget-object v1, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;->AUTO:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    iput-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->curLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    const/4 v2, 0x0

    .line 11
    :try_start_0
    sget-object v3, Landroidx/picker/R$styleable;->SeslAppPickerSelectLayout:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, -0x1

    .line 12
    :try_start_1
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_0

    .line 13
    invoke-static {}, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;->values()[Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    move-result-object v3

    array-length v3, v3

    if-ge p3, v3, :cond_0

    .line 14
    invoke-static {}, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;->values()[Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    move-result-object v0

    aget-object p3, v0, p3

    iput-object p3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    goto :goto_1

    .line 15
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget-boolean v0, Landroidx/picker/common/log/LogTagHelperKt;->IS_DEBUG_DEVICE:Z

    .line 16
    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->getLogTag()Ljava/lang/String;

    const-string v0, "SeslAppPicker[1.0.44-sesl6].SeslAppPickerSelectLayout"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :catch_1
    move-exception p2

    move-object p3, p2

    move-object p2, v1

    .line 17
    :goto_0
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_1

    .line 18
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    const-string p2, "layout_inflater"

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0d028e

    .line 20
    invoke-virtual {p2, p3, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p2, 0x7f0a08e6

    .line 21
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p2, 0x7f0a09cd

    .line 22
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewHeader:Landroid/widget/FrameLayout;

    .line 23
    new-instance p3, Landroidx/picker/widget/SeslAppPickerSelectLayout$2;

    invoke-direct {p3, p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$2;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const p2, 0x7f0a00e7

    .line 24
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateContainerView:Landroid/widget/FrameLayout;

    const p3, 0x7f0a060e

    .line 25
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mMainViewTitleView:Landroid/widget/TextView;

    const p3, 0x7f0a09d0

    .line 26
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 27
    new-instance v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$3;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$3;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const p3, 0x7f0a074a

    .line 28
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSearchNoResultFoundView:Landroid/view/View;

    .line 29
    new-instance v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p3, 0x7f0a09ce

    .line 30
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/picker/widget/SeslAppPickerGridView;

    iput-object p3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 31
    new-instance v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$4;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$4;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 32
    iget-object v0, p3, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    .line 33
    iput-object v1, v0, Landroidx/picker/controller/ViewDataController;->order:Ljava/util/Comparator;

    .line 34
    iget-object v3, v0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    invoke-virtual {v0, v3, v1}, Landroidx/picker/controller/ViewDataController;->submit(Ljava/util/List;Ljava/util/Comparator;)V

    .line 35
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object v3, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "submitList="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/picker/common/log/LogTagHelperKt;->info(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    iget-object v1, p3, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    .line 42
    iput-object v0, v1, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    .line 43
    iget-object v3, v1, Landroidx/picker/controller/ViewDataController;->order:Ljava/util/Comparator;

    invoke-virtual {v1, v0, v3}, Landroidx/picker/controller/ViewDataController;->submit(Ljava/util/List;Ljava/util/Comparator;)V

    .line 44
    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    .line 45
    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    .line 46
    new-instance v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda2;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;Landroid/content/Context;)V

    .line 47
    iput-object v0, p3, Landroidx/picker/widget/SeslAppPickerView;->mOnClickEventListener:Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda2;

    .line 48
    iget-object v0, p3, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    if-eqz v0, :cond_2

    .line 49
    new-instance v0, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3, p4}, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/widget/SeslAppPickerView;I)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 50
    :cond_2
    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->shouldCheckHeaderVisibility()Z

    move-result p3

    iput-boolean p3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mShouldCheckHeaderVisibility:Z

    .line 51
    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->updateLayout()V

    .line 52
    new-instance p3, Landroidx/picker/widget/SeslAppPickerListView;

    invoke-direct {p3, p1}, Landroidx/picker/widget/SeslAppPickerListView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

    .line 53
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 54
    new-instance p1, Landroidx/picker/widget/SeslAppPickerSelectLayout$5;

    invoke-direct {p1, p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$5;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;)V

    .line 55
    iput-object p1, p3, Landroidx/picker/widget/SeslAppPickerView;->mOnStateChangeListener:Landroidx/picker/widget/SeslAppPickerSelectLayout$5;

    return-void

    :catchall_1
    move-exception p0

    move-object v1, p2

    :goto_2
    if-eqz v1, :cond_3

    .line 56
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    :cond_3
    throw p0
.end method

.method public static convertCheckBox2Remove(Landroidx/picker/model/AppInfoData;)Landroidx/picker/model/AppInfoData;
    .locals 2

    .line 1
    new-instance v0, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;-><init>(Landroidx/picker/model/AppInfoData;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroidx/picker/helper/DrawableHelperKt;->newMutateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getSubIcon()Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Landroidx/picker/helper/DrawableHelperKt;->newMutateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->setSubIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static getCategoryAppDataContainsAppInfo(Ljava/util/List;Landroidx/picker/model/AppInfo;)Landroidx/picker/model/appdata/CategoryAppData;
    .locals 5

    .line 1
    check-cast p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/picker/model/appdata/CategoryAppData;

    .line 19
    .line 20
    iget-object v2, v0, Landroidx/picker/model/appdata/CategoryAppData;->appInfoDataList:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroidx/picker/model/AppInfoData;

    .line 37
    .line 38
    invoke-interface {v3}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4, p1}, Landroidx/picker/model/AppInfo;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    move-object v1, v3

    .line 49
    :cond_2
    if-eqz v1, :cond_0

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_3
    return-object v1
.end method

.method public static getCategoryAppDataList(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/picker/model/AppData;

    .line 21
    .line 22
    instance-of v2, v1, Landroidx/picker/model/appdata/GroupAppData;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    check-cast v1, Landroidx/picker/model/appdata/GroupAppData;

    .line 27
    .line 28
    iget-object v1, v1, Landroidx/picker/model/appdata/GroupAppData;->appDataList:Ljava/util/List;

    .line 29
    .line 30
    const-class v2, Landroidx/picker/model/appdata/CategoryAppData;

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsJvmKt;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    instance-of v2, v1, Landroidx/picker/model/appdata/CategoryAppData;

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    check-cast v1, Landroidx/picker/model/appdata/CategoryAppData;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final addCheckedItem(Landroidx/picker/model/AppInfoData;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getDimmed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, " is already added"

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p0, p1}, Landroidx/picker/common/log/LogTagHelperKt;->warn(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p0, p1}, Landroidx/picker/common/log/LogTagHelperKt;->warn(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :goto_0
    return-void
.end method

.method public final addSelectItem(Landroidx/picker/model/appdata/CategoryAppData;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->removeSelectItemInCategory(Landroidx/picker/model/appdata/CategoryAppData;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    .line 5
    .line 6
    iget-object v1, p1, Landroidx/picker/model/appdata/CategoryAppData;->appInfo:Landroidx/picker/model/AppInfo;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p1, Landroidx/picker/model/appdata/CategoryAppData;->label:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p1, Landroidx/picker/model/appdata/CategoryAppData;->icon:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    invoke-static {v1}, Landroidx/picker/helper/DrawableHelperKt;->newMutateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1}, Landroidx/picker/model/appdata/CategoryAppData;->getSelected()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {v0, p1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->setSelected(Z)Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->addCheckedItem(Landroidx/picker/model/AppInfoData;)V

    .line 40
    .line 41
    .line 42
    filled-new-array {p1}, [Landroidx/picker/model/AppData;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final convertOrientation(I)I
    .locals 1

    .line 1
    sget-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$8;->$SwitchMap$androidx$picker$widget$SeslAppPickerSelectLayout$SelectLayoutType:[I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    aget p0, v0, p0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, v0

    .line 19
    :goto_0
    return p1
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;

    .line 2
    .line 3
    const-string p0, "SeslAppPickerSelectLayout"

    .line 4
    .line 5
    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->shouldCheckHeaderVisibility()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput-boolean p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mShouldCheckHeaderVisibility:Z

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    .line 11
    .line 12
    sget-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;->AUTO:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->updateLayout()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewHeader:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-gtz p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-direct {p1, p0, p2}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final refreshSelectedAppPickerView(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->convertOrientation(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewHeader:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-lez v1, :cond_0

    .line 24
    .line 25
    iget-boolean v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderVisibility:Z

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    move v1, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v1, v3

    .line 32
    :goto_0
    if-ne v0, v2, :cond_1

    .line 33
    .line 34
    sget-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->PORT:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    if-eqz v1, :cond_2

    .line 38
    .line 39
    sget-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->LAND_HEADER_ONLY:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    sget-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->LAND:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 43
    .line 44
    :goto_1
    iget-object v2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->curLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 45
    .line 46
    if-eq v2, v0, :cond_4

    .line 47
    .line 48
    iput-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->curLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    .line 49
    .line 50
    iget-object v2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSearchNoResultFoundView:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 57
    .line 58
    invoke-direct {v4}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    iget v0, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->layoutResId:I

    .line 66
    .line 67
    invoke-virtual {v4, v0, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(ILandroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 71
    .line 72
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSearchNoResultFoundView:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    new-instance p1, Landroid/transition/ChangeBounds;

    .line 83
    .line 84
    invoke-direct {p1}, Landroid/transition/ChangeBounds;-><init>()V

    .line 85
    .line 86
    .line 87
    new-instance v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 101
    .line 102
    invoke-static {v0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 107
    .line 108
    invoke-static {p1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    :goto_2
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewHeader:Landroid/widget/FrameLayout;

    .line 112
    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    const/16 v3, 0x8

    .line 117
    .line 118
    :goto_3
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final removeSelectItemInCategory(Landroidx/picker/model/appdata/CategoryAppData;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Landroidx/picker/model/appdata/CategoryAppData;->appInfoDataList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/picker/model/AppInfoData;

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    .line 25
    .line 26
    invoke-interface {v1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v2, v1}, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->get(Landroidx/picker/model/AppInfo;)Landroidx/picker/model/AppInfoData;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    .line 37
    .line 38
    invoke-interface {v1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object v4, v2, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v2, v2, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    return-void
.end method

.method public final shouldCheckHeaderVisibility()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    instance-of v2, v0, Landroid/app/Activity;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v0}, Landroid/content/res/Configuration;->semIsPopOver()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    or-int/2addr v0, v2

    .line 38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    const-string v0, "Failed to call semIsPopOver"

    .line 44
    .line 45
    invoke-static {p0, v0}, Landroidx/picker/common/log/LogTagHelperKt;->warn(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0
.end method

.method public final updateCheckedAppList(Landroidx/picker/model/appdata/CategoryAppData;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/picker/model/appdata/CategoryAppData;->getSelected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->removeSelectItemInCategory(Landroidx/picker/model/appdata/CategoryAppData;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    .line 11
    .line 12
    iget-object v1, p1, Landroidx/picker/model/appdata/CategoryAppData;->appInfo:Landroidx/picker/model/AppInfo;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p1, Landroidx/picker/model/appdata/CategoryAppData;->icon:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    invoke-static {v1}, Landroidx/picker/helper/DrawableHelperKt;->newMutateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object p1, p1, Landroidx/picker/model/appdata/CategoryAppData;->label:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->addCheckedItem(Landroidx/picker/model/AppInfoData;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object p1, p1, Landroidx/picker/model/appdata/CategoryAppData;->appInfoDataList:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroidx/picker/model/AppInfoData;

    .line 58
    .line 59
    invoke-interface {v0}, Landroidx/picker/model/AppInfoData;->getSelected()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-static {v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->convertCheckBox2Remove(Landroidx/picker/model/AppInfoData;)Landroidx/picker/model/AppInfoData;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->addCheckedItem(Landroidx/picker/model/AppInfoData;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    return-void
.end method

.method public final updateHeaderVisibility()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mShouldCheckHeaderVisibility:Z

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->convertOrientation(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderHeight:I

    .line 28
    .line 29
    sub-int/2addr v0, v1

    .line 30
    iget v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewTitleHeight:I

    .line 31
    .line 32
    sub-int/2addr v0, v1

    .line 33
    iget v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewHeight:I

    .line 34
    .line 35
    sub-int/2addr v0, v1

    .line 36
    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mMainViewTitleView:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    sub-int/2addr v0, v1

    .line 43
    iget v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mListItemHeight:I

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    if-le v0, v1, :cond_0

    .line 47
    .line 48
    move v0, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v0, v3

    .line 51
    :goto_0
    if-eqz v0, :cond_2

    .line 52
    .line 53
    :cond_1
    move v3, v2

    .line 54
    :cond_2
    iget-boolean v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderVisibility:Z

    .line 55
    .line 56
    if-eq v0, v3, :cond_3

    .line 57
    .line 58
    iput-boolean v3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderVisibility:Z

    .line 59
    .line 60
    new-instance v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    invoke-direct {v0, p0, v2}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void
.end method

.method public final updateLayout()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->convertOrientation(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/picker/widget/SeslAppPickerView;->clearItemDecoration()V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 v4, -0x2

    .line 31
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 34
    .line 35
    new-instance v4, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectedHorizontalItemDecoration;

    .line 36
    .line 37
    invoke-direct {v4}, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectedHorizontalItemDecoration;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const v4, 0x7f070ad9

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    iget-object v4, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 64
    .line 65
    new-instance v5, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectedVerticallItemDecoration;

    .line 66
    .line 67
    invoke-direct {v5, v3}, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectedVerticallItemDecoration;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object v3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 74
    .line 75
    new-instance v4, Landroidx/picker/decorator/RecyclerViewCornerDecoration;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-direct {v4, v5}, Landroidx/picker/decorator/RecyclerViewCornerDecoration;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 90
    .line 91
    .line 92
    iget-object v3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 93
    .line 94
    if-ne v0, v1, :cond_1

    .line 95
    .line 96
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    new-instance v0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-direct {v0, v1}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    .line 119
    .line 120
    new-instance v4, Landroidx/picker/widget/SeslAppPickerSelectLayout$7;

    .line 121
    .line 122
    invoke-direct {v4, p0, v1, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$7;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;Landroidx/picker/widget/SeslAppPickerGridView;Landroidx/recyclerview/widget/GridLayoutManager;)V

    .line 123
    .line 124
    .line 125
    iput-object v4, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 126
    .line 127
    :goto_1
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v2}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->refreshSelectedAppPickerView(Z)V

    .line 131
    .line 132
    .line 133
    return-void
.end method
