.class public final Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenPagedTileLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "destroyItem "

    .line 2
    .line 3
    const-string v1, "SubscreenPagedTileLayout"

    .line 4
    .line 5
    invoke-static {v0, p2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast p3, Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    sget p1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->$r8$clinit:I

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->updateListening()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 1
    const-string v0, "instantiateItem "

    .line 2
    .line 3
    const-string v1, "SubscreenPagedTileLayout"

    .line 4
    .line 5
    invoke-static {v0, p2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->isLayoutRtl()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    sub-int p2, v0, p2

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Landroid/view/ViewGroup;

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->updateListening()V

    .line 47
    .line 48
    .line 49
    return-object p2
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
.end method
