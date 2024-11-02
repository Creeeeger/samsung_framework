.class public final Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->initialFavoriteIds:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->initialFavoriteIds:Ljava/util/Set;

    .line 16
    .line 17
    move-object v1, p1

    .line 18
    check-cast v1, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;->favoritesIds:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->loadData:Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object p1, v0

    .line 33
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->loadData:Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->loadForComponent(Lcom/android/systemui/controls/controller/ControlsController$LoadData;Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
