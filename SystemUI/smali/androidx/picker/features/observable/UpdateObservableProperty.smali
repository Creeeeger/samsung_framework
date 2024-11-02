.class public Landroidx/picker/features/observable/UpdateObservableProperty;
.super Landroidx/picker/features/observable/ObservableProperty;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/picker/features/observable/ObservableProperty<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final mutableState:Landroidx/picker/features/observable/UpdateMutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/picker/features/observable/UpdateMutableState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/picker/features/observable/UpdateMutableState;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/features/observable/UpdateMutableState;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/picker/features/observable/ObservableProperty;-><init>(Landroidx/picker/features/observable/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 3
    iput-object p1, p0, Landroidx/picker/features/observable/UpdateObservableProperty;->mutableState:Landroidx/picker/features/observable/UpdateMutableState;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/picker/features/observable/UpdateMutableState;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/picker/features/observable/UpdateObservableProperty;-><init>(Landroidx/picker/features/observable/UpdateMutableState;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final update(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/picker/features/observable/UpdateObservableProperty;->mutableState:Landroidx/picker/features/observable/UpdateMutableState;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/picker/features/observable/UpdateMutableState;->base:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method
