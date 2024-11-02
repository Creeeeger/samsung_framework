.class final Landroidx/picker/controller/strategy/SingleSelectStrategy$convert$convertAppInfoTask$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/controller/strategy/SingleSelectStrategy;->convert(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;
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
.field final synthetic $comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/picker/model/viewdata/ViewData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/picker/controller/strategy/SingleSelectStrategy;


# direct methods
.method public constructor <init>(Landroidx/picker/controller/strategy/SingleSelectStrategy;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/controller/strategy/SingleSelectStrategy;",
            "Ljava/util/Comparator<",
            "Landroidx/picker/model/viewdata/ViewData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/picker/controller/strategy/SingleSelectStrategy$convert$convertAppInfoTask$1;->this$0:Landroidx/picker/controller/strategy/SingleSelectStrategy;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/picker/controller/strategy/SingleSelectStrategy$convert$convertAppInfoTask$1;->$comparator:Ljava/util/Comparator;

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
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/picker/controller/strategy/SingleSelectStrategy$convert$convertAppInfoTask$1;->this$0:Landroidx/picker/controller/strategy/SingleSelectStrategy;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/picker/controller/strategy/SingleSelectStrategy;->access$getConvertAppInfoDataTask$p(Landroidx/picker/controller/strategy/SingleSelectStrategy;)Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;->execute(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Landroidx/picker/controller/strategy/task/SortAppInfoViewDataTask;

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/picker/controller/strategy/SingleSelectStrategy$convert$convertAppInfoTask$1;->$comparator:Ljava/util/Comparator;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Landroidx/picker/controller/strategy/task/SortAppInfoViewDataTask;-><init>(Ljava/util/Comparator;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroidx/picker/controller/strategy/task/SortAppInfoViewDataTask;->execute(Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
