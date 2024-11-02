.class final Landroidx/picker/loader/select/AllAppsSelectableItem$bindSelectableItemList$disposableHandleList$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/loader/select/AllAppsSelectableItem;->bindSelectableItemList()V
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
.field final synthetic this$0:Landroidx/picker/loader/select/AllAppsSelectableItem;


# direct methods
.method public constructor <init>(Landroidx/picker/loader/select/AllAppsSelectableItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/loader/select/AllAppsSelectableItem$bindSelectableItemList$disposableHandleList$1$1;->this$0:Landroidx/picker/loader/select/AllAppsSelectableItem;

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
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/picker/loader/select/AllAppsSelectableItem$bindSelectableItemList$disposableHandleList$1$1;->this$0:Landroidx/picker/loader/select/AllAppsSelectableItem;

    .line 7
    .line 8
    invoke-static {p0}, Landroidx/picker/loader/select/AllAppsSelectableItem;->access$updateAllAppsStatus(Landroidx/picker/loader/select/AllAppsSelectableItem;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method
