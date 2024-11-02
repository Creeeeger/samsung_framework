.class public final synthetic Lcom/android/systemui/tuner/LockscreenFragment$App$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/tuner/LockscreenFragment$App;

.field public final synthetic f$1:Lcom/android/systemui/tuner/LockscreenFragment$Adapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/LockscreenFragment$App;Lcom/android/systemui/tuner/LockscreenFragment$Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/tuner/LockscreenFragment$App$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/tuner/LockscreenFragment$App;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/tuner/LockscreenFragment$App$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/tuner/LockscreenFragment$Adapter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$App$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/tuner/LockscreenFragment$App;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/tuner/LockscreenFragment$App$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/tuner/LockscreenFragment$Adapter;

    .line 4
    .line 5
    check-cast p1, Lcom/android/systemui/tuner/LockscreenFragment$Item;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
