.class public Landroidx/picker/loader/select/AppDataSelectableItem;
.super Landroidx/picker/loader/select/SelectableItem;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final mutableState:Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;


# direct methods
.method private constructor <init>(Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/picker/loader/select/SelectableItem;-><init>(Landroidx/picker/features/observable/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 3
    iput-object p1, p0, Landroidx/picker/loader/select/AppDataSelectableItem;->mutableState:Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/picker/loader/select/AppDataSelectableItem;-><init>(Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Landroidx/picker/model/AppInfoData;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/model/AppInfoData;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 4
    new-instance v0, Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;

    invoke-direct {v0, p1}, Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;-><init>(Landroidx/picker/model/AppInfoData;)V

    invoke-direct {p0, v0, p2}, Landroidx/picker/loader/select/AppDataSelectableItem;-><init>(Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final updateBase(Landroidx/picker/model/AppInfoData;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/loader/select/AppDataSelectableItem;->mutableState:Landroidx/picker/loader/select/AppDataSelectableItem$AppDataSelectedState;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/picker/features/observable/UpdateMutableState;->base:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method
