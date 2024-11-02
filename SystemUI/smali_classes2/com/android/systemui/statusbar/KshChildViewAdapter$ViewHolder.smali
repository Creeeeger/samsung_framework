.class public final Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final iconView:Landroid/widget/ImageView;

.field public final keywordView:Landroid/widget/TextView;

.field public final shortcutKeysContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KshChildViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0a04fc

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 14
    .line 15
    const p1, 0x7f0a04fe

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->keywordView:Landroid/widget/TextView;

    .line 25
    .line 26
    const p1, 0x7f0a04fd

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/LinearLayout;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->shortcutKeysContainer:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    return-void
.end method
