.class public Landroidx/picker/controller/strategy/LimitedSelectStrategy;
.super Landroidx/picker/controller/strategy/Strategy;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Companion:Landroidx/picker/controller/strategy/LimitedSelectStrategy$Companion;

.field private static final DEFAULT_LIMIT:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final convertAppInfoDataTask:Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;

.field private final limitedSelectableTask$delegate:Lkotlin/Lazy;

.field private final parseAppDataTask:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final viewDataRepository:Landroidx/picker/repository/ViewDataRepository;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/picker/controller/strategy/LimitedSelectStrategy$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/picker/controller/strategy/LimitedSelectStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/picker/controller/strategy/LimitedSelectStrategy;->Companion:Landroidx/picker/controller/strategy/LimitedSelectStrategy$Companion;

    .line 8
    .line 9
    const-string v0, "LimitedSelectStrategy"

    .line 10
    .line 11
    sput-object v0, Landroidx/picker/controller/strategy/LimitedSelectStrategy;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroidx/picker/di/AppPickerContext;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/picker/controller/strategy/Strategy;-><init>(Landroidx/picker/di/AppPickerContext;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Landroidx/picker/di/AppPickerContext;->viewDataRepository$delegate:Lkotlin/Lazy;

    .line 5
    .line 6
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroidx/picker/repository/ViewDataRepository;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/picker/controller/strategy/LimitedSelectStrategy;->viewDataRepository:Landroidx/picker/repository/ViewDataRepository;

    .line 13
    .line 14
    new-instance v0, Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;

    .line 15
    .line 16
    new-instance v1, Landroidx/picker/controller/strategy/LimitedSelectStrategy$convertAppInfoDataTask$1;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Landroidx/picker/controller/strategy/LimitedSelectStrategy$convertAppInfoDataTask$1;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/picker/controller/strategy/LimitedSelectStrategy;->convertAppInfoDataTask:Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;

    .line 25
    .line 26
    sget-object v0, Landroidx/picker/controller/strategy/task/ParseAppDataTask;->Companion:Landroidx/picker/controller/strategy/task/ParseAppDataTask$Companion;

    .line 27
    .line 28
    new-instance v1, Landroidx/picker/controller/strategy/LimitedSelectStrategy$parseAppDataTask$1;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Landroidx/picker/controller/strategy/LimitedSelectStrategy$parseAppDataTask$1;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Landroidx/picker/controller/strategy/LimitedSelectStrategy$parseAppDataTask$2;

    .line 34
    .line 35
    invoke-direct {v2, p1}, Landroidx/picker/controller/strategy/LimitedSelectStrategy$parseAppDataTask$2;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Landroidx/picker/controller/strategy/task/ParseAppDataTask$Companion;->provide(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Landroidx/picker/controller/strategy/LimitedSelectStrategy;->parseAppDataTask:Lkotlin/jvm/functions/Function1;

    .line 46
    .line 47
    new-instance p1, Landroidx/picker/controller/strategy/LimitedSelectStrategy$limitedSelectableTask$2;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Landroidx/picker/controller/strategy/LimitedSelectStrategy$limitedSelectableTask$2;-><init>(Landroidx/picker/controller/strategy/LimitedSelectStrategy;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Landroidx/picker/controller/strategy/LimitedSelectStrategy;->limitedSelectableTask$delegate:Lkotlin/Lazy;

    .line 57
    .line 58
    return-void
.end method

.method public static final synthetic access$getConvertAppInfoDataTask$p(Landroidx/picker/controller/strategy/LimitedSelectStrategy;)Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/controller/strategy/LimitedSelectStrategy;->convertAppInfoDataTask:Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;

    .line 2
    .line 3
    return-object p0
.end method

.method private final getLimitedSelectableTask()Landroidx/picker/controller/strategy/task/LimitedSelectableTask;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/controller/strategy/LimitedSelectStrategy;->limitedSelectableTask$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public convert(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/picker/model/AppData;",
            ">;",
            "Ljava/util/Comparator<",
            "Landroidx/picker/model/viewdata/ViewData;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/picker/model/viewdata/ViewData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/picker/controller/strategy/LimitedSelectStrategy$convert$convertAppInfoTask$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Landroidx/picker/controller/strategy/LimitedSelectStrategy$convert$convertAppInfoTask$1;-><init>(Landroidx/picker/controller/strategy/LimitedSelectStrategy;Ljava/util/Comparator;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroidx/picker/controller/strategy/LimitedSelectStrategy;->parseAppDataTask:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Landroidx/picker/controller/strategy/task/ParseAppDataTask;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroidx/picker/controller/strategy/task/ParseAppDataTask;->execute(Ljava/util/List;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0}, Landroidx/picker/controller/strategy/LimitedSelectStrategy;->getLimitedSelectableTask()Landroidx/picker/controller/strategy/task/LimitedSelectableTask;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;->execute(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method public getItemLimitedSize()I
    .locals 0

    .line 1
    const/4 p0, 0x5

    .line 2
    return p0
.end method
