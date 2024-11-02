.class final Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;
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
.field final synthetic $viewData:Landroidx/picker/model/viewdata/ViewData;

.field final synthetic this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;


# direct methods
.method public constructor <init>(Landroidx/picker/model/viewdata/ViewData;Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->$viewData:Landroidx/picker/model/viewdata/ViewData;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->$viewData:Landroidx/picker/model/viewdata/ViewData;

    .line 7
    .line 8
    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/picker/model/viewdata/AppInfoViewData;->getSubLabel()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->$viewData:Landroidx/picker/model/viewdata/ViewData;

    .line 23
    .line 24
    invoke-static {p1, v0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->access$getSubLabelShowState(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;Landroidx/picker/model/viewdata/ViewData;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    iget-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    .line 34
    .line 35
    invoke-static {v0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->access$getLayoutId(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;Z)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    .line 40
    .line 41
    invoke-static {v1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->access$getCurrentLayoutId$p(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eq v1, v0, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    .line 48
    .line 49
    invoke-static {v1, v0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->access$setCurrentLayoutId$p(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;I)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;->this$0:Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    .line 53
    .line 54
    invoke-static {p0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->access$adjustLayout(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;Z)V

    .line 55
    .line 56
    .line 57
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p0
.end method
