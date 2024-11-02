.class final Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->bindData(Landroidx/picker/model/viewdata/ViewData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;


# direct methods
.method public constructor <init>(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$3;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$3;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->access$getTitleView$p(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)Landroid/widget/TextView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$3;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->access$getHighlightColor(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {v0, p1, p0}, Landroidx/picker/helper/TextViewHelperKt;->setHighLightText(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method
