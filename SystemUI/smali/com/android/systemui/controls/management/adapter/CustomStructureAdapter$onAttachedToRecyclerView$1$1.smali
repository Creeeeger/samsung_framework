.class public final Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onAttachedToRecyclerView$1$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onAttachedToRecyclerView$1$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter$onAttachedToRecyclerView$1$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->layoutCompletedCallback:Ljava/util/function/Consumer;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    iput-object p0, p1, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->layoutCompletedCallback:Ljava/util/function/Consumer;

    .line 15
    .line 16
    return-void
.end method
