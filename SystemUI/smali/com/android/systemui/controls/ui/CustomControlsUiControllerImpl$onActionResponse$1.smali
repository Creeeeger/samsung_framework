.class public final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onActionResponse$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $controlId:Ljava/lang/String;

.field public final synthetic $response:I

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onActionResponse$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onActionResponse$1;->$controlId:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onActionResponse$1;->$response:I

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
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onActionResponse$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onActionResponse$1;->$controlId:Ljava/lang/String;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onActionResponse$1;->$response:I

    .line 10
    .line 11
    new-instance v2, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;

    .line 12
    .line 13
    invoke-direct {v2, v1, p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;-><init>(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 17
    .line 18
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
