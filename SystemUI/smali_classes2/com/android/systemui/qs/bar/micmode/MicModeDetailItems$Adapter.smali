.class public final Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;
.super Landroid/widget/BaseAdapter;
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
    iput-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->items:Ljava/util/List;

    .line 4
    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->items:Ljava/util/List;

    .line 4
    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    const-wide/16 p0, 0x0

    .line 2
    .line 3
    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->items:Ljava/util/List;

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 17
    .line 18
    iget-object p2, p2, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const v1, 0x7f0d0383

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :cond_0
    const p3, 0x7f0a0254

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    check-cast p3, Landroid/widget/CheckedTextView;

    .line 39
    .line 40
    iget-object v1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->ctv:Landroid/widget/CheckedTextView;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    move v1, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v1, v0

    .line 48
    :goto_0
    if-eqz v1, :cond_2

    .line 49
    .line 50
    move-object v1, p1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v1, 0x0

    .line 53
    :goto_1
    if-eqz v1, :cond_4

    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->getText()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {p3, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iput-object p3, v1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->ctv:Landroid/widget/CheckedTextView;

    .line 65
    .line 66
    iget-object p3, v3, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->callback:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Callback;

    .line 67
    .line 68
    if-eqz p3, :cond_4

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->getMicMode()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iget v3, v3, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->selectedMode:I

    .line 75
    .line 76
    if-ne v1, v3, :cond_3

    .line 77
    .line 78
    move v0, v2

    .line 79
    :cond_3
    check-cast p3, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;

    .line 80
    .line 81
    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->updateDetailItem(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;Z)V

    .line 82
    .line 83
    .line 84
    :cond_4
    new-instance p3, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 87
    .line 88
    invoke-direct {p3, p0, p1}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;-><init>(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    return-object p2
.end method
