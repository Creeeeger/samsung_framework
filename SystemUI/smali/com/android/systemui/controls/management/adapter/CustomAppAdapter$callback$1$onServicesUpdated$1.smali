.class public final Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $serviceInfos:Ljava/util/List;

.field public final synthetic $uiExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->$uiExecutor:Ljava/util/concurrent/Executor;

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
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->context:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->getListOfServices(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-string/jumbo v1, "onServiceUpdated listOfServices = "

    .line 27
    .line 28
    .line 29
    const-string v2, "CustomAppAdapter"

    .line 30
    .line 31
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->$uiExecutor:Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 37
    .line 38
    new-instance v1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1$1;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1$1;-><init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
