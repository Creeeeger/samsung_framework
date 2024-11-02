.class public final synthetic Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KshView;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KshView;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/KshView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/KshView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget v1, v0, Lcom/android/systemui/statusbar/KshView;->mLastPosition:I

    .line 19
    .line 20
    if-eq p1, v1, :cond_0

    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    new-instance v2, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda4;

    .line 25
    .line 26
    invoke-direct {v2, v0, p1, p0}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/KshView;ILjava/util/List;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
