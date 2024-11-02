.class public final Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final appInfoContainer:Landroid/widget/LinearLayout;

.field public final badge:Landroid/view/View;

.field public final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

.field public final favRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

.field public final favorites:Landroid/widget/TextView;

.field public final icon:Landroid/widget/ImageView;

.field public final isOOBE:Z

.field public final onOff:Landroidx/appcompat/widget/SwitchCompat;

.field public final onOffLayout:Landroid/widget/LinearLayout;

.field public final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

.field public final switchCallback:Lkotlin/jvm/functions/Function1;

.field public final switchDivder:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;Landroid/view/View;Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;Lkotlin/jvm/functions/Function1;ZLcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;",
            "Lkotlin/jvm/functions/Function1;",
            "Z",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->favRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->switchCallback:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-boolean p5, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->isOOBE:Z

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 17
    .line 18
    const p2, 0x1020006

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/ImageView;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->icon:Landroid/widget/ImageView;

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 30
    .line 31
    const p2, 0x1020016

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->title:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 43
    .line 44
    const p2, 0x7f0a03e8

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->favorites:Landroid/widget/TextView;

    .line 54
    .line 55
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 56
    .line 57
    const p2, 0x7f0a0786

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->onOff:Landroidx/appcompat/widget/SwitchCompat;

    .line 67
    .line 68
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 69
    .line 70
    const p2, 0x7f0a0787

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/widget/LinearLayout;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->onOffLayout:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 82
    .line 83
    const p2, 0x7f0a0b86

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->switchDivder:Landroid/view/View;

    .line 91
    .line 92
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 93
    .line 94
    const p2, 0x7f0a00e0

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroid/widget/LinearLayout;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->appInfoContainer:Landroid/widget/LinearLayout;

    .line 104
    .line 105
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 106
    .line 107
    const p2, 0x7f0a012c

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->badge:Landroid/view/View;

    .line 115
    .line 116
    return-void
.end method
