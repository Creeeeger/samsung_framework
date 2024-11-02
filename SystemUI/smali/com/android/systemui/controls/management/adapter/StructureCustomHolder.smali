.class public final Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;
.super Lcom/android/systemui/controls/management/adapter/CustomHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public displayName:Ljava/lang/CharSequence;

.field public final favoriteCallback:Lkotlin/jvm/functions/Function2;

.field public final selectAllItems:Ljava/lang/String;

.field public final structureAll:Landroid/widget/CheckBox;

.field public final structureAllLayout:Landroid/widget/FrameLayout;

.field public structureName:Ljava/lang/CharSequence;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/CustomHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->favoriteCallback:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    const p2, 0x7f0a0485

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Landroid/widget/TextView;

    .line 15
    .line 16
    sget-object v0, Lcom/android/systemui/controls/ui/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;

    .line 17
    .line 18
    const v1, 0x7f070220

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p2, v1}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->updateFontSize$default(Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;Landroid/widget/TextView;I)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->title:Landroid/widget/TextView;

    .line 25
    .line 26
    const p2, 0x7f0a024f

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/widget/CheckBox;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureAll:Landroid/widget/CheckBox;

    .line 36
    .line 37
    const p2, 0x7f0a0250

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Landroid/widget/FrameLayout;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureAllLayout:Landroid/widget/FrameLayout;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const v1, 0x7f1303fe

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->selectAllItems:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$accessibilityDelegate$1;

    .line 62
    .line 63
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$accessibilityDelegate$1;-><init>(Landroid/view/View;Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;)V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x2

    .line 71
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 75
    .line 76
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/model/CustomElementWrapper;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureName:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->displayName:Ljava/lang/CharSequence;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 13
    .line 14
    iget-boolean v2, p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->needStructureName:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const v2, 0x7f070221

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 v2, 0x8

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 49
    .line 50
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->displayName:Ljava/lang/CharSequence;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    move-object v0, v1

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->title:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-boolean p1, p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureAll:Landroid/widget/CheckBox;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->displayName:Ljava/lang/CharSequence;

    .line 69
    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move-object v1, p1

    .line 74
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->selectAllItems:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, ", "

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    new-instance p1, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$bindData$2;

    .line 100
    .line 101
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$bindData$2;-><init>(Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureAllLayout:Landroid/widget/FrameLayout;

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final updateFavorite(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureAll:Landroid/widget/CheckBox;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
