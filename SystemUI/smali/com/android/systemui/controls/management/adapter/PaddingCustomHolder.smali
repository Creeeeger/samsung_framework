.class public final Lcom/android/systemui/controls/management/adapter/PaddingCustomHolder;
.super Lcom/android/systemui/controls/management/adapter/CustomHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final paddingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/CustomHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/PaddingCustomHolder;->paddingView:Landroid/view/View;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/model/CustomElementWrapper;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/PaddingCustomHolder;->paddingView:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p1, p1, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;->padding:I

    .line 10
    .line 11
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    .line 13
    return-void
.end method
