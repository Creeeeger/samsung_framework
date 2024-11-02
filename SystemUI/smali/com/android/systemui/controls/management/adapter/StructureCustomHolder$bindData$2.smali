.class public final Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$bindData$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$bindData$2;->this$0:Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$bindData$2;->this$0:Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureAll:Landroid/widget/CheckBox;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$bindData$2;->this$0:Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureAll:Landroid/widget/CheckBox;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->structureName:Ljava/lang/CharSequence;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->favoriteCallback:Lkotlin/jvm/functions/Function2;

    .line 32
    .line 33
    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-void
.end method
