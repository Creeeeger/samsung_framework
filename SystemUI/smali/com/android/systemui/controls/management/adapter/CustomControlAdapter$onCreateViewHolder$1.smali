.class final Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$onCreateViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->model:Lcom/android/systemui/controls/management/model/CustomControlsModel;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    check-cast p0, Lcom/android/systemui/controls/management/model/AllControlsModel;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/model/AllControlsModel;->changeFavoriteStatus(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method
