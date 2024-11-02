.class public final synthetic Lcom/android/systemui/tuner/LockscreenFragment$Adapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/tuner/LockscreenFragment$Adapter;

.field public final synthetic f$1:Lcom/android/systemui/tuner/LockscreenFragment$Holder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/LockscreenFragment$Adapter;Lcom/android/systemui/tuner/LockscreenFragment$Holder;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/tuner/LockscreenFragment$Adapter;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/tuner/LockscreenFragment$Holder;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/tuner/LockscreenFragment$Adapter;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/tuner/LockscreenFragment$Holder;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/tuner/LockscreenFragment$Item;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mCallback:Ljava/util/function/Consumer;

    .line 24
    .line 25
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/tuner/LockscreenFragment$Adapter;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/tuner/LockscreenFragment$Holder;

    .line 32
    .line 33
    iget-object v0, p1, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lcom/android/systemui/tuner/LockscreenFragment$Item;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/systemui/tuner/LockscreenFragment$Item;->toggleExpando(Lcom/android/systemui/tuner/LockscreenFragment$Adapter;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
