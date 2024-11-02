.class public Lcom/android/systemui/qs/DNDDetailItems;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAdapter:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

.field public mCallback:Lcom/android/systemui/qs/DNDDetailItems$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

.field public mItemList:Lcom/android/systemui/qs/AutoSizingList;

.field public final mItemVisible:[I

.field public mItems:[Lcom/android/systemui/qs/DNDDetailItems$Item;

.field public mItemsVisible:Z

.field public mSelectedMenu:Ljava/lang/String;

.field public mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/android/systemui/qs/DNDDetailItems$H;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/DNDDetailItems$H;-><init>(Lcom/android/systemui/qs/DNDDetailItems;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    .line 10
    .line 11
    new-instance p2, Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/DNDDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/DNDDetailItems;I)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/systemui/qs/DNDDetailItems;->mAdapter:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItemsVisible:Z

    .line 21
    .line 22
    const/4 p2, 0x6

    .line 23
    new-array p2, p2, [I

    .line 24
    .line 25
    fill-array-data p2, :array_0

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItemVisible:[I

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/systemui/qs/DNDDetailItems;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-string p1, "DNDDetailItems"

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/systemui/qs/DNDDetailItems;->mTag:Ljava/lang/String;

    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
    .end array-data
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mTag:Ljava/lang/String;

    .line 5
    .line 6
    const-string v0, "onAttachedToWindow"

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mTag:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "onDetachedFromWindow"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mCallback:Lcom/android/systemui/qs/DNDDetailItems$Callback;

    .line 13
    .line 14
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 5
    .line 6
    .line 7
    const v0, 0x102000a

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/systemui/qs/AutoSizingList;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mAdapter:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/AutoSizingList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final updateQSPanelOptions(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItemVisible:[I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    aput p1, p0, v0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    aput p1, p0, v0

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    aput p1, p0, v1

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    aput p1, p0, v1

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    sub-int/2addr v0, p1

    .line 17
    aput v0, p0, v1

    .line 18
    .line 19
    return-void
.end method
