.class public final Lcom/android/systemui/controls/management/adapter/ZoneCustomHolder;
.super Lcom/android/systemui/controls/management/adapter/CustomHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final zone:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

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
    const v0, 0x7f0a02b4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/widget/TextView;

    .line 15
    .line 16
    sget-object v0, Lcom/android/systemui/controls/ui/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;

    .line 17
    .line 18
    const v1, 0x7f0700a3

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1, v1}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->updateFontSize$default(Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;Landroid/widget/TextView;I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/ZoneCustomHolder;->zone:Landroid/widget/TextView;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/model/CustomElementWrapper;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/controls/management/model/CustomZoneNameWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ZoneCustomHolder;->zone:Landroid/widget/TextView;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/controls/management/model/CustomZoneNameWrapper;->zoneName:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
