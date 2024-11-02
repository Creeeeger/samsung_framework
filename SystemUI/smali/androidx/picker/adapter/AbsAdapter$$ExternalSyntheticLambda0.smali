.class public final synthetic Landroidx/picker/adapter/AbsAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic f$0:Landroidx/picker/model/viewdata/CategoryViewData;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/model/viewdata/CategoryViewData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/picker/adapter/AbsAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/model/viewdata/CategoryViewData;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/model/viewdata/CategoryViewData;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/picker/model/appdata/CategoryAppData;->icon:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    return-object p0
.end method
