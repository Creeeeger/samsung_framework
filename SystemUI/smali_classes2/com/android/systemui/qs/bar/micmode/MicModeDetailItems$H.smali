.class public final Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 7
    .line 8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->items:Ljava/util/List;

    .line 13
    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->itemList:Lcom/android/systemui/qs/AutoSizingList;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :cond_0
    if-nez v0, :cond_1

    .line 29
    .line 30
    const/16 v0, 0x8

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->items:Ljava/util/List;

    .line 38
    .line 39
    check-cast v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->adapter:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 v1, 0x2

    .line 51
    if-ne v0, v1, :cond_3

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 54
    .line 55
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Callback;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->callback:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Callback;

    .line 60
    .line 61
    :cond_3
    :goto_1
    return-void
.end method
