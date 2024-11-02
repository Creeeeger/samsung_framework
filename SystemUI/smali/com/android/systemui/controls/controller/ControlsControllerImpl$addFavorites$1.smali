.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic $controls:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Ljava/util/ArrayList;Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList<",
            "Landroid/service/controls/Control;",
            ">;",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$componentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$controls:Ljava/util/ArrayList;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$componentName:Landroid/content/ComponentName;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$controls:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/android/systemui/controls/controller/Favorites;->addFavorites(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 19
    .line 20
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->autoAddList:Ljava/util/List;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$controls:Ljava/util/ArrayList;

    .line 32
    .line 33
    check-cast v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->customUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$componentName:Landroid/content/ComponentName;

    .line 43
    .line 44
    check-cast v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 45
    .line 46
    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 51
    .line 52
    const/4 v2, 0x7

    .line 53
    if-lt v1, v2, :cond_0

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v1, 0x0

    .line 58
    :goto_0
    if-nez v1, :cond_1

    .line 59
    .line 60
    const-string p0, "CustomControlsUiControllerImpl"

    .line 61
    .line 62
    const-string/jumbo v0, "notifyToUpdateComponent - ignore"

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyToUpdateComponent$1;

    .line 70
    .line 71
    invoke-direct {v1, v0, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyToUpdateComponent$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/content/ComponentName;)V

    .line 72
    .line 73
    .line 74
    iget-object p0, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 75
    .line 76
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_1
    return-void
.end method
