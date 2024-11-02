.class public final Lcom/android/systemui/controls/management/adapter/MainControlAdapter$onAttachedToRecyclerView$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic $recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/android/systemui/controls/management/adapter/MainControlAdapter;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$onAttachedToRecyclerView$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$onAttachedToRecyclerView$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$onAttachedToRecyclerView$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    sget-object v1, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlViewHolders:Ljava/util/Map;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->attachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
